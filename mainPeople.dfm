object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  ClientHeight = 481
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 817
    Height = 155
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    Fonts.AssignedFonts = [afGroupHeader]
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = clWhite
    Fonts.GroupHeader.Height = -12
    Fonts.GroupHeader.Name = 'Segoe UI'
    Fonts.GroupHeader.Style = []
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
        end
        item
          Caption = ''
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 458
    Width = 817
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 155
    Width = 817
    Height = 303
    Align = alClient
    TabOrder = 2
    ExplicitTop = 131
    ExplicitHeight = 327
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMyJur
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1name_book
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1name_book: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
        DataBinding.FieldName = 'name_book'
        Width = 160
      end
      object cxGrid1DBTableView1author: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088'('#1099') '#1082#1085#1080#1075#1080
        DataBinding.FieldName = 'author'
        Width = 160
      end
      object cxGrid1DBTableView1genre: TcxGridDBColumn
        Caption = #1046#1072#1085#1088'('#1099')'
        DataBinding.FieldName = 'genre'
        Width = 160
      end
      object cxGrid1DBTableView1emp_issue: TcxGridDBColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1074#1099#1076#1072#1074#1096#1080#1081
        DataBinding.FieldName = 'emp_issue'
        Width = 160
      end
      object cxGrid1DBTableView1date_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
        Width = 80
      end
      object cxGrid1DBTableView1emp_recive: TcxGridDBColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1087#1088#1080#1085#1103#1074#1096#1080#1081
        DataBinding.FieldName = 'emp_recive'
        Width = 160
      end
      object cxGrid1DBTableView1date_of_return: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
        DataBinding.FieldName = 'date_of_return'
        Width = 80
      end
      object cxGrid1DBTableView1appearance: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'appearance'
        Width = 60
      end
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
    LookAndFeel.SkinName = 'Office2016Dark'
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
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'bBookInfo'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
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
      DockedLeft = 334
      DockedTop = 0
      FloatLeft = 851
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bRefresh'
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
      Caption = #1052#1086#1080' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1052#1086#1080' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object bBookInfo: TdxBarLargeButton
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
      Category = 0
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
      Visible = ivAlways
      OnClick = bBookInfoClick
    end
    object bRefresh: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      OnClick = bRefreshClick
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1055#1086#1080#1089#1082' '#1082#1085#1080#1075
      Category = 0
      Hint = #1055#1086#1080#1089#1082' '#1082#1085#1080#1075
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = #1048#1079#1073#1088#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1048#1079#1073#1088#1072#1085#1085#1099#1077
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = #1052#1086#1080' '#1082#1085#1080#1075#1080
      Category = 0
      Hint = #1052#1086#1080' '#1082#1085#1080#1075#1080
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqMyJur: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select b.name as name_book'
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
      
        '     , p1.surname || '#39' '#39' || p1.name || '#39' '#39' || coalesce(p1.patron' +
        ', '#39#39') as emp_issue'
      
        '     , p2.surname || '#39' '#39' || p2.name || '#39' '#39' || coalesce(p2.patron' +
        ', '#39#39') as emp_recive'
      '     , j.date_of_issue '
      '     , j.date_of_return'
      '     , j.appearance'
      '     ,  case '
      '         when j.appearance = 1 then '#39#1041#1077#1079' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1081#39
      '         when j.appearance = 2 then '#39#1045#1089#1090#1100' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103#39
      '       end as appearance'
      '  from mm.journal j'
      '       join mm.library l'
      '         on l.id = j.library_id '
      '       left join mm.emp e1'
      '         on e1.id = j.emp_issue_id'
      '       left join mm.people p1'
      '         on p1.id = e1.people_id  '
      '       left join mm.office o'
      '         on o.id = l.office_id'
      '       left join mm.book b'
      '         on b.id = l.book_id'
      '       left join mm.emp e2'
      '         on e2.id = j.emp_recive_id'
      '       left join mm.people p2'
      '         on p2.id = e2.people_id'
      ' where j.people_id = :p_people_id'
      ' order by j.id desc')
    Left = 360
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsMyJur: TUniDataSource
    DataSet = uqMyJur
    Left = 424
    Top = 8
  end
end
