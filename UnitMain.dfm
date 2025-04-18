object Form1: TForm1
  Width = 998
  Height = 866
  CSSLibrary = cssBootstrap
  ElementClassName = 'd-flex flex-row w-100 h-100'
  ElementFont = efCSS
  OnCreate = WebFormCreate
  OnResize = WebFormResize
  object divMain: TWebHTMLDiv
    Left = 164
    Top = 32
    Width = 801
    Height = 801
    ElementClassName = 'px-3 gap-3 d-flex flex-column h-100 w-100 align-items-center'
    ElementID = 'divMain'
    ChildOrder = 4
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divBottom: TWebHTMLDiv
      Left = 32
      Top = 701
      Width = 713
      Height = 74
      ElementClassName = 'order-3 d-flex flex-row flex-wrap gap-3 justify-content-center'
      ElementID = 'divBottom'
      HeightStyle = ssAuto
      WidthStyle = ssPercent
      ChildOrder = 3
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divEducation: TWebHTMLDiv
        Left = 3
        Top = 11
        Width = 225
        Height = 60
        Cursor = crHandPoint
        ElementClassName = 'BotBackground'
        ElementID = 'btnEducation'
        ChildOrder = 2
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        OnClick = divEducationClick
        object divEduImage: TWebHTMLDiv
          Left = 5
          Top = 3
          Width = 50
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img class="Octopus" width=50 height=50 src=images/oo_education.' +
              'png>')
          Role = ''
          OnClick = divEducationClick
        end
        object divEduBackground: TWebHTMLDiv
          Left = 65
          Top = 5
          Width = 160
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          OnClick = divEducationClick
          object divEduTop: TWebHTMLDiv
            Left = 0
            Top = 2
            Width = 160
            Height = 25
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            OnClick = divEducationClick
            object divEduTopCaption: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionTop'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'Education')
              Role = ''
              OnClick = divEducationClick
            end
            object divEduTopIcon: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 35
              Height = 25
              ElementClassName = 'BotIconTop'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<i class="fa-duotone fa-lock fa-swap-opacity"></i>')
              Role = ''
              OnClick = divEducationClick
            end
          end
          object divEduBot: TWebHTMLDiv
            Left = 0
            Top = 23
            Width = 160
            Height = 26
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            OnClick = divEducationClick
            object divEduBotCaption: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'Moodle')
              Role = ''
              OnClick = divEducationClick
            end
            object divEduBotIcon: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 35
              Height = 25
              ElementClassName = 'BotIconBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<i class="fa-duotone fa-arrow-up-right-from-square"></i>')
              Role = ''
              OnClick = divEducationClick
            end
          end
        end
      end
      object divManagement: TWebHTMLDiv
        Left = 245
        Top = 10
        Width = 225
        Height = 60
        Cursor = crHandPoint
        ElementClassName = 'BotBackground'
        ElementID = 'btnManagement'
        ChildOrder = 2
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        OnClick = divManagementClick
        object divMgtIcon: TWebHTMLDiv
          Left = 5
          Top = 3
          Width = 50
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img class="Acuranzo" width=50 height=50 src=images/acuranzo.png' +
              '>')
          Role = ''
          OnClick = divManagementClick
        end
        object divMgtBackground: TWebHTMLDiv
          Left = 65
          Top = 5
          Width = 160
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          OnClick = divManagementClick
          object divMgtTop: TWebHTMLDiv
            Left = 0
            Top = 2
            Width = 160
            Height = 25
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            OnClick = divManagementClick
            object divMgtTopCaption: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionTop'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'Management')
              Role = ''
              OnClick = divManagementClick
            end
            object divMgtTopIcon: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 35
              Height = 25
              ElementClassName = 'BotIconTop'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<i class="fa-duotone fa-lock fa-swap-opacity"></i>')
              Role = ''
              OnClick = divManagementClick
            end
          end
          object divMgtBot: TWebHTMLDiv
            Left = 0
            Top = 23
            Width = 160
            Height = 26
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            OnClick = divManagementClick
            object divMgtBotCaption: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'Acuranzo')
              Role = ''
              OnClick = divManagementClick
            end
            object divMgtBotIcon: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 35
              Height = 25
              ElementClassName = 'BotIconBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<i class="fa-duotone fa-arrow-up-right-from-square"></i>')
              Role = ''
              OnClick = divManagementClick
            end
          end
        end
      end
      object divAPI: TWebHTMLDiv
        Left = 476
        Top = 11
        Width = 225
        Height = 60
        Cursor = crHandPoint
        ElementClassName = 'BotBackground'
        ElementID = 'btnAPI'
        ChildOrder = 2
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        OnClick = divAPIClick
        object divAPIIcon: TWebHTMLDiv
          Left = 5
          Top = 3
          Width = 50
          Height = 50
          HeightStyle = ssAuto
          ChildOrder = 2
          ElementFont = efCSS
          HTML.Strings = (
            '<img class="Swagger" width=50 height=50 src=images/swagger.png>')
          Role = ''
          OnClick = divAPIClick
        end
        object divAPIBackground: TWebHTMLDiv
          Left = 65
          Top = 5
          Width = 160
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          OnClick = divAPIClick
          object divAPITop: TWebHTMLDiv
            Left = 0
            Top = 2
            Width = 160
            Height = 25
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            OnClick = divAPIClick
            object divAPITopCaption: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionTop'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'API Access')
              Role = ''
              OnClick = divAPIClick
            end
            object divAPITopIcon: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 35
              Height = 25
              ElementClassName = 'BotIconTop'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<i class="fa-duotone fa-lock-open fa-swap-opacity"></i>')
              Role = ''
              OnClick = divAPIClick
            end
          end
          object divAPIBot: TWebHTMLDiv
            Left = 0
            Top = 23
            Width = 160
            Height = 26
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            OnClick = divAPIClick
            object divAPIBotCaption: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'Swagger')
              Role = ''
              OnClick = divAPIClick
            end
            object divAPIBotIcon: TWebHTMLDiv
              Left = 125
              Top = 0
              Width = 35
              Height = 25
              ElementClassName = 'BotIconBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                '<i class="fa-duotone fa-arrow-up-right-from-square"></i>')
              Role = ''
              OnClick = divAPIClick
            end
          end
        end
      end
    end
    object WebHTMLDiv2: TWebHTMLDiv
      Left = 32
      Top = 128
      Width = 729
      Height = 186
      ElementClassName = 'order-1 OrangeOctopus resize-bottom'
      ElementID = 'divDemo'
      WidthStyle = ssPercent
      ChildOrder = 1
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
    end
    object divTop: TWebHTMLDiv
      Left = 32
      Top = 3
      Width = 729
      Height = 60
      ElementClassName = 'd-flex p-1 gap-1 order-0'
      ElementID = 'divTop'
      WidthStyle = ssPercent
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object btnLogin: TWebButton
        Left = 488
        Top = 17
        Width = 96
        Height = 40
        Caption = 'Login <i class="fa-duotone fa-right-to-bracket ms-2 fa-xl"></i>'
        ChildOrder = 1
        ElementClassName = 'ms-auto btn btn-primary RegButton'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnLoginClick
      end
      object btnRegister: TWebButton
        Left = 590
        Top = 17
        Width = 96
        Height = 40
        Caption = 'Register <i class="fa-duotone fa-address-card ms-2 fa-xl"></i>'
        ChildOrder = 2
        ElementClassName = 'rounded btn btn-primary RegButton'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnRegisterClick
      end
      object btnLogout: TWebButton
        Left = 386
        Top = 17
        Width = 96
        Height = 40
        Caption = 
          'Logout <i class="fa-duotone fa-right-from-bracket ms-2 fa-xl"></' +
          'i>'
        ChildOrder = 1
        ElementClassName = 'ms-auto btn btn-primary RegButton'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        Visible = False
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnLogoutClick
      end
      object divCaption: TWebHTMLDiv
        Left = 56
        Top = 24
        Width = 100
        Height = 41
        ElementClassName = 'd-flex p-3 align-items-center justify-content-start '
        ElementID = 'divCaption'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          '<div>Demos</div>')
        Role = ''
      end
    end
    object divDemoButtons: TWebHTMLDiv
      Left = 72
      Top = 345
      Width = 667
      Height = 266
      ElementClassName = 
        'p-3 order-2 d-flex flex-wrap gap-3 justify-content-center align-' +
        'items-center'
      ElementID = 'divDemos'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object WebButton6: TWebButton
        Left = 16
        Top = 30
        Width = 250
        Height = 40
        Caption = 'Demo'
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton7: TWebButton
        Left = 16
        Top = 76
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 1
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton8: TWebButton
        Left = 16
        Top = 122
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 2
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton9: TWebButton
        Left = 16
        Top = 168
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 3
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton10: TWebButton
        Left = 16
        Top = 214
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 4
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton11: TWebButton
        Left = 360
        Top = 30
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 5
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton12: TWebButton
        Left = 360
        Top = 76
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 1
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton13: TWebButton
        Left = 360
        Top = 122
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 2
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton14: TWebButton
        Left = 360
        Top = 168
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 3
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object WebButton15: TWebButton
        Left = 360
        Top = 214
        Width = 250
        Height = 40
        Caption = 'Demo'
        ChildOrder = 4
        ElementClassName = 'rounded btn btn-info btnDemo'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
    end
  end
  object divMargin: TWebHTMLDiv
    Left = 8
    Top = 10
    Width = 120
    Height = 759
    ElementClassName = 'h-100'
    ElementID = 'divMargin'
    ChildOrder = 4
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divLanboss: TWebHTMLDiv
      Left = 10
      Top = 10
      Width = 100
      Height = 100
      Cursor = crHandPoint
      ChildOrder = 2
      ElementFont = efCSS
      HTML.Strings = (
        
          '<img class="Octopus" width=100 height=100 src=images/lanboss.png' +
          '>')
      Role = ''
      OnClick = divLanbossClick
    end
  end
end
