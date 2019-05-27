object Form5: TForm5
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1046#1091#1088#1085#1072#1083
  ClientHeight = 696
  ClientWidth = 1094
  Color = clBtnFace
  Constraints.MaxHeight = 725
  Constraints.MaxWidth = 1100
  Constraints.MinHeight = 725
  Constraints.MinWidth = 1100
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1094
    Height = 155
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1052#1077#1085#1102
      Groups = <
        item
        end
        item
        end
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar3'
        end
        item
          ToolbarName = 'dxBarManager1Bar4'
        end
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar5'
        end
        item
          ToolbarName = 'dxBarManager1Bar6'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 673
    Width = 1094
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object gPeopleJournal: TcxGrid
    Left = 0
    Top = 155
    Width = 1094
    Height = 518
    Align = alClient
    TabOrder = 2
    TabStop = False
    ExplicitTop = 131
    ExplicitHeight = 542
    object gPeopleJournalDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsJournal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object gPeopleJournalDBTableView1name: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
        DataBinding.FieldName = 'name'
        BestFitMaxWidth = 300
        HeaderGlyph.SourceWidth = 350
        MinWidth = 350
      end
      object gPeopleJournalDBTableView1author_fio: TcxGridDBColumn
        Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
        DataBinding.FieldName = 'author_fio'
        MinWidth = 250
        Width = 250
      end
      object gPeopleJournalDBTableView1emp_fio_rec: TcxGridDBColumn
        Caption = #1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
        DataBinding.FieldName = 'people_fio'
        MinWidth = 250
        Width = 250
      end
      object gPeopleJournalDBTableView1date_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
        MinWidth = 125
      end
      object gPeopleJournalDBTableView1st: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'st'
        MinWidth = 125
      end
    end
    object gPeopleJournalLevel1: TcxGridLevel
      GridView = gPeopleJournalDBTableView1
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
    object dxBarManager1Bar3: TdxBar
      Caption = ' '
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1203
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBB4'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      CaptionButtons = <>
      DockedLeft = 93
      DockedTop = 0
      FloatLeft = 1203
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbbAddNewBook'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      Caption = '  '
      CaptionButtons = <>
      DockedLeft = 235
      DockedTop = 0
      FloatLeft = 1118
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxReturn'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar6: TdxBar
      Caption = '    '
      CaptionButtons = <>
      DockedLeft = 330
      DockedTop = 0
      FloatLeft = 1118
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
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
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1042#1099#1076#1072#1090#1100' '#1082#1085#1080#1075#1091
      Category = 0
      Hint = #1042#1099#1076#1072#1090#1100' '#1082#1085#1080#1075#1091
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1042#1099#1076#1072#1090#1100' '#1082#1085#1080#1075#1091
      Category = 0
      Hint = #1042#1099#1076#1072#1090#1100' '#1082#1085#1080#1075#1091
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBB4: TdxBarButton
      Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075#1080
      Category = 0
      Hint = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075#1080
      Visible = ivAlways
      OnClick = dxBB4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbbAddNewBook: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1082#1085#1080#1075#1091
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1082#1085#1080#1075#1091
      Visible = ivAlways
      OnClick = dxbbAddNewBookClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1074#1086#1079
      Category = 0
      Hint = #1074#1086#1079
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxReturn: TdxBarButton
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1082#1085#1080#1075#1080
      Category = 0
      Hint = #1042#1086#1079#1074#1088#1072#1090' '#1082#1085#1080#1075#1080
      Visible = ivAlways
      OnClick = dxReturnClick
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 696
    Top = 8
  end
  object uqPeopleJournal: TUniQuery
    Connection = Form1.connect
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
      'where l.availability = 1 and j.emp_recive_id is null')
    Left = 344
    Top = 8
  end
  object dsPeopleJournal: TDataSource
    Left = 440
    Top = 8
  end
  object dsJournal: TUniDataSource
    DataSet = uqPeopleJournal
    Left = 608
    Top = 240
  end
end
