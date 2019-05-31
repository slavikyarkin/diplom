object Form23: TForm23
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1048#1089#1090#1086#1088#1080#1103' '#1074#1099#1076#1072#1095#1080' '#1082#1085#1080#1075#1080
  ClientHeight = 490
  ClientWidth = 948
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
    Width = 948
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
    Width = 948
    Height = 27
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    ShowTabGroups = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 1
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
        end
        item
        end>
      Index = 0
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 27
    Width = 948
    Height = 440
    Align = alClient
    TabOrder = 2
    ExplicitTop = 60
    ExplicitHeight = 407
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
      object cxGridDBTableView2name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        HeaderGlyph.SourceWidth = 200
        Width = 170
      end
      object cxGridDBTableView2author_fio: TcxGridDBColumn
        DataBinding.FieldName = 'author_fio'
        Width = 76
      end
      object cxGridDBTableView2people_fio: TcxGridDBColumn
        DataBinding.FieldName = 'people_fio'
        Width = 79
      end
      object cxGridDBTableView2isbn: TcxGridDBColumn
        DataBinding.FieldName = 'isbn'
      end
      object cxGridDBTableView2date_of_issue: TcxGridDBColumn
        DataBinding.FieldName = 'date_of_issue'
        Width = 79
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
      DockedLeft = 71
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 100
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqBookJournal: TUniQuery
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
      '        , l.ISBN'
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
    Active = True
    Left = 152
    Top = 192
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
