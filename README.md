# Acuranzo-Website
This repository contains the public-facing https://www.acuranzo.com websitee. This has been developed with TMS WEB Core. It is intended as a relatively simple portal site - a gateway to the rest of the Acuranzo suite of products and services. 

This was recently updated to provide the "demo" page (aka The Menu) for the Lanboss website, with accommodations made to have it presented within an <iframe> element. The left sidebar, for example, is hidden in that instance.

Note that the JSON configuration file is used to provide the server connection info. For the purposes of the demo site, the "info" from the server is used to determine which models are part of the demo, and populates the UI accordingly.

## Deployment
The published website is deployed directly via GitHub Pages. The SSL certificate for www.acuranzo.com is also managed by GitHub in the same fashion. A separate GitHub Action is available to publish changes to the app. This should also be run if there are changes to the sample data (see below). Normally, changes to TMS WEB Core result in a new build, which is included in the repo. After committing the changes, the Deployment GitHub Action is run, which publishes the site in the `/docs` folder. It usually only takes a minute or two for the changes to be reflected in the live site.
## Sample Data
A new data generation script has been added. This is a new command-line tool (Bash script) designed to create sample data of all kinds. Sample phone bills. Sample bank statements. That sort of thing. It reads in a configuration file that describes the JSON schema and various variables and iterators, and then generates an output JSON file that contains the sample data. More details will be available soon, but this is what is used to generate the sample data for the models to use.

## Repository Information
[![Count Lines of Code](https://github.com/lanboss-ltd/Acuranzo-Website/actions/workflows/main.yml/badge.svg)](https://github.com/lanboss-ltd/Acuranzo-Website/actions/workflows/main.yml)
<!--CLOC-START -->
```
Last updated at 2025-05-27 18:59:33 UTC
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Delphi Form                      2              2              0           1478
Pascal                           3            192            391            613
CSS                              1             30             35            407
Bourne Shell                     1             81             47            365
JSON                             8              0              0            310
HTML                             3             27             20            158
XML                              1              0              0            120
JavaScript                       4              6              0             95
YAML                             2             15             23             72
Markdown                         1              5              2             43
-------------------------------------------------------------------------------
SUM:                            26            358            518           3661
-------------------------------------------------------------------------------
195 Files were skipped (duplicate, binary, or without source code):
  png: 174
  ico: 7
  html: 4
  css: 2
  json: 2
  cname: 1
  dproj: 1
  dsk: 1
  gitignore: 1
  identcache: 1
  js: 1
```
<!--CLOC-END-->

## Contact Information
Please refer to the [Acuranzo website](https://www.acuranzo.com) for the most current contact information.
