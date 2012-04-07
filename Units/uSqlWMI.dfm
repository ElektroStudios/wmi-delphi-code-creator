object FrmWMISQL: TFrmWMISQL
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmWMISQL'
  ClientHeight = 545
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 301
    Top = 0
    Width = 5
    Height = 545
    ExplicitLeft = 193
    ExplicitTop = 8
    ExplicitHeight = 432
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 545
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 432
    DesignSize = (
      301
      545)
    object Label1: TLabel
      Left = 10
      Top = 6
      Width = 55
      Height = 13
      Caption = 'Namespace'
    end
    object LabelClasses: TLabel
      Left = 10
      Top = 75
      Width = 36
      Height = 13
      Caption = 'Classes'
    end
    object LabelProperties: TLabel
      Left = 10
      Top = 138
      Width = 49
      Height = 13
      Caption = 'Properties'
    end
    object CbNameSpaces: TComboBox
      Left = 10
      Top = 25
      Width = 269
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = CbNameSpacesChange
    end
    object CheckBoxAutoWQL: TCheckBox
      Left = 10
      Top = 52
      Width = 201
      Height = 17
      Caption = 'Auto generate WQL sentence'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBoxAutoWQLClick
    end
    object ComboBoxClasses: TComboBox
      Left = 10
      Top = 94
      Width = 269
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 20
      TabOrder = 2
      OnChange = ComboBoxClassesChange
    end
    object ListViewProperties: TListView
      Left = 10
      Top = 157
      Width = 274
      Height = 383
      Anchors = [akLeft, akTop, akRight, akBottom]
      Checkboxes = True
      Columns = <
        item
          Caption = 'Property'
          Width = -1
          WidthType = (
            -1)
        end
        item
          Caption = 'Type'
          Width = -1
          WidthType = (
            -1)
        end
        item
          Caption = 'Description'
          Width = -1
          WidthType = (
            -1)
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 4
      ViewStyle = vsReport
      OnClick = ListViewPropertiesClick
      ExplicitHeight = 270
    end
    object CheckBoxSelAllProps: TCheckBox
      Left = 10
      Top = 121
      Width = 114
      Height = 17
      Caption = 'Select all Properties'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CheckBoxSelAllPropsClick
    end
  end
  object PanelRight: TPanel
    Left = 306
    Top = 0
    Width = 652
    Height = 545
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    ExplicitHeight = 432
    object Splitter1: TSplitter
      Left = 5
      Top = 190
      Width = 642
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = -7
      ExplicitTop = 185
      ExplicitWidth = 576
    end
    object Splitter3: TSplitter
      Left = 5
      Top = 452
      Width = 642
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 341
    end
    object PanelTop: TPanel
      Left = 5
      Top = 5
      Width = 642
      Height = 185
      Align = alTop
      TabOrder = 0
      object SynEditWQL: TSynEdit
        Left = 1
        Top = 1
        Width = 640
        Height = 126
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        PopupMenu = PopupActionBar1
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Highlighter = SynSQLSyn1
      end
      object PanelNav: TPanel
        Left = 1
        Top = 127
        Width = 640
        Height = 57
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 6
          Width = 39
          Height = 13
          Caption = 'Machine'
        end
        object Label3: TLabel
          Left = 135
          Top = 6
          Width = 22
          Height = 13
          Caption = 'User'
        end
        object Label4: TLabel
          Left = 272
          Top = 6
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object BtnExecuteWQL: TButton
          Left = 399
          Top = 22
          Width = 75
          Height = 27
          Action = ActionRunWQL
          Caption = 'Execute'
          Images = ImageList1
          TabOrder = 0
        end
        object DBNavigator1: TDBNavigator
          Left = 480
          Top = 22
          Width = 104
          Height = 25
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Kind = dbnHorizontal
          TabOrder = 1
        end
        object EditMachine: TEdit
          Left = 8
          Top = 25
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'localhost'
          OnExit = EditMachineExit
        end
        object EditUser: TEdit
          Left = 135
          Top = 25
          Width = 121
          Height = 21
          TabOrder = 3
          OnExit = EditUserExit
        end
        object EditPassword: TEdit
          Left = 272
          Top = 25
          Width = 121
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
          OnExit = EditPasswordExit
        end
        object CheckBoxAsync: TCheckBox
          Left = 399
          Top = 6
          Width = 130
          Height = 17
          Caption = 'Run in Async mode'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
      end
    end
    object DBGridWMI: TDBGrid
      Left = 5
      Top = 195
      Width = 642
      Height = 257
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridWMIDrawColumnCell
      OnDblClick = DBGridWMIDblClick
    end
    object Panel1: TPanel
      Left = 5
      Top = 457
      Width = 642
      Height = 83
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 344
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 642
        Height = 83
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitLeft = 5
        ExplicitTop = 5
        ExplicitWidth = 632
        ExplicitHeight = 73
      end
    end
  end
  object SynSQLSyn1: TSynSQLSyn
    Left = 384
    Top = 40
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 264
    Top = 224
  end
  object SynCompletionProposal1: TSynCompletionProposal
    EndOfTokenChr = '()[]. '
    TriggerChars = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <>
    OnExecute = SynCompletionProposal1Execute
    ShortCut = 16416
    Editor = SynEditWQL
    Left = 472
    Top = 24
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 128
    Top = 296
    Bitmap = {
      494C010101000800200010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000010D0434052D0DD9042F
      0FFD041909B70005012600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000064015D51A983AFF3BD8
      64FF10762AFF042A0EF703150881000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006581DFE37D15FFF78FF
      9DFF66FF8DFF2FBF53FF064D19FF041F0BDA010B034400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006581BFF37CE5EFF74FF
      99FF72FE96FF6AFE90FF49E672FF178C36FF053511FE031909A5000301180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006571CFF34C95BFF66F5
      8CFF5EEE85FF5AE980FF57E57BFF4DE373FF2ABB50FF0B6322FF05270EEE0212
      0669000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006581CFF2FC255FF54E4
      7AFF4EDC72FF4AD76DFF45D269FF41CE66FF3DCB63FF33C157FF189539FF0846
      17FF031F0BC80008033000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006591DFF2CBB51FF45D1
      69FF3FCA64FF3BC55FFF38C05BFF34BB57FF32B754FF30B351FF2CAE4DFF22A4
      44FF0F7228FF063212FB010F0563000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006591DFF29B54FFF37BD
      5AFF33B756FF30B252FF2DAE4EFF2BA84BFF28A348FF269F45FF249A42FF2295
      3FFF1F923DFF128832FF05270EED000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000065B1EFF28AE4AFF2BAA
      4CFF29A549FF27A046FF249B42FF21973EFF20913CFF23913EFF289043FF3491
      4CFF3F9355FF1D8E3AFF053412F0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000085B1EFF2AA94AFF319E
      4DFF329C4DFF359A4FFF399952FF3F9956FF499B5EFF4F9A63FF589B6AFF3F92
      54FF168C35FF085E20FD031E096E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000075B1EFF31A64FFF429A
      58FF469A5CFF4B995FFF509963FF569A68FF5E9B6FFF569465FF279544FF1282
      30FF0A491BD30115073D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000095E1FFF37A454FF5599
      67FF589A6AFF5E9B6EFF669D74FF6A9A76FF3D9454FF1D9B3DFF156C2BF3092D
      1274000100040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014712CFF3DA258FF699D
      77FF6E9E7BFF78A284FF569367FF2AA54AFF21903EFE124D21AC010B061C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020843AFE45A05CFF86A5
      8DFF759A7DFF3AA255FF2BAE4DFF1E6F34DC0924104800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000216F34D535B756FF499C
      5FFF30B953FF2D9849F715442180010402080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000081A0C32277B3ED534A3
      50FC1F6434B40515092500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0083FF00000000000080FF000000000000
      807F000000000000801F00000000000080070000000000008003000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80030000000000008007000000000000801F000000000000807F000000000000
      80FF00000000000083FF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 656
    Top = 32
    StyleName = 'Platform Default'
    object ActionRunWQL: TAction
      Caption = 'Execute WQL'
      ImageIndex = 0
      OnExecute = ActionRunWQLExecute
      OnUpdate = ActionRunWQLUpdate
    end
  end
  object PopupActionBar1: TPopupActionBar
    Images = ImageList1
    Left = 752
    Top = 24
    object ExecuteWQL1: TMenuItem
      Action = ActionRunWQL
    end
  end
end
