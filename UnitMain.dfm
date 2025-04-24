object Form1: TForm1
  Width = 998
  Height = 1218
  CSSLibrary = cssBootstrap
  ElementClassName = 'd-flex flex-row w-100 h-100'
  ElementFont = efCSS
  OnCreate = WebFormCreate
  OnResize = WebFormResize
  object divMain: TWebHTMLDiv
    Left = 164
    Top = 8
    Width = 801
    Height = 1202
    ElementClassName = 'px-3 gap-3 d-flex flex-column h-100 w-100 align-items-center'
    ElementID = 'divMain'
    ChildOrder = 4
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divBottom: TWebHTMLDiv
      Left = 40
      Top = 286
      Width = 713
      Height = 74
      ElementClassName = 'order-4 flex-row flex-wrap gap-3 justify-content-center'
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
      Left = 32
      Top = 72
      Width = 729
      Height = 105
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
        Height = 94
        ElementClassName = 'nointeract'
        ElementID = 'divDemoContainer'
        HeightStyle = ssPercent
        WidthStyle = ssPercent
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object divDemoBorder: TWebHTMLDiv
          Left = 78
          Top = 3
          Width = 563
          Height = 24
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
          Top = 33
          Width = 560
          Height = 24
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
          Top = 63
          Width = 267
          Height = 24
          ElementID = 'diviFrame'
          HeightStyle = ssPercent
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
        end
        object diviFrame2: TWebHTMLDiv
          Left = 358
          Top = 63
          Width = 267
          Height = 24
          ElementID = 'diviFrame2'
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
      Top = 12
      Width = 729
      Height = 45
      ElementClassName = 'd-flex p-1 gap-1 order-0'
      ElementID = 'divTop'
      HeightStyle = ssAuto
      WidthStyle = ssPercent
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object btnLogin: TWebButton
        Left = 304
        Top = 8
        Width = 96
        Height = 25
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
        Left = 406
        Top = 8
        Width = 96
        Height = 25
        Caption = 'Register <i class="fa-duotone fa-address-card ms-2 fa-xl"></i>'
        ChildOrder = 2
        ElementClassName = 'btn btn-primary RegButton'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnRegisterClick
      end
      object btnLogout: TWebButton
        Left = 202
        Top = 8
        Width = 96
        Height = 25
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
        Left = 8
        Top = 8
        Width = 100
        Height = 25
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
      object btnCancelRegister: TWebButton
        Left = 508
        Top = 8
        Width = 96
        Height = 25
        Caption = 
          'Cancel Registration<i class="fa-duotone fa-xmark ms-2 fa-xl"></i' +
          '>'
        ChildOrder = 2
        ElementClassName = 'ms-auto btn btn-danger'
        ElementFont = efCSS
        ElementPosition = epRelative
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        Visible = False
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
        OnClick = btnCancelRegisterClick
      end
    end
    object divDemos: TWebHTMLDiv
      Left = 32
      Top = 192
      Width = 729
      Height = 41
      ElementClassName = 
        'p-3 order-2 flex-wrap gap-3 justify-content-center align-items-c' +
        'enter'
      ElementID = 'divDemos'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
    end
    object divControls: TWebHTMLDiv
      Left = 201
      Top = 239
      Width = 385
      Height = 41
      ElementClassName = 'order-3 flex-row flex-shrink-0'
      ElementID = 'divControls'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 3
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divControlTop: TWebHTMLDiv
        Left = 43
        Top = 8
        Width = 78
        Height = 24
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
        Top = 8
        Width = 78
        Height = 24
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
        Top = 8
        Width = 78
        Height = 24
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
    object divRegister: TWebHTMLDiv
      Left = 147
      Top = 362
      Width = 489
      Height = 823
      ElementClassName = 'order-5 p-1 gap-1 flex-column'
      ElementID = 'divRegister'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 5
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      Visible = False
      object WebHTMLDiv1: TWebHTMLDiv
        Left = 16
        Top = 48
        Width = 449
        Height = 32
        ElementClassName = 'order-1 d-flex flex-row align-items-center '
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 1
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv2: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '* First Name')
          Role = ''
        end
        object WebEdit1: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acGivenName
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv3: TWebHTMLDiv
        Left = 16
        Top = 82
        Width = 449
        Height = 32
        ElementClassName = 'order-2 d-flex flex-row align-items-center '
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 2
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv4: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '* Last Name')
          Role = ''
        end
        object WebEdit2: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acFamilyName
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv5: TWebHTMLDiv
        Left = 16
        Top = 116
        Width = 449
        Height = 32
        ElementClassName = 'order-3 d-flex flex-row align-items-center '
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 3
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv6: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Title')
          Role = ''
        end
        object WebEdit3: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acHonorificPrefix
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv7: TWebHTMLDiv
        Left = 16
        Top = 150
        Width = 449
        Height = 32
        ElementClassName = 'order-4 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 4
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv8: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '* E-Mail')
          Role = ''
        end
        object WebEdit4: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acEmail
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv9: TWebHTMLDiv
        Left = 16
        Top = 184
        Width = 449
        Height = 32
        ElementClassName = 'order-5 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 5
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv10: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Phone')
          Role = ''
        end
        object WebEdit5: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acTelephone
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv11: TWebHTMLDiv
        Left = 16
        Top = 14
        Width = 449
        Height = 32
        ElementClassName = 
          'RegTitle order-0 d-flex flex-row align-items-center justify-cont' +
          'ent-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv12: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 350
          Height = 24
          ElementClassName = 'flex-shrink-0 text-center py-1'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Basic Information')
          Role = ''
        end
      end
      object WebHTMLDiv13: TWebHTMLDiv
        Left = 16
        Top = 368
        Width = 449
        Height = 32
        ElementClassName = 
          'order-10 RegTitle d-flex flex-row align-items-center justify-con' +
          'tent-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 10
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv14: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 325
          Height = 24
          ElementClassName = 'flex-shrink-0 py-1 text-center'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Mailing Address')
          Role = ''
        end
      end
      object WebHTMLDiv15: TWebHTMLDiv
        Left = 16
        Top = 402
        Width = 449
        Height = 32
        ElementClassName = 'order-11 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 11
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv16: TWebHTMLDiv
          Left = 16
          Top = 3
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Company ')
          Role = ''
        end
        object WebEdit6: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acOrganization
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv17: TWebHTMLDiv
        Left = 16
        Top = 436
        Width = 449
        Height = 32
        ElementClassName = 'order-12 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 12
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv18: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Address 1')
          Role = ''
        end
        object WebEdit7: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acAddressLine1
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv19: TWebHTMLDiv
        Left = 16
        Top = 470
        Width = 449
        Height = 32
        ElementClassName = 'order-13 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 13
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv20: TWebHTMLDiv
          Left = 15
          Top = 5
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Address 2')
          Role = ''
        end
        object WebEdit8: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acAddressLine2
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv23: TWebHTMLDiv
        Left = 16
        Top = 500
        Width = 449
        Height = 32
        ElementClassName = 'order-14 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 14
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv24: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'City')
          Role = ''
        end
        object WebEdit10: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acAddressLine3
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv25: TWebHTMLDiv
        Left = 16
        Top = 534
        Width = 449
        Height = 32
        ElementClassName = 'order-15 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 15
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv26: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Province / State')
          Role = ''
        end
        object WebEdit11: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv27: TWebHTMLDiv
        Left = 16
        Top = 568
        Width = 449
        Height = 32
        ElementClassName = 'order-16 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 16
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv28: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Postal / Zip Code')
          Role = ''
        end
        object WebEdit12: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv29: TWebHTMLDiv
        Left = 16
        Top = 606
        Width = 449
        Height = 32
        ElementClassName = 'order-17 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 17
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv30: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Country')
          Role = ''
        end
        object WebEdit13: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv31: TWebHTMLDiv
        Left = 16
        Top = 266
        Width = 449
        Height = 32
        ElementClassName = 
          'order-7 RegTitle d-flex flex-row align-items-center justify-cont' +
          'ent-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 7
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv32: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 325
          Height = 24
          ElementClassName = 'flex-shrink-0 py-1 text-center'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Create a New Password')
          Role = ''
        end
      end
      object WebHTMLDiv33: TWebHTMLDiv
        Left = 16
        Top = 300
        Width = 449
        Height = 32
        ElementClassName = 'order-8 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 8
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv34: TWebHTMLDiv
          Left = 16
          Top = 3
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Enter Password')
          Role = ''
        end
        object WebEdit14: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acCurrentPassword
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          PasswordChar = '*'
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv35: TWebHTMLDiv
        Left = 16
        Top = 334
        Width = 449
        Height = 32
        ElementClassName = 'order-9 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 9
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv36: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Confirm Password')
          Role = ''
        end
        object WebEdit15: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acCurrentPassword
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          PasswordChar = '*'
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv21: TWebHTMLDiv
        Left = 16
        Top = 218
        Width = 449
        Height = 32
        ElementClassName = 'order-6 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 6
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv22: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 110
          Height = 24
          ElementClassName = 'flex-shrink-0 text-end RegLabel'
          HeightStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'Timezone')
          Role = ''
        end
        object edtTimezone: TWebEdit
          Left = 248
          Top = 4
          Width = 121
          Height = 24
          AutoCompletion = acNone
          ChildOrder = 1
          ElementClassName = 'w-100 px-2 py-1 ms-2 RegEdit'
          ElementID = 'edtTimezone'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv37: TWebHTMLDiv
        Left = 16
        Top = 640
        Width = 449
        Height = 32
        ElementClassName = 
          'order-18 RegTitle d-flex flex-row align-items-center justify-con' +
          'tent-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 18
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv38: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 325
          Height = 24
          ElementClassName = 'flex-shrink-0 py-1 text-center'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            '* How Did You Hear About Us?')
          Role = ''
        end
      end
      object WebHTMLDiv39: TWebHTMLDiv
        Left = 16
        Top = 674
        Width = 449
        Height = 32
        ElementClassName = 'order-19 d-flex flex-row align-items-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 19
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object memoDiscovery: TWebMemo
          Left = 81
          Top = 4
          Width = 185
          Height = 24
          ElementClassName = 'RegEditMemo px-2'
          ElementID = 'memoDiscovery'
          ElementFont = efCSS
          ElementPosition = epRelative
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          SelLength = 0
          SelStart = 0
          WidthStyle = ssPercent
          WidthPercent = 100.000000000000000000
        end
      end
      object WebHTMLDiv40: TWebHTMLDiv
        Left = 16
        Top = 708
        Width = 449
        Height = 32
        ElementClassName = 
          'order-20 RegTitle d-flex flex-row align-items-center justify-con' +
          'tent-center'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 20
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv41: TWebHTMLDiv
          Left = 16
          Top = 4
          Width = 325
          Height = 24
          ElementClassName = 'flex-shrink-0 py-1 text-center'
          HeightStyle = ssAuto
          WidthStyle = ssAuto
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            'What Products or Services Are You Interested In?')
          Role = ''
        end
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
  object divMask: TWebHTMLDiv
    Left = 8
    Top = 775
    Width = 100
    Height = 41
    ElementID = 'divMask'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    ChildOrder = 2
    ElementFont = efCSS
    Role = ''
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
