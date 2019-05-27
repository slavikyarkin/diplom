object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #1055#1086#1080#1089#1082' '#1082#1085#1080#1075
  ClientHeight = 631
  ClientWidth = 1111
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
    Width = 1111
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
    ExplicitWidth = 1121
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      Groups = <
        item
          Caption = ''
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 608
    Width = 1111
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
    ExplicitTop = 618
    ExplicitWidth = 1121
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 155
    Width = 1111
    Height = 453
    Align = alClient
    TabOrder = 2
    ExplicitTop = 131
    ExplicitWidth = 1121
    ExplicitHeight = 487
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSearchBook
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1book_name: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'book_name'
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
      object cxGrid1DBTableView1edition_name: TcxGridDBColumn
        Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
        DataBinding.FieldName = 'edition_name'
        Width = 120
      end
      object cxGrid1DBTableView1date_of_edition: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
        DataBinding.FieldName = 'date_of_edition'
        Width = 80
      end
      object cxGrid1DBTableView1isbn: TcxGridDBColumn
        Caption = 'ISBN'
        DataBinding.FieldName = 'isbn'
        Width = 80
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'availability'
        Width = 80
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1048#1079#1073#1088#1072#1085#1085#1099#1077
        DataBinding.FieldName = 'chosen'
        Width = 60
      end
      object cxGrid1DBTableView1office: TcxGridDBColumn
        Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
        DataBinding.FieldName = 'office'
        Width = 120
      end
      object cxGrid1DBTableView1office_addr: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'office_addr'
        Width = 120
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
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bAddChosen'
        end
        item
          Visible = True
          ItemName = 'bBookInfo'
        end
        item
          Visible = True
          ItemName = 'bClose'
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
    object bAddChosen: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1079#1073#1088#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1079#1073#1088#1072#1085#1085#1099#1077
      Visible = ivAlways
      OnClick = bAddChosenClick
    end
    object bClose: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = bCloseClick
    end
    object bBookInfo: TdxBarLargeButton
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
      Category = 0
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
      Visible = ivAlways
      OnClick = bBookInfoClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqSearchBook: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select l.id'
      '     , b.name as book_name'
      '     , b.id as book_id'
      '     , e.name as edition_name'
      '     , l.date_of_edition'
      '     , l.isbn'
      '     , o.name || '#39' '#39' || o.work_time ||'#39#39' || o.phone as office'
      '     , a.street || '#39' '#39' ||a.house::varchar as office_addr'
      
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
      '     , case'
      '     '#9' when l.availability = 1 then '#39#1042' '#1085#1072#1083#1080#1095#1080#1080#39
      '         when l.availability = 2 then '#39#1053#1077#1076#1086#1089#1090#1091#1087#1085#1072#39
      '       end as availability '
      '     , case '
      
        '        when exists(select * from mm.chosen where library_id = l' +
        '.id and people_id = :p_people_id) = true '
      '         then '#39#1044#1072#39
      '         else '#39#1053#1077#1090#39
      '       end as chosen'
      '  from mm.library l'
      '       join mm.book b'
      '         on b.id = l.book_id'
      '       left join mm.edition e'
      '         on e.id = l.edition_id'
      '       left join mm.office o'
      '         on o.id = l.office_id'
      '       left join mm.addr a'
      '         on a.id = o.addr_id  '
      ' order by l.id desc'
      ''
      '')
    AfterScroll = uqSearchBookAfterScroll
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsSearchBook: TUniDataSource
    DataSet = uqSearchBook
    Left = 304
    Top = 8
  end
  object uqChosen: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select *'
      '  from mm.chosen '
      ' where people_id = :p_people_id'
      '   and library_id = :p_library_id')
    Left = 392
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_library_id'
        Value = nil
      end>
  end
end
