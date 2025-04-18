unit UnitInteractJS;

interface

uses
  System.SysUtils,
  System.Classes,

  JS,
  Web,

  WEBLib.Modules;

type
  TInteractJS = class(TWebDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitializeInteractJS;
  end;

var
  InteractJS: TInteractJS;

implementation

uses UnitMain;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TFormInteractJS }

procedure TInteractJS.InitializeInteractJS;
begin

  {$IFNDEF WIN32} asm {

    window.rptSectionEndListener = function(event) {
      var target = event.target;
      if (target.classList.contains('ReportSection')) {
        var lnk = parseInt(target.previousSibling.getAttribute('data-rpt-lnk'));
        if (Reports.jsonData.Sections) {
          for (var i = 0; i < Reports.jsonData.Sections.length; i++) {
            if (Reports.jsonData.Sections[i].Link == lnk) {
              var json_before = JSON.stringify(Reports.jsonData);
              Reports.jsonData.Sections[i].Height = (parseFloat(getComputedStyle(target).getPropertyValue('height'))).toFixed(3)+'px';
              var json_after = JSON.stringify(Reports.jsonData);
              Reports.History.length = Reports.HistoryPosition;
              Reports.History.push(stringDiff(json_before, json_after));
              Reports.HistoryPosition++;
              Reports.UpdateHistoryButtons();
              break;
            }
          }
        }
      }
    }

    window.rptItemEndListener = function(event) {
      var target = event.target;
      if (target.classList.contains('ReportItem')) {
        var lnk = parseInt(target.getAttribute('data-rpt-lnk'));
        if (Reports.jsonData.Sections) {
          for (var i = 0; i < Reports.jsonData.Sections.length; i++) {
            if (Reports.jsonData.Sections[i].Items) {
              for (var j = 0; j < Reports.jsonData.Sections[i].Items.length; j++) {
                if (Reports.jsonData.Sections[i].Items[j].Link == lnk) {
                  var json_before = JSON.stringify(Reports.jsonData);
                  var element = getComputedStyle(target);
                  Reports.jsonData.Sections[i].Items[j].Top = (parseFloat(element.getPropertyValue('top')) + parseFloat(target.getAttribute('data-y'))).toFixed(3)+'px';
                  Reports.jsonData.Sections[i].Items[j].Left = (parseFloat(element.getPropertyValue('left')) + parseFloat(target.getAttribute('data-x'))).toFixed(3)+'px';
                  Reports.jsonData.Sections[i].Items[j].Width = (parseFloat(element.getPropertyValue('width'))).toFixed(3)+'px';
                  Reports.jsonData.Sections[i].Items[j].Height = (parseFloat(element.getPropertyValue('height'))).toFixed(3)+'px';
                  var json_after = JSON.stringify(Reports.jsonData);
                  Reports.History.length = Reports.HistoryPosition;
                  Reports.History.push(stringDiff(json_before, json_after));
                  Reports.HistoryPosition++;
                  Reports.UpdateHistoryButtons();
                  break;
                }
              }
            }
          }
        }
      }
    }

    window.dragMoveListener = function(event) {
      var target = event.target
      // keep the dragged position in the data-x/data-y attributes
      var x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy

      // translate the element
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'

      // update the posiion attributes
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    }

    window.dragMoveListenerScaled = function(event) {
      let target = event.target
      let scale = divRDV.firstElementChild.getBoundingClientRect().height / divRDV.firstElementChild.offsetHeight;

      // keep the dragged position in the data-x/data-y attributes
      var x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx / scale
      var y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy / scale

      // translate the element
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'

      // update the posiion attributes
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    }

    window.extendStartListener = function(event) {
      var target = event.target;
      target.style.setProperty('transition','none');
    }

    window.extendEndListener = function(event) {
      var target = event.target;
      target.style.setProperty('transition', 'var(--ACZ-transition-quick)');
    }

    interact('.resize-drag')
      .resizable({
        // resize from all edges and corners
        edges: { left: true, right: true, bottom: false, top: false },

        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)

            // update the element's style
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'

            // translate when resizing from top or left edges
            x += event.deltaRect.left
            y += event.deltaRect.top

            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'

            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        modifiers: [
          // keep the edges inside the parent
          interact.modifiers.restrictEdges({
            outer: 'parent'
          }),

          // minimum size
          interact.modifiers.restrictSize({
  //          min: { width: 200, height: 50 }
          })
        ]

//        inertia: true
      })
      .draggable({
        listeners: { move: window.dragMoveListener },
//        inertia: true,
        ignoreFrom: '.nointeract',
        modifiers: [
          interact.modifiers.restrictRect({
            restriction: 'parent',
            endOnly: true
          })
        ]
      })
      .on('resizestart', extendStartListener)
      .on('resizeend', extendEndListener)

    interact('.resize-crop')
      .resizable({
        // resize from all edges and corners
        edges: { left: true, right: true, bottom: true, top: true },
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)

            // update the element's style
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'

            // translate when resizing from top or left edges
            x += event.deltaRect.left
            y += event.deltaRect.top

            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'

            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        modifiers: [
          // keep the edges inside the parent
          interact.modifiers.restrictEdges({
            outer: 'parent'
          }),

          // minimum size
          interact.modifiers.restrictSize({
  //          min: { width: 200, height: 50 }
          })
        ]

//        inertia: true
      })
      .draggable({
        listeners: { move: window.dragMoveListener },
//        inertia: true,
        ignoreFrom: '.nointeract',
        modifiers: [
          interact.modifiers.restrictRect({
            restriction: 'parent',
            endOnly: true
          })
        ]
      })
//      .on('resizestart', extendStartListener)
//      .on('resizeend', extendEndListener)



    interact('.resize-bottom')
      .resizable({
        edges: { left:false, right:false, bottom:true, top:false },
        margin: 10,
        listeners: {
          move (event) {
            var target = event.target
            var scale = target.getBoundingClientRect().height / target.offsetHeight
            target.style.height = (target.offsetHeight + (event.dy / scale)) +'px'
          }
        },
        modifiers: [
          interact.modifiers.restrictSize({
            min: { height: 20 }
          })
        ]
      });




    interact('.tool-extend')
      .resizable({
        edges: { left: false, right: true, bottom: false, top: false },
        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            target.style.width = event.rect.width + 'px'
          }
        },
        modifiers: [
          interact.modifiers.restrictEdges({
//            outer: 'parent'
          }),
        ]
      })
      .on('resizestart', extendStartListener)
      .on('resizeend', extendEndListener)


    interact('.resize-dropdown')
      .resizable({
        edges: { left: false, right: true, bottom: true, top: false },

        listeners: {
          move (event) {
            var target = event.target
            var x = (parseFloat(target.getAttribute('data-x')) || 0)
            var y = (parseFloat(target.getAttribute('data-y')) || 0)

            // update the element's style
            target.style.width = event.rect.width + 'px'
            target.style.height = event.rect.height + 'px'

            // translate when resizing from top or left edges
            x += event.deltaRect.left
            y += event.deltaRect.top

            target.style.transform = 'translate(' + x + 'px,' + y + 'px)'

            target.setAttribute('data-x', x)
            target.setAttribute('data-y', y)
          }
        },
        modifiers: [
          // keep the edges inside the parent
          interact.modifiers.restrictEdges({
            outer: 'parent'
          }),

          // minimum size
          interact.modifiers.restrictSize({
  //          min: { width: 300, height: 300 }
          })
        ]

//        inertia: true
      })
      .on('resizestart', extendStartListener)
      .on('resizeend', extendEndListener)



    interact('.rpt-resize-section')
      .resizable({
        edges: { left:false, right:false, bottom:true, top:false },
        margin: 10,
        listeners: {
          move (event) {
            var target = event.target
            var scale = target.getBoundingClientRect().height / target.offsetHeight
            target.style.height = (target.offsetHeight + (event.dy / scale)) +'px'
          }
        },
        modifiers: [
          interact.modifiers.restrictSize({
            min: { height: 20 }
          })
        ]
      })
      .on('resizeend', rptSectionEndListener)

    interact('.rpt-resize-drag-item')
      .resizable({
        edges: { top: true, left: true, bottom: true, right: true },
        margin: 3,
        listeners: {
          move: function (event) {
            let { x, y } = event.target.dataset
            let scale = divRDV.firstElementChild.getBoundingClientRect().height / divRDV.firstElementChild.offsetHeight;

            x = (parseFloat(x) || 0) + (event.deltaRect.left / scale)
            y = (parseFloat(y) || 0) + (event.deltaRect.top / scale)

           Object.assign(event.target.style, {
              width: `${event.rect.width/scale}px`,
              height: `${event.rect.height/scale}px`,
              transform: `translate(${x}px, ${y}px)`
            })

            Object.assign(event.target.dataset, { x, y })
          }
        },
        modifiers: [
          interact.modifiers.restrictEdges({
            outer: 'parent'
          }),
          interact.modifiers.restrictSize({
            min: { width: 10, height: 10 }
          })
        ]
      })
      .draggable({
        listeners: { move: window.dragMoveListenerScaled },
        modifiers: [
          interact.modifiers.restrictRect({
            restriction: 'parent',
            endOnly: true
          })
        ]
      })
      .on(['dragend','resizeend','gestureend'], rptItemEndListener)




  } end; {$ENDIF}

end;

end.
