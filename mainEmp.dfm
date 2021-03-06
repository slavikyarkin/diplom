object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
  ClientHeight = 480
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1130
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Groups = <
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar3'
        end
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 1130
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object gPeople: TcxGrid
    Left = 0
    Top = 60
    Width = 1130
    Height = 397
    Align = alClient
    TabOrder = 2
    ExplicitTop = 27
    ExplicitHeight = 430
    object gdbtvPeople: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPeople
      DataController.DetailKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cNumber: TcxGridDBColumn
        Caption = #8470' '#1063#1080#1090#1072#1090#1077#1083#1100#1089#1082#1086#1075#1086' '#1073#1080#1083#1077#1090#1072
        DataBinding.FieldName = 'number'
        MinWidth = 150
        Width = 150
      end
      object cName: TcxGridDBColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'name'
        MinWidth = 150
        Width = 150
      end
      object cSurname: TcxGridDBColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103
        DataBinding.FieldName = 'surname'
        MinWidth = 150
        Width = 150
      end
      object cPatron: TcxGridDBColumn
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'patron'
        MinWidth = 150
        Width = 150
      end
      object cBirth: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103
        DataBinding.FieldName = 'birth'
        MinWidth = 100
        Width = 124
      end
      object cDate_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
        MinWidth = 100
        Width = 123
      end
      object cExpirate_date: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1054#1082#1086#1085#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'expirate_date'
        FooterAlignmentHorz = taRightJustify
        MinWidth = 100
        Width = 124
      end
    end
    object glPeople: TcxGridLevel
      GridView = gdbtvPeople
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
    Left = 520
    Top = 240
    PixelsPerInch = 96
    object dxBarManager1Bar2: TdxBar
      Caption = 'Tab Area Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bNewPeople'
        end
        item
          Visible = True
          ItemName = 'bInfPeople'
        end
        item
          Visible = True
          ItemName = 'bJornalPeople'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 803
      DockedTop = 0
      FloatLeft = 878
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'fast'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 1039
      DockedTop = 0
      FloatLeft = 1164
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarEdit3'
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
    object bNewPeople: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      OnClick = bNewPeopleClick
    end
    object bInfPeople: TdxBarLargeButton
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      Category = 0
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      Visible = ivAlways
      OnClick = bInfPeopleClick
    end
    object bJornalPeople: TdxBarLargeButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1095#1080#1090#1072#1090#1077#1083#1103
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1095#1080#1090#1072#1090#1077#1083#1103
      Visible = ivAlways
      OnClick = bJornalPeopleClick
    end
    object bGeneralJournal: TdxBarLargeButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Visible = ivNever
    end
    object dxBarButton1: TdxBarButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarEdit2: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarEdit3: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnChange = dxBarEdit3Change
    end
    object fast: TdxBarLargeButton
      Caption = #1054#1090#1095#1077#1090': '#1089#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1095#1080#1090#1072#1090#1077#1083#1102
      Category = 0
      Hint = #1054#1090#1095#1077#1090': '#1089#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1095#1080#1090#1072#1090#1077#1083#1102
      Visible = ivAlways
      OnClick = fastClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1060#1086#1088#1091#1084
      Category = 0
      Hint = #1060#1086#1088#1091#1084
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 448
    Top = 240
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 432
    Top = 176
  end
  object connect: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'lib'
    Username = 'psqlmaster'
    Server = 'localhost'
    Connected = True
    Left = 528
    Top = 176
    EncryptedPassword = '8CFF9AFF9CFF8AFF8DFFCEFF8BFF86FF'
  end
  object uqPeople: TUniQuery
    Connection = connect
    SQL.Strings = (
      'select p.id'
      ', lc.number'
      ', p.name'
      ', p.surname'
      ', p.patron'
      ', p.birth'
      ', lc.date_of_issue'
      ', lc.expirate_date'
      'from mm.people p '
      'left join mm.library_card lc'
      'on lc.people_id = p.id'
      ''
      ' &w'
      ' &v')
    ReadOnly = True
    Left = 600
    Top = 168
    MacroData = <
      item
        Name = 'w'
      end
      item
        Name = 'v'
      end>
  end
  object dsPeople: TUniDataSource
    DataSet = uqPeople
    Left = 608
    Top = 240
  end
  object f1: TfrxDBDataset
    UserName = 'f1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'name=name'
      'author_fio=author_fio'
      'people_fio=people_fio'
      'date_of_issue=date_of_issue'
      'st=st'
      'lib_id=lib_id'
      'journal_id=journal_id')
    DataSet = uqPeopleID
    BCDToCurrency = False
    Left = 272
    Top = 320
  end
  object frxReport2: TfrxReport
    Version = '5.6.11'
    DataSet = f1
    DataSetName = 'f1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43615.813037338000000000
    ReportOptions.LastChange = 43615.970421817130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 304
    Datasets = <
      item
        DataSet = f1
        DataSetName = 'f1'
      end
      item
        DataSet = f2
        DataSetName = 'f2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = f2
        DataSetName = 'f2'
        RowCount = 0
        object f2name_book: TfrxMemoView
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'name'
          DataSet = f2
          DataSetName = 'f2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[f2."name"]')
          ParentFont = False
        end
        object f2author: TfrxMemoView
          Left = 253.228510000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'author_fio'
          DataSet = f2
          DataSetName = 'f2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[f2."author_fio"]')
          ParentFont = False
        end
        object f2emp_issue: TfrxMemoView
          Left = 415.748300000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'st'
          DataSet = f2
          DataSetName = 'f2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[f2."st"]')
          ParentFont = False
        end
        object f2date_of_issue: TfrxMemoView
          Left = 597.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'date_of_issue'
          DataSet = f2
          DataSetName = 'f2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[f2."date_of_issue"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 260.787570000000000000
          Height = 52.913420000000000000
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1085#1072' [DATE]'
            ''
            #1063#1080#1090#1072#1090#1077#1083#1100':')
        end
        object f2people_fio: TfrxMemoView
          Left = 68.031540000000000000
          Top = 30.236240000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'people_fio'
          DataSet = f2
          DataSetName = 'f2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[f2."people_fio"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 415.748300000000000000
          Width = 279.685220000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072' '#1080#1084'. '#1050#1091#1079#1085#1077#1094#1086#1074#1072' '#1050#1080#1088#1080#1083#1083#1072' '#1080' '#1071#1088#1082#1080#1085#1072' '#1042#1103#1095#1077#1089#1083#1072#1074#1072
            #1072#1076#1088#1077#1089': '#1075'.'#1058#1072#1075#1072#1085#1088#1086#1075' '#1087#1088#1086#1089#1087#1077#1082#1090' '#1051#1077#1085#1080#1085#1072' 23')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 253.228510000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1048#1054' '#1040#1074#1090#1086#1088#1072)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 415.748300000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1085#1080#1075#1080)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 597.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080)
          ParentFont = False
        end
      end
    end
  end
  object f2: TfrxDBDataset
    UserName = 'f2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'name=name'
      'author_fio=author_fio'
      'people_fio=people_fio'
      'date_of_issue=date_of_issue'
      'st=st'
      'lib_id=lib_id'
      'journal_id=journal_id')
    DataSet = uqPeopleID
    BCDToCurrency = False
    Left = 176
    Top = 320
  end
  object frxReport1: TfrxReport
    Version = '5.6.11'
    DataSet = f1
    DataSetName = 'f1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43615.847092175900000000
    ReportOptions.LastChange = 43615.847092175900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 336
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object uqPeopleID: TUniQuery
    Connection = connect
    SQL.Strings = (
      'select    b.name  '
      
        '        , a.surname || '#39' '#39' || a.name || '#39' '#39' || coalesce(a.patron' +
        ', '#39#39') as author_fio'
      
        '        , p.surname || '#39' '#39' || p.name || '#39' '#39' || coalesce(p.patron' +
        ', '#39#39') as people_fio'
      '        , j.date_of_issue'
      '        , case '
      '        '#9' when j.appearance = 1 then '#39#1041#1077#1079' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1081#39
      '             when j.appearance = 2 then '#39#1045#1089#1090#1100' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103#39
      '       '#9'  end as st '
      '        , l.id as lib_id'
      '        , j.id as journal_id'
      'from mm.journal j'
      #9'left join mm.people p '
      '    '#9'on p.id = j.people_id'
      #9'left join mm.library l'
      '    '#9'on l.id = j.library_id'
      #9'left join mm.book b'
      '    '#9'on b.id = l.book_id                 '
      #9'left join mm.book_author ba'
      '    '#9'on ba.book_id = b.id'
      #9'left join mm.author a'
      '    '#9'on a.id = ba.author_id   '
      
        'where l.availability = 1 and j.emp_recive_id is null and p.id = ' +
        ':pid'
      ''
      '')
    Active = True
    Left = 528
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        Value = nil
      end>
  end
  object dsPeopleID: TUniDataSource
    DataSet = uqPeopleID
    Left = 584
    Top = 344
  end
end
