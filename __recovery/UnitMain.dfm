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
        '<img src="images/acuranzo-logo-100-transparent.png" />')
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
        'Coming later in 2024'
        '')
      Role = ''
    end
  end
end
