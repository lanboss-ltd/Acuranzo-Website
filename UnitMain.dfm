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
    Top = 8
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
      ElementClassName = 'order-4 d-flex flex-row flex-wrap gap-3 justify-content-center'
      ElementID = 'divBottom'
      HeightStyle = ssAuto
      WidthStyle = ssPercent
      ChildOrder = 4
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
        Visible = False
        OnClick = divEducationClick
        object divEduIcon: TWebHTMLDiv
          Left = 5
          Top = 3
          Width = 50
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
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
                'EduTop')
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
                'EduBot')
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
        Visible = False
        OnClick = divManagementClick
        object divMgtIcon: TWebHTMLDiv
          Left = 5
          Top = 3
          Width = 50
          Height = 50
          ChildOrder = 2
          ElementFont = efCSS
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
                'MgtTop')
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
                'MgtBot')
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
        Visible = False
        OnClick = divAPIClick
        object divAPIIcon: TWebHTMLDiv
          Left = 5
          Top = 3
          Width = 50
          Height = 50
          HeightStyle = ssAuto
          ChildOrder = 2
          ElementFont = efCSS
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
                'APITop')
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
              Left = -4
              Top = 0
              Width = 130
              Height = 25
              ElementClassName = 'BotCaptionBot'
              ChildOrder = 2
              ElementFont = efCSS
              HTML.Strings = (
                'APIBot')
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
    object divDemo: TWebHTMLDiv
      Left = 35
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
      object divDemoContainer: TWebHTMLDiv
        Left = 21
        Top = 3
        Width = 692
        Height = 180
        ElementClassName = 'nointeract'
        ElementID = 'divDemoContainer'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object divDemoBorder: TWebHTMLDiv
          Left = 78
          Top = 16
          Width = 563
          Height = 41
          ElementClassName = 'nointeract'
          ElementID = 'divDemoBorder'
          HeightStyle = ssPercent
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
        end
        object divCurtains: TWebHTMLDiv
          Left = 78
          Top = 72
          Width = 560
          Height = 41
          ElementID = 'divCurtains'
          HeightStyle = ssPercent
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object diviFrame: TWebHTMLDiv
          Left = 78
          Top = 119
          Width = 560
          Height = 40
          ElementID = 'diviFrame'
          HeightStyle = ssPercent
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
        end
      end
    end
    object divTop: TWebHTMLDiv
      Left = 32
      Top = 3
      Width = 729
      Height = 60
      ElementClassName = 'd-flex p-1 gap-1 order-0'
      ElementID = 'divTop'
      HeightStyle = ssAuto
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
        Left = 24
        Top = 3
        Width = 100
        Height = 41
        ElementClassName = 
          'user-select-none d-flex p-3 align-items-center justify-content-s' +
          'tart '
        ElementID = 'divCaption'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          '<div>Loading... ...Please wait</div>')
        Role = ''
      end
    end
    object divDemos: TWebHTMLDiv
      Left = 72
      Top = 352
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
    end
    object divControls: TWebHTMLDiv
      Left = 225
      Top = 624
      Width = 385
      Height = 49
      ElementClassName = 'order-3 d-flex flex-row flex-shrink-0'
      ElementID = 'divControls'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 3
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divControlTop: TWebHTMLDiv
        Left = 43
        Top = 3
        Width = 78
        Height = 43
        ElementClassName = 'selected'
        ElementID = 'divControlTop'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          'Open at Top <i class="fa-solid fa-arrow-up fa-lg ms-2"></i>')
        Role = ''
        OnClick = divControlTopClick
      end
      object divControlPop: TWebHTMLDiv
        Left = 155
        Top = 0
        Width = 78
        Height = 43
        ElementID = 'divControlPop'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 2
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          'Popup <i class="fa-duotone fa-send-backward fa-lg ms-2"></i>')
        Role = ''
        OnClick = divControlPopClick
      end
      object divControlTab: TWebHTMLDiv
        Left = 255
        Top = 3
        Width = 78
        Height = 43
        ElementID = 'divControlTab'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 3
        ElementPosition = epRelative
        ElementFont = efCSS
        HTML.Strings = (
          
            'Tab <i class="fa-duotone fa-arrow-up-right-from-square fa-lg ms-' +
            '2"></i>')
        Role = ''
        OnClick = divControlTabClick
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
  object XDataConn: TXDataWebConnection
    Left = 64
    Top = 186
  end
  object tmrStartup: TWebTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrStartupTimer
    Left = 64
    Top = 298
  end
  object WebHttpRequest1: TWebHttpRequest
    Left = 48
    Top = 426
  end
end
