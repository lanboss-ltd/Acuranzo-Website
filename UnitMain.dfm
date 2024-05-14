object Form1: TForm1
  Width = 640
  Height = 480
  ElementClassName = 
    'd-flex flex-column h-100 w-100 bg-transparent justify-content-ce' +
    'nter align-items-center'
  object divHeader: TWebHTMLDiv
    Left = 88
    Top = 91
    Width = 400
    Height = 100
    ElementClassName = 'd-flex flex-row justify-content-between'
    ElementID = 'placeholder'
    ChildOrder = 1
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object WebHTMLDiv1: TWebHTMLDiv
      Left = 3
      Top = 0
      Width = 100
      Height = 100
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        
          '<img src="https://data.acuranzo.com/Logos/Acuranzo-Logo-128.png"' +
          ' width=100 height=100 />')
      Role = ''
    end
    object WebHTMLDiv2: TWebHTMLDiv
      Left = 109
      Top = 0
      Width = 300
      Height = 100
      ElementClassName = 'd-flex text-white justify-content-center align-items-center'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 1
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        
          '<div style="font-size: 18px; color: black; display:flex; width:1' +
          '28px; height: 128px; align-items:center;">'
        '  <div>'
        '    <strong>Acuranzo</strong><br/>'
        '  <span style="font-size:15px;"> Coming soon</span>'
        '  </div>'
        '</div>'
        '')
      Role = ''
    end
  end
end
