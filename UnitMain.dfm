object Form1: TForm1
  Width = 998
  Height = 866
  CSSLibrary = cssBootstrap
  ElementClassName = 
    'd-flex flex-column h-100 w-100  justify-content-center align-ite' +
    'ms-center'
  ElementFont = efCSS
  object WebHTMLDiv1: TWebHTMLDiv
    Left = 144
    Top = 8
    Width = 729
    Height = 98
    ElementClassName = 'rounded border border-secondary bg-white'
    Role = ''
    object WebLabel1: TWebLabel
      Left = 24
      Top = 42
      Width = 189
      Height = 13
      Caption = 'Welcome to  the Lanboss.ai Demo Page'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton1: TWebButton
      Left = 488
      Top = 30
      Width = 96
      Height = 40
      Caption = 'Login'
      ElementClassName = 'rounded btn btn-primary'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton2: TWebButton
      Left = 600
      Top = 30
      Width = 96
      Height = 40
      Caption = 'Register'
      ChildOrder = 1
      ElementClassName = 'rounded btn btn-primary'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
  end
  object WebHTMLDiv2: TWebHTMLDiv
    Left = 144
    Top = 112
    Width = 729
    Height = 266
    ElementClassName = 'OrangeOctopus rounded border border-secondary'
    ChildOrder = 1
    Role = ''
  end
  object WebHTMLDiv3: TWebHTMLDiv
    Left = 144
    Top = 384
    Width = 729
    Height = 281
    ElementClassName = 'rounded border border-secondary bg-white'
    ChildOrder = 2
    Role = ''
    object WebButton6: TWebButton
      Left = 16
      Top = 30
      Width = 329
      Height = 40
      Caption = 'Demo'
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton7: TWebButton
      Left = 16
      Top = 76
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 1
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton8: TWebButton
      Left = 16
      Top = 122
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 2
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton9: TWebButton
      Left = 16
      Top = 168
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 3
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton10: TWebButton
      Left = 16
      Top = 214
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 4
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton11: TWebButton
      Left = 384
      Top = 30
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 5
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton12: TWebButton
      Left = 384
      Top = 76
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 1
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton13: TWebButton
      Left = 384
      Top = 122
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 2
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton14: TWebButton
      Left = 384
      Top = 168
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 3
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
    object WebButton15: TWebButton
      Left = 384
      Top = 214
      Width = 329
      Height = 40
      Caption = 'Demo'
      ChildOrder = 4
      ElementClassName = 'rounded btn btn-info'
      ElementFont = efCSS
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
    end
  end
  object WebHTMLDiv4: TWebHTMLDiv
    Left = 144
    Top = 671
    Width = 713
    Height = 74
    ElementID = 'd-flex flex-row gap-2'
    ChildOrder = 3
    Role = ''
    object btnEducation: TWebHTMLDiv
      Left = 10
      Top = 10
      Width = 225
      Height = 50
      Cursor = crHandPoint
      ElementClassName = 'rounded border border-secondary bg-white'
      ElementID = 'btnEducation'
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      OnClick = btnEducationClick
      object WebHTMLDiv6: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 50
        Height = 50
        ChildOrder = 2
        ElementFont = efCSS
        HTML.Strings = (
          
            '<img class="Octopus" width=50 height=50 src=images/oo_education.' +
            'png>')
        Role = ''
        OnClick = btnEducationClick
      end
      object WebHTMLDiv7: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 175
        Height = 50
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv8: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 175
          Height = 25
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            'Education')
          Role = ''
          OnClick = btnEducationClick
        end
        object WebHTMLDiv9: TWebHTMLDiv
          Left = 0
          Top = 25
          Width = 175
          Height = 25
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            'Moodle')
          Role = ''
          OnClick = btnEducationClick
        end
      end
    end
    object btnManagement: TWebHTMLDiv
      Left = 245
      Top = 10
      Width = 225
      Height = 50
      Cursor = crHandPoint
      ElementClassName = 'rounded border border-secondary bg-white'
      ElementID = 'btnManagement'
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      OnClick = btnManagementClick
      object WebHTMLDiv10: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 50
        Height = 50
        ChildOrder = 2
        ElementFont = efCSS
        HTML.Strings = (
          
            '<img class="Acuranzo" width=50 height=50 src=images/acuranzo.png' +
            '>')
        Role = ''
        OnClick = btnManagementClick
      end
      object WebHTMLDiv11: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 175
        Height = 50
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv12: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 175
          Height = 25
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            'Management')
          Role = ''
          OnClick = btnManagementClick
        end
        object WebHTMLDiv13: TWebHTMLDiv
          Left = 0
          Top = 25
          Width = 175
          Height = 25
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            'Acuranzo')
          Role = ''
          OnClick = btnManagementClick
        end
      end
    end
    object btnAPI: TWebHTMLDiv
      Left = 480
      Top = 10
      Width = 225
      Height = 50
      Cursor = crHandPoint
      ElementClassName = 'rounded border border-secondary bg-white'
      ElementID = 'btnAPI'
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      OnClick = btnAPIClick
      object WebHTMLDiv14: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 50
        Height = 50
        ChildOrder = 2
        ElementFont = efCSS
        HTML.Strings = (
          '<img class="Swagger" width=50 height=50 src=images/swagger.png>')
        Role = ''
        OnClick = btnAPIClick
      end
      object WebHTMLDiv15: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 175
        Height = 50
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv16: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 175
          Height = 25
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            'API Access')
          Role = ''
          OnClick = btnAPIClick
        end
        object WebHTMLDiv17: TWebHTMLDiv
          Left = 0
          Top = 25
          Width = 175
          Height = 25
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            'OpenAPI')
          Role = ''
          OnClick = btnAPIClick
        end
      end
    end
  end
end
