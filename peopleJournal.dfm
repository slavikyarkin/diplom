object Form5: TForm5
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083
  ClientHeight = 686
  ClientWidth = 1084
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
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1084
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    ShowTabGroups = False
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
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 663
    Width = 1084
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 661
    ExplicitWidth = 1169
  end
  object gPeopleJournal: TcxGrid
    Left = 0
    Top = 60
    Width = 1084
    Height = 603
    Align = alClient
    TabOrder = 2
    ExplicitTop = 155
    ExplicitWidth = 1169
    ExplicitHeight = 506
    object gPeopleJournalDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object gPeopleJournalDBTableView1name: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1050#1085#1080#1075#1080
        DataBinding.FieldName = 'name'
        MinWidth = 350
        Width = 350
      end
      object gPeopleJournalDBTableView1author_fio: TcxGridDBColumn
        Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
        DataBinding.FieldName = 'author_fio'
        MinWidth = 250
        Width = 250
      end
      object gPeopleJournalDBTableView1emp_fio_rec: TcxGridDBColumn
        Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072' '#1074#1099#1076#1072#1074#1096#1077#1075#1086
        DataBinding.FieldName = 'emp_fio_rec'
        MinWidth = 205
        Width = 250
      end
      object gPeopleJournalDBTableView1date_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
        MinWidth = 125
        Width = 125
      end
      object gPeopleJournalDBTableView1st: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1085#1080#1075#1080
        DataBinding.FieldName = 'st'
        MinWidth = 125
        Width = 125
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 1'
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
      DockedLeft = 140
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
      Caption = #1042#1099#1076#1072#1095#1072'/'#1074#1086#1079#1074#1088#1072#1090' '#1082#1085#1080#1075#1080
      Category = 0
      Hint = #1042#1099#1076#1072#1095#1072'/'#1074#1086#1079#1074#1088#1072#1090' '#1082#1085#1080#1075#1080
      Visible = ivAlways
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
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqPeopleJournal: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select b.name'
      
        '     , e1.surname || '#39' '#39' || e1.name || '#39' '#39' || coalesce(e1.parton' +
        ', '#39#39') as emp_fio_rec'
      
        '     , p.surname || '#39' '#39' || p.name || '#39' '#39' || coalesce(p.parton, '#39 +
        #39') as people_fio'
      '     , j.date_of_issue'
      '     , l.isbn'
      '     , l.mark'
      '     , case '
      '         when j.state = 1 then '#39#1041#1077#1079' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1081#39
      '         when j.state = 2 then '#39#1045#1089#1090#1100' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103#39
      '       end as st  '
      '  from mm.journal j'
      '  join mm.people p'
      '    on p.id = j.people_id'
      '  join mm.library l'
      '    on l.id = j.library_id'
      '  join mm.edition e'
      '    on e.id = l.edition_id   '
      '  join mm.book b'
      '    on b.id = l.book_id'
      '  join mm.book_author ba'
      '    on ba.book_id = b.id'
      '  join mm.author a'
      '    on a.id = ba.author_id'
      '  left join mm.emp e1 '
      '    on e1.id = j.emp_recive_id')
    Left = 344
    Top = 8
  end
  object dsPeopleJournal: TDataSource
    Left = 440
    Top = 8
  end
end
