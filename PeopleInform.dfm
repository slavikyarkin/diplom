object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    ShowTabGroups = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object Меню: TdxRibbonTab
      Active = True
      Caption = #1052#1077#1085#1102
      Groups = <>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 60
    Width = 640
    Height = 397
    Align = alClient
    TabOrder = 2
    ExplicitTop = 54
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
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
    Left = 504
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
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
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 448
  end
  object uqPeopleInform: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select  lc.number'
      
        '    , p.surname || '#39' '#39' || p.name || '#39' '#39' || coalesce(p.parton, '#39#39 +
        ') as people_fio'
      '    , p.number'
      '    , p.email'
      '    , case '
      '    '#9'when p.sex = 1 then '#39#1052#1091#1078#1089#1082#1086#1081#39
      '        when p.sex = 2 then '#39#1046#1077#1085#1089#1082#1080#1081#39
      '      end as SEX'
      '    , d.issueed_by'
      '    , d.date_of_issue'
      '    , d.unit_code'
      '    , d.series'
      '    , d.number'
      '    , r.name as Region'
      '    , t.name as Town'
      '    , addr.street'
      '    , addr.house'
      '    , addr.flat'
      'from mm.people p '
      #9'join mm.doc d'
      '    '#9'on d.people_id = p.id '
      '    left join mm.library_card lc'
      #9'on lc.people_id = p.id'
      '    left join mm.addr addr'
      '    '#9'on addr.people_id = p.id'
      '    left join mm.town t'
      '    '#9'on t.id = addr.town_id'
      '    left join mm.region r'
      '    '#9'on r.id = t.region_id'
      '        ')
    Left = 248
    Top = 8
  end
  object dsPeopleInform: TUniDataSource
    DataSet = uqPeopleInform
    Left = 328
    Top = 8
  end
end
