object Form9: TForm9
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
  ClientHeight = 612
  ClientWidth = 933
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
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 933
    Height = 155
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 589
    Width = 933
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
  object Panel1: TPanel
    Left = 0
    Top = 155
    Width = 933
    Height = 198
    Align = alTop
    TabOrder = 2
    ExplicitTop = 131
    object cxDBLabel1: TcxDBLabel
      Left = 20
      Top = 20
      AutoSize = True
      DataBinding.DataField = 'name'
      DataBinding.DataSource = dsBook
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBMemo1: TcxDBMemo
      Left = 20
      Top = 55
      DataBinding.DataField = 'description'
      DataBinding.DataSource = dsBook
      Enabled = False
      TabOrder = 1
      Height = 70
      Width = 893
    end
    object cxDBLabel2: TcxDBLabel
      Left = 20
      Top = 135
      AutoSize = True
      DataBinding.DataField = 'author'
      DataBinding.DataSource = dsBook
      Transparent = True
    end
    object cxDBLabel3: TcxDBLabel
      Left = 20
      Top = 165
      AutoSize = True
      DataBinding.DataField = 'genre'
      DataBinding.DataSource = dsBook
      Transparent = True
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 365
    Width = 933
    Height = 224
    Align = alClient
    TabOrder = 3
    ExplicitTop = 341
    ExplicitHeight = 248
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReview
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1login
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1login: TcxGridDBColumn
        Caption = #1051#1086#1075#1080#1085
        DataBinding.FieldName = 'login'
        Width = 80
      end
      object cxGrid1DBTableView1date: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103
        DataBinding.FieldName = 'date'
        Width = 80
      end
      object cxGrid1DBTableView1text: TcxGridDBColumn
        Caption = #1054#1090#1079#1099#1074
        DataBinding.FieldName = 'text'
        Width = 160
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 353
    Width = 933
    Height = 12
    AlignSplitter = salTop
    Control = cxGrid1
    ExplicitTop = 329
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
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1054#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1079#1099#1074
      Category = 0
      Hint = #1054#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1079#1099#1074
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
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqBook: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select b.* '
      
        '     , (select trim(both '#39'{}'#39' from array_agg(a.surname || '#39' '#39' ||' +
        ' a.name || '#39' '#39' || coalesce(a.patron, '#39#39') )::varchar )'
      '          from mm.book_author au '
      '               join mm.author a '
      '                 on a.id = au.author_id '
      '         where au.book_id = b.id) as author'
      '     , (select trim(both '#39'{}'#39' from array_agg(g.name)::varchar)'
      '          from mm.book_genre bg '
      '               join mm.genre g'
      '                 on g.id = bg.genre_id'
      '         where bg.book_id = b.id) as genre'
      '  from mm.book b'
      ' where b.id = :p_book_id')
    Left = 296
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_book_id'
        Value = nil
      end>
  end
  object dsBook: TUniDataSource
    DataSet = uqBook
    Left = 344
    Top = 8
  end
  object uqReview: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select r.*'
      '     , i.login '
      '  from mm.review r'
      '       join mm.identification i'
      '         on i.people_id = r.people_id'
      ' where r.book_id = :p_book_id'
      ' order by r.id desc')
    Active = True
    Left = 392
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_book_id'
        Value = nil
      end>
  end
  object dsReview: TUniDataSource
    DataSet = uqReview
    Left = 440
    Top = 8
  end
end
