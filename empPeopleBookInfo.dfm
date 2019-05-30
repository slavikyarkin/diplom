object Form24: TForm24
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 490
  ClientWidth = 968
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
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 467
    Width = 968
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 457
    ExplicitWidth = 640
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 27
    Width = 968
    Height = 440
    Align = alClient
    TabOrder = 1
    ExplicitTop = 54
    ExplicitHeight = 407
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMyJur
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
        DataBinding.FieldName = 'name'
        HeaderGlyph.SourceWidth = 100
        Width = 100
      end
      object cxGrid1DBTableView1author_fio: TcxGridDBColumn
        Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
        DataBinding.FieldName = 'author_fio'
      end
      object cxGrid1DBTableView1date_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bSave: TdxRibbon
    Left = 0
    Top = 0
    Width = 968
    Height = 27
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    ShowTabGroups = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 6
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
        end
        item
        end
        item
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
    Left = 568
    Top = 8
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
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
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
    object dxBarButton1: TdxBarButton
      Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100
      Category = 0
      Hint = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object dsMyJur: TUniDataSource
    DataSet = uqMyJur
    Left = 424
    Top = 8
  end
  object uqMyJur: TUniQuery
    Connection = Form3.con
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
    Left = 360
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        Value = nil
      end>
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
    DataSet = uqMyJur
    BCDToCurrency = False
    Left = 652
    Top = 24
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
    DataSet = uqMyJur
    BCDToCurrency = False
    Left = 764
    Top = 16
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
    ReportOptions.CreateDate = 43616.062341782400000000
    ReportOptions.LastChange = 43616.066855231480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 216
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
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
        object Memo4: TfrxMemoView
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
        object Memo5: TfrxMemoView
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
        object Memo7: TfrxMemoView
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 41.574830000000000000
          Top = 30.236240000000000000
          Width = 260.787570000000000000
          Height = 52.913420000000000000
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1085#1072' [DATE]'
            ''
            #1063#1080#1090#1072#1090#1077#1083#1100':')
        end
        object f2people_fio: TfrxMemoView
          Left = 105.826840000000000000
          Top = 60.472480000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'people_fio'
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
          Left = 453.543600000000000000
          Top = 30.236240000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = f2
        DataSetName = 'f2'
        RowCount = 0
        object Memo2: TfrxMemoView
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
        object f2author_fio: TfrxMemoView
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
        object Memo8: TfrxMemoView
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
    end
  end
end
