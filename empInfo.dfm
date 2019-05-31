object Form14: TForm14
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1052#1086#1080' '#1076#1072#1085#1085#1099#1077
  ClientHeight = 318
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 27
    Width = 253
    Height = 268
    Align = alLeft
    Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 0
    object teSurname: TcxDBTextEdit
      Left = 98
      Top = 20
      DataBinding.DataField = 'surname'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 0
      Width = 121
    end
    object teName: TcxDBTextEdit
      Left = 98
      Top = 50
      DataBinding.DataField = 'name'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 1
      Width = 121
    end
    object tePatron: TcxDBTextEdit
      Left = 98
      Top = 80
      DataBinding.DataField = 'patron'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 2
      Width = 121
    end
    object lSurname: TcxLabel
      Left = 40
      Top = 20
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
      Transparent = True
    end
    object lName: TcxLabel
      Left = 65
      Top = 50
      Caption = #1048#1084#1103':'
      Transparent = True
    end
    object lPatron: TcxLabel
      Left = 35
      Top = 80
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      Transparent = True
    end
    object lSex: TcxLabel
      Left = 65
      Top = 110
      Caption = #1055#1086#1083':'
      Transparent = True
    end
    object cbSex: TcxDBLookupComboBox
      Left = 98
      Top = 110
      DataBinding.DataField = 'sex'
      DataBinding.DataSource = dsPeopleInfo
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSex
      TabOrder = 7
      Width = 121
    end
    object deBirth: TcxDBDateEdit
      Left = 98
      Top = 140
      DataBinding.DataField = 'birth'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 8
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 4
      Top = 140
      Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103':'
      Transparent = True
    end
    object teEmail: TcxDBTextEdit
      Left = 98
      Top = 170
      DataBinding.DataField = 'email'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 10
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 56
      Top = 170
      Caption = 'E-mail:'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 53
      Top = 200
      Caption = #1053#1086#1084#1077#1088':'
      Transparent = True
    end
    object teNumber: TcxDBTextEdit
      Left = 98
      Top = 200
      DataBinding.DataField = 'number'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 13
      Width = 121
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 295
    Width = 475
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 253
    Top = 27
    Width = 222
    Height = 268
    Align = alClient
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1093#1086#1076#1072
    TabOrder = 2
    object cxLabel4: TcxLabel
      Left = 24
      Top = 20
      Caption = #1051#1086#1075#1080#1085':'
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 16
      Top = 50
      Caption = #1055#1072#1088#1086#1083#1100':'
      Transparent = True
    end
    object teLogin: TcxDBTextEdit
      Left = 68
      Top = 20
      DataBinding.DataField = 'login'
      DataBinding.DataSource = dsIdentification
      TabOrder = 2
      Width = 121
    end
    object tePassword: TcxDBTextEdit
      Left = 67
      Top = 47
      DataBinding.DataField = 'password'
      DataBinding.DataSource = dsIdentification
      Properties.EchoMode = eemPassword
      TabOrder = 3
      Width = 121
    end
    object bPassword: TcxButton
      Left = 67
      Top = 73
      Width = 121
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 4
      OnClick = bPasswordClick
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 475
    Height = 27
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    ShowTabGroups = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 3
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Groups = <
        item
        end
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 200
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bSave'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Tab Area Toolbar'
      CaptionButtons = <>
      DockedLeft = 75
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bSaveClose'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 207
      DockedTop = 0
      FloatLeft = 503
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bClose'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object bSaveClose: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = bSaveCloseClick
    end
    object bClose: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = bCloseClick
    end
    object bSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      OnClick = bSaveClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 128
  end
  object uqPeopleInfo: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select *'
      '  from mm.people'
      ' where id = :p_people_id')
    Left = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsPeopleInfo: TUniDataSource
    DataSet = uqPeopleInfo
    Left = 368
  end
  object uqSex: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select 1 as id, '#39#1052#1091#1078#1089#1082#1086#1081#39' as name'
      ''
      'union all'
      ''
      'select 2, '#39#1046#1077#1085#1089#1082#1080#1081#39)
    Left = 328
  end
  object dsSex: TUniDataSource
    DataSet = uqSex
    Left = 168
  end
  object uqIdentification: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select *'
      '  from mm.identification'
      ' where people_id = :p_people_id')
    Left = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsIdentification: TUniDataSource
    DataSet = uqIdentification
    Left = 408
  end
end
