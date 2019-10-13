object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'TInject whatsapp component (Beta)'
  ClientHeight = 577
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AddressPnl: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    Visible = False
    ExplicitLeft = -108
    ExplicitWidth = 1038
    object AddressEdt: TEdit
      Left = 5
      Top = 5
      Width = 979
      Height = 20
      Margins.Right = 5
      Align = alClient
      TabOrder = 0
      Text = 'https://web.whatsapp.com/'
      ExplicitWidth = 997
      ExplicitHeight = 21
    end
    object GoBtn: TButton
      Left = 984
      Top = 5
      Width = 31
      Height = 20
      Margins.Left = 5
      Align = alRight
      Caption = 'Go'
      TabOrder = 1
      ExplicitLeft = 1002
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 1020
    Height = 83
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -108
    ExplicitWidth = 1038
    DesignSize = (
      1020
      83)
    object Label1: TLabel
      Left = 13
      Top = 32
      Width = 90
      Height = 13
      Caption = 'N'#250'mero de destino'
    end
    object Label2: TLabel
      Left = 149
      Top = 32
      Width = 72
      Height = 13
      Caption = 'Sua mensagem'
    end
    object Label3: TLabel
      Left = 13
      Top = 8
      Width = 789
      Height = 13
      Caption = 
        'TInject  -- Vers'#227'o BETA -- Envio de mensagem de texto e de image' +
        'ns png base64 - Contribui'#231#245'es para o projeto entrar em contato: ' +
        'whatsapp (81) 9.96302385 Mike'
    end
    object Label4: TLabel
      Left = 551
      Top = 32
      Width = 240
      Height = 13
      Caption = 'String base64(Por enquanto apenas imagens png)'
    end
    object Button2: TButton
      Left = 455
      Top = 47
      Width = 90
      Height = 25
      Caption = 'Enviar texto'
      TabOrder = 0
      OnClick = Button2Click
    end
    object memo_js: TMemo
      Left = 915
      Top = 6
      Width = 118
      Height = 33
      TabOrder = 1
      Visible = False
    end
    object Edit1: TEdit
      Left = 13
      Top = 49
      Width = 121
      Height = 21
      TabOrder = 2
      TextHint = 'ddd+n'#250'mero'
    end
    object Edit2: TEdit
      Left = 149
      Top = 49
      Width = 300
      Height = 21
      TabOrder = 3
      TextHint = 'Mensagem de texto'
    end
    object Button3: TButton
      Left = 799
      Top = 47
      Width = 90
      Height = 25
      Caption = 'Enviar imagem'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 925
      Top = 47
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 5
      ExplicitLeft = 943
    end
    object Edit3: TEdit
      Left = 551
      Top = 49
      Width = 242
      Height = 21
      TabOrder = 6
      Text = 
        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFc' +
        'SJAAAADUlEQVR42mP8z8DwBwAFAgH9XSO6wwAAAABJRU5ErkJggg=='
      TextHint = 'Mensagem de texto'
    end
  end
  object CEFWindowParent1: TCEFWindowParent
    Left = 0
    Top = 113
    Width = 886
    Height = 464
    Align = alClient
    TabOrder = 2
    ExplicitTop = 66
    ExplicitWidth = 904
    ExplicitHeight = 511
  end
  object Memo1: TMemo
    Left = 886
    Top = 113
    Width = 134
    Height = 464
    Align = alRight
    TabOrder = 3
    Visible = False
    ExplicitLeft = 877
    ExplicitTop = 66
    ExplicitHeight = 511
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 56
    Top = 88
  end
  object Timer2: TTimer
    Interval = 4000
    OnTimer = Timer2Timer
    Left = 440
    Top = 184
  end
  object Chromium1: TChromium
    OnTitleChange = Chromium1TitleChange
    OnConsoleMessage = Chromium1ConsoleMessage
    OnBeforePopup = Chromium1BeforePopup
    OnAfterCreated = Chromium1AfterCreated
    OnBeforeClose = Chromium1BeforeClose
    OnClose = Chromium1Close
    OnOpenUrlFromTab = Chromium1OpenUrlFromTab
    Left = 56
    Top = 176
  end
end
