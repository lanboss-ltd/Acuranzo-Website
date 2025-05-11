#!/bin/bash

# Enable debugging mode if DEBUG environment variable is set
if [ -n "$DEBUG" ]; then
    set -x
fi

echo "=== Enhanced Data Generator Starting ===" >&2

# Check if configuration file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <config-file>" >&2
    exit 1
fi

CONFIG_FILE="$1"
echo "Configuration file: $CONFIG_FILE" >&2

# Verify config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Configuration file '$CONFIG_FILE' not found" >&2
    exit 1
fi

echo "Reading configuration file..." >&2
# Extract output filename from config
OUTPUT_FILE=$(jq -r '.output_file // empty' "$CONFIG_FILE")
echo "Output file: $OUTPUT_FILE" >&2

if [ -z "$OUTPUT_FILE" ]; then
    echo "Error: No output_file specified in configuration" >&2
    exit 1
fi

# Global variables
declare -A SEQUENCE_COUNTERS
declare -A INCREMENTAL_DATES
CURRENT_ITERATOR_INDEX=0

# Main data generation function
generate_data() {
    local config="$1"
    echo "Starting data generation..." >&2
    
    # Extract iterators
    local iterators=$(echo "$config" | jq -c '.iterators // {}')
    
    # Find the main iterator (first one defined)
    local main_iterator_name=""
    if [ "$iterators" != "{}" ]; then
        main_iterator_name=$(echo "$iterators" | jq -r 'keys[0]')
        echo "Main iterator: $main_iterator_name" >&2
    fi
    
    # Extract schema
    local schema=$(echo "$config" | jq -c '.schema // empty')
    
    if [ -z "$schema" ] || [ "$schema" = "null" ]; then
        echo "Error: No schema defined in configuration" >&2
        return 1
    fi
    
    # Initialize output array
    local output="[]"
    
    # If we have an iterator, use it to generate records
    if [ -n "$main_iterator_name" ]; then
        local iterator_values=$(echo "$iterators" | jq -r ".$main_iterator_name[]")
        local index=0
        
        while IFS= read -r iterator_value; do
            echo "Generating record for iterator value: $iterator_value" >&2
            CURRENT_ITERATOR_INDEX=$index
            
            # Clear incremental dates for each new record
            INCREMENTAL_DATES=()
            
            # Set up context for this record
            local context=$(jq -n --arg name "$main_iterator_name" --arg value "$iterator_value" \
                             --argjson index "$index" \
                             '{($name): $value, "current_index": $index}')
            
            local record=$(generate_record "$schema" "$iterators" "$context" "{}")
            # Properly format the record JSON
            record=$(echo "$record" | jq -c '.')
            output=$(echo "$output" | jq --argjson record "$record" '. += [$record]')
            ((index++))
        done <<< "$iterator_values"
    else
        # No iterator, generate single record
        local record=$(generate_record "$schema" "{}" "{}" "{}")
        record=$(echo "$record" | jq -c '.')
        output=$(echo "$output" | jq --argjson record "$record" '. += [$record]')
    fi
    
    echo "Data generation complete!" >&2
    echo "$output"
}

# Generate a single record based on schema with a paired value cache
generate_record() {
    local schema="$1"
    local iterators="$2"
    local context="$3"
    local paired_cache="$4"  # Pass paired cache as JSON string
    local record="{}"
    
    # Process each field in the schema
    while IFS= read -r field; do
        local field_name=$(echo "$field" | jq -r '.name')
        local field_type=$(echo "$field" | jq -r '.type')
        echo "  Processing field: $field_name (type: $field_type)" >&2
        
        local field_opts=$(echo "$field" | jq -c '.options // {}')
        
        # Generate value based on field type
        local value=""
        case "$field_type" in
            "iterator")
                value=$(generate_iterator "$field" "$iterators" "$context")
                # Check if value is numeric
                if [[ "$value" =~ ^[0-9]+$ ]]; then
                    record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = ($value | tonumber)')
                else
                    record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                fi
                ;;
            "iterator-index")
                value=$(generate_iterator_index "$field" "$iterators" "$context")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                ;;
            "incremental-date")
                value=$(generate_incremental_date "$field_name" "$field_opts")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                ;;
            "paired-value")
                value=$(generate_paired_value "$field_name" "$field_opts" "$paired_cache")
                # Handle the case where value might be numeric
                if [[ "$value" =~ ^[0-9]+\.?[0-9]*$ ]]; then
                    record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = ($value | tonumber)')
                else
                    record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                fi
                paired_cache=$(echo "$paired_cache" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                ;;
            "object")
                value=$(generate_object "$field_name" "$field_opts" "$iterators" "$context" "$paired_cache")
                record=$(echo "$record" | jq --arg key "$field_name" --argjson value "$value" '.[$key] = $value')
                ;;
            "string")
                value=$(generate_string "$field_name" "$field_opts")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                ;;
            "integer")
                value=$(generate_integer "$field_name" "$field_opts")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = ($value | tonumber)')
                ;;
            "sequential")
                value=$(generate_sequential "$field_name" "$field_opts")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = ($value | tonumber)')
                ;;
            "float")
                value=$(generate_float "$field_name" "$field_opts")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = ($value | tonumber)')
                ;;
            "boolean")
                value=$(generate_boolean "$field_name" "$field_opts")
                if [ "$value" = "true" ]; then
                    record=$(echo "$record" | jq --arg key "$field_name" '.[$key] = true')
                else
                    record=$(echo "$record" | jq --arg key "$field_name" '.[$key] = false')
                fi
                ;;
            "date")
                value=$(generate_date "$field_name" "$field_opts")
                record=$(echo "$record" | jq --arg key "$field_name" --arg value "$value" '.[$key] = $value')
                ;;
            "array")
                value=$(generate_array "$field_name" "$field_opts" "$iterators" "$context" "$paired_cache")
                record=$(echo "$record" | jq --arg key "$field_name" --argjson value "$value" '.[$key] = $value')
                ;;
            *)
                echo "Warning: Unknown field type '$field_type' for field '$field_name'" >&2
                ;;
        esac
        
        echo "    Value generated: $value" >&2
    done < <(echo "$schema" | jq -c '.[]')
    
    echo "$record"
}

# Generator functions
generate_iterator() {
    local field="$1"
    local iterators="$2"
    local context="$3"
    
    local iterator_name=$(echo "$field" | jq -r '.iterator')
    local value=$(echo "$context" | jq -r ".\"$iterator_name\"")
    
    # Return the value as-is
    echo "$value"
}

generate_iterator_index() {
    local field="$1"
    local iterators="$2"
    local context="$3"
    
    local iterator_name=$(echo "$field" | jq -r '.iterator')
    local values=$(echo "$field" | jq -c '.values')
    local index=$(echo "$context" | jq -r '.current_index')
    
    echo "$values" | jq -r ".[$index]"
}

generate_object() {
    local field_name="$1"
    local options="$2"
    local iterators="$3"
    local context="$4"
    local paired_cache="$5"
    
    local schema=$(echo "$options" | jq -c '.schema // []')
    
    echo "    Generating object for field '$field_name'" >&2
    
    # Generate the object like a record but return properly formatted JSON
    local result=$(generate_record "$schema" "$iterators" "$context" "$paired_cache")
    echo "$result"
}

generate_incremental_date() {
    local field_name="$1"
    local options="$2"
    
    local format=$(echo "$options" | jq -r '.format // "%Y-%m-%d"')
    local start_date=$(echo "$options" | jq -r '.start_date')
    local min_hours=$(echo "$options" | jq -r '.min_hours // 12')
    local max_hours=$(echo "$options" | jq -r '.max_hours // 48')
    
    # Initialize if needed
    if [ -z "${INCREMENTAL_DATES[$field_name]}" ]; then
        # Convert start date to epoch
        local os_type=$(uname)
        if [[ "$os_type" == "Darwin" ]]; then
            INCREMENTAL_DATES[$field_name]=$(date -j -f "%Y-%m-%d %H:%M:%S" "$start_date" "+%s" 2>/dev/null)
        else
            INCREMENTAL_DATES[$field_name]=$(date -d "$start_date" "+%s" 2>/dev/null)
        fi
    fi
    
    # Get current timestamp
    local current_epoch="${INCREMENTAL_DATES[$field_name]}"
    
    # Increment by random hours
    local increment_hours=$((RANDOM % (max_hours - min_hours + 1) + min_hours))
    local next_epoch=$((current_epoch + increment_hours * 3600))
    
    # Update for next time
    INCREMENTAL_DATES[$field_name]=$next_epoch
    
    # Format the date
    if [[ "$(uname)" == "Darwin" ]]; then
        date -r "$current_epoch" "+$format"
    else
        date -d "@$current_epoch" "+$format"
    fi
}

generate_paired_value() {
    local field_name="$1"
    local options="$2"
    local paired_cache="$3"
    
    local pairs_value=$(echo "$options" | jq -r '.pairs')
    local field=$(echo "$options" | jq -r '.field')
    
    # Handle reference to another field's pairs
    if [[ "$pairs_value" =~ ^same_as: ]]; then
        local ref_field="${pairs_value#same_as:}"
        local cached_value=$(echo "$paired_cache" | jq -r ".\"$ref_field\" // empty")
        if [ -n "$cached_value" ] && [ "$cached_value" != "null" ]; then
            # Find the matching pair and return the requested field
            local pairs=$(echo "$options" | jq -c '.pairs')
            if [ "$pairs" = "null" ]; then
                # Need to find the pairs from the referenced field's definition
                echo "Error: Referenced field $ref_field not found in cache" >&2
                echo "null"
            else
                # Find the pair with the matching value
                echo "$pairs" | jq -r --arg cached "$cached_value" '.[] | select(.value == $cached) | .["'"$field"'"]'
            fi
        else
            echo "Error: Referenced field $ref_field not found" >&2
            echo "null"
        fi
    else
        # Select a random pair
        local pairs=$(echo "$options" | jq -c '.pairs')
        local pair_count=$(echo "$pairs" | jq 'length')
        local selected_index=$((RANDOM % pair_count))
        local selected_pair=$(echo "$pairs" | jq ".[$selected_index]")
        
        # Return the requested field
        local result=$(echo "$selected_pair" | jq -r ".$field")
        echo "$result"
    fi
}

generate_array() {
    local field_name="$1"
    local options="$2"
    local iterators="$3"
    local context="$4"
    local parent_cache="$5"
    
    local min_count=$(echo "$options" | jq -r '.min_count // 1')
    local max_count=$(echo "$options" | jq -r '.max_count // 5')
    local schema=$(echo "$options" | jq -c '.schema // []')
    
    # Generate a random count between min and max
    local count=$((RANDOM % (max_count - min_count + 1) + min_count))
    echo "    Generating $count items for array '$field_name'" >&2
    
    local array="[]"
    
    for ((i=0; i<count; i++)); do
        # Each item in array gets its own cache
        local item=$(generate_record "$schema" "$iterators" "$context" "{}")
        item=$(echo "$item" | jq -c '.')
        array=$(echo "$array" | jq --argjson item "$item" '. += [$item]')
    done
    
    echo "$array"
}

# [Rest of the functions remain similar...]
generate_string() {
    local field_name="$1"
    local options="$2"
    
    local values=$(echo "$options" | jq -r '.values // empty')
    
    if [ -n "$values" ] && [ "$values" != "null" ] && [ "$values" != "empty" ]; then
        echo "$values" | jq -r '.[]' | shuf -n1
    else
        echo "string_$(openssl rand -hex 4)"
    fi
}

generate_integer() {
    local field_name="$1"
    local options="$2"
    
    local min=$(echo "$options" | jq -r '.min // 0')
    local max=$(echo "$options" | jq -r '.max // 100')
    
    if ! [[ "$min" =~ ^-?[0-9]+$ ]]; then
        min=0
    fi
    if ! [[ "$max" =~ ^-?[0-9]+$ ]]; then
        max=100
    fi
    
    local range=$((max - min + 1))
    echo $((RANDOM % range + min))
}

generate_sequential() {
    local field_name="$1"
    local options="$2"
    
    local start=$(echo "$options" | jq -r '.start // 1')
    local increment=$(echo "$options" | jq -r '.increment // 1')
    
    # Initialize counter if not exists
    if [ -z "${SEQUENCE_COUNTERS[$field_name]}" ]; then
        SEQUENCE_COUNTERS[$field_name]="$start"
    fi
    
    # Get current value
    local current="${SEQUENCE_COUNTERS[$field_name]}"
    echo "$current"
    
    # Increment for next time
    SEQUENCE_COUNTERS[$field_name]=$((current + increment))
}

generate_float() {
    local field_name="$1"
    local options="$2"
    
    local min=$(echo "$options" | jq -r '.min // 0')
    local max=$(echo "$options" | jq -r '.max // 100')
    local precision=$(echo "$options" | jq -r '.precision // 2')
    
    if ! [[ "$min" =~ ^-?[0-9]+\.?[0-9]*$ ]]; then
        min=0
    fi
    if ! [[ "$max" =~ ^-?[0-9]+\.?[0-9]*$ ]]; then
        max=100
    fi
    if ! [[ "$precision" =~ ^[0-9]+$ ]]; then
        precision=2
    fi
    
    awk -v min="$min" -v max="$max" -v prec="$precision" 'BEGIN{srand(); printf "%.*f", prec, min + (max - min) * rand()}'
}

generate_boolean() {
    local field_name="$1"
    local options="$2"
    
    if [ $((RANDOM % 2)) -eq 1 ]; then
        echo "true"
    else
        echo "false"
    fi
}

generate_date() {
    local field_name="$1"
    local options="$2"
    
    local format=$(echo "$options" | jq -r '.format // "%Y-%m-%d"')
    local start_date=$(echo "$options" | jq -r '.start_date // empty')
    local end_date=$(echo "$options" | jq -r '.end_date // empty')
    
    if [ -n "$start_date" ] && [ "$start_date" != "null" ] && [ "$start_date" != "empty" ] && 
       [ -n "$end_date" ] && [ "$end_date" != "null" ] && [ "$end_date" != "empty" ]; then
        # Generate random date between start and end
        local os_type=$(uname)
        if [[ "$os_type" == "Darwin" ]]; then
            # macOS
            local start_epoch=$(date -j -f "%Y-%m-%d" "$start_date" "+%s" 2>/dev/null)
            local end_epoch=$(date -j -f "%Y-%m-%d" "$end_date" "+%s" 2>/dev/null)
        else
            # Linux
            local start_epoch=$(date -d "$start_date" "+%s" 2>/dev/null)
            local end_epoch=$(date -d "$end_date" "+%s" 2>/dev/null)
        fi
        
        if [ -n "$start_epoch" ] && [ -n "$end_epoch" ]; then
            # Check if start and end are the same
            if [ "$start_epoch" -eq "$end_epoch" ]; then
                # Use the same date
                echo "$start_date"
            else
                local diff=$((end_epoch - start_epoch))
                local random_epoch=$((start_epoch + RANDOM % diff))
                if [[ "$os_type" == "Darwin" ]]; then
                    date -r "$random_epoch" "+$format"
                else
                    date -d "@$random_epoch" "+$format"
                fi
            fi
        else
            echo "Invalid date range, using current date" >&2
            date "+$format"
        fi
    else
        date "+$format"
    fi
}

# Main execution
main() {
    echo "Loading configuration..." >&2
    local config=$(cat "$CONFIG_FILE")
    
    if ! echo "$config" | jq '.' >/dev/null 2>&1; then
        echo "Error: Invalid JSON in configuration file" >&2
        exit 1
    fi
    
    echo "Configuration loaded successfully" >&2
    
    local output_data=$(generate_data "$config")
    
    if [ $? -eq 0 ] && [ -n "$output_data" ]; then
        echo "Writing data to $OUTPUT_FILE..." >&2
        echo "$output_data" | jq '.' > "$OUTPUT_FILE"
        echo "=== Data successfully generated and saved to $OUTPUT_FILE ===" >&2
        echo "Records generated: $(echo "$output_data" | jq 'length')" >&2
    else
        echo "Error generating data" >&2
        exit 1
    fi
}

main
