object Form26: TForm26
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Form26'
  ClientHeight = 490
  ClientWidth = 1016
  Color = clBtnFace
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
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 467
    Width = 1016
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
    Width = 1016
    Height = 440
    Align = alClient
    TabOrder = 5
    ExplicitLeft = -172
    ExplicitTop = 111
    ExplicitWidth = 812
    ExplicitHeight = 369
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAnnouncement
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
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        Width = 120
      end
      object cxGrid1DBTableView1author: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088
        DataBinding.FieldName = 'author'
        Width = 120
      end
      object cxGrid1DBTableView1genre: TcxGridDBColumn
        Caption = #1046#1072#1085#1088
        DataBinding.FieldName = 'genre'
        Width = 120
      end
      object cxGrid1DBTableView1announcement_name: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'announcement_name'
        Width = 80
      end
      object cxGrid1DBTableView1comm: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        DataBinding.FieldName = 'comm'
        Width = 200
      end
      object cxGrid1DBTableView1date: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        DataBinding.FieldName = 'date'
        Width = 80
      end
      object cxGrid1DBTableView1case: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'case'
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1016
    Height = 27
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
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
          ToolbarName = 'dxBarManager1Bar1'
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
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
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
    object dxBarButton1: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqAnnouncement: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select be.id'
      '     , b.name'
      '     , b.id as book_id'
      
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
      '     , i.login'
      '     , a.type as announcement_name'
      '     , be.text as comm'
      '     , be.date '
      '     , case be.type '
      '        when true then '#39#1054#1090#1082#1088#1099#1090#1086#39
      '        when false then '#39#1047#1072#1082#1088#1099#1090#1086#39' '
      '       end'
      '  from mm.book_exchange be'
      '       join mm.book b'
      '         on b.id = be.book_id'
      '       join mm.identification i '
      '         on i.people_id = be.people_id'
      '       join mm.announcement a'
      '         on a.id = be.announcement_id'
      ' order by be.id desc')
    Active = True
    Left = 384
    Top = 8
  end
  object dsAnnouncement: TUniDataSource
    DataSet = uqAnnouncement
    Left = 448
    Top = 24
  end
end
