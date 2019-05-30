object Form23: TForm23
  Left = 0
  Top = 0
  Caption = 'Form23'
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
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object bSave: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 5
    TabStop = False
    ExplicitLeft = -517
    ExplicitWidth = 1157
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
        end
        item
        end>
      Index = 0
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 60
    Width = 640
    Height = 397
    Align = alClient
    TabOrder = 6
    ExplicitLeft = -517
    ExplicitTop = -104
    ExplicitWidth = 1157
    ExplicitHeight = 584
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPeopleJournal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGridDBColumn16: TcxGridDBColumn
        Caption = 'ISBN'
        DataBinding.FieldName = 'isbn'
        Width = 80
      end
      object cxGridDBColumn17: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'availability'
        Width = 80
      end
      object cxGridDBColumn18: TcxGridDBColumn
        Caption = #1048#1079#1073#1088#1072#1085#1085#1099#1077
        DataBinding.FieldName = 'chosen'
        Width = 60
      end
      object cxGridDBColumn19: TcxGridDBColumn
        Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
        DataBinding.FieldName = 'office'
        Width = 120
      end
      object cxGridDBColumn20: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'office_addr'
        Width = 120
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
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
      ItemLinks = <>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Tab Area Toolbar'
      CaptionButtons = <>
      DockedLeft = 35
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 100
      FloatClientHeight = 22
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
    Left = 536
    Top = 8
  end
  object uqBookJournal: TUniQuery
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
      'where l.id = :lib_id')
    Left = 160
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lib_id'
        Value = nil
      end>
  end
  object dsPeopleJournal: TDataSource
    DataSet = uqBookJournal
    Left = 240
    Top = 192
  end
end
