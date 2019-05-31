object Form16: TForm16
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
  ClientHeight = 667
  ClientWidth = 1157
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
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 644
    Width = 1157
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 27
    Width = 1157
    Height = 617
    Align = alClient
    TabOrder = 1
    ExplicitTop = 60
    ExplicitHeight = 584
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
  object cxGrid2: TcxGrid
    Left = 0
    Top = 27
    Width = 1157
    Height = 617
    Align = alClient
    TabOrder = 2
    ExplicitTop = 60
    ExplicitHeight = 584
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'book_name'
        Width = 120
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088
        DataBinding.FieldName = 'author'
        Width = 120
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = #1046#1072#1085#1088
        DataBinding.FieldName = 'genre'
        Width = 120
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
        DataBinding.FieldName = 'edition_name'
        Width = 120
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
        DataBinding.FieldName = 'date_of_edition'
        Width = 80
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = 'ISBN'
        DataBinding.FieldName = 'isbn'
        Width = 80
      end
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'availability'
        Width = 80
      end
      object cxGridDBColumn8: TcxGridDBColumn
        Caption = #1048#1079#1073#1088#1072#1085#1085#1099#1077
        DataBinding.FieldName = 'chosen'
        Width = 60
      end
      object cxGridDBColumn9: TcxGridDBColumn
        Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
        DataBinding.FieldName = 'office'
        Width = 120
      end
      object cxGridDBColumn10: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'office_addr'
        Width = 120
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 27
    Width = 1157
    Height = 617
    Align = alClient
    TabOrder = 3
    ExplicitTop = 60
    ExplicitHeight = 584
    object cxGridDBTableView2: TcxGridDBTableView
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
      object cxGridDBColumn11: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'book_name'
        Width = 120
      end
      object cxGridDBColumn12: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088
        DataBinding.FieldName = 'author'
        Width = 120
      end
      object cxGridDBColumn13: TcxGridDBColumn
        Caption = #1046#1072#1085#1088
        DataBinding.FieldName = 'genre'
        Width = 120
      end
      object cxGridDBColumn15: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
        DataBinding.FieldName = 'date_of_edition'
        Width = 80
      end
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
  object bSave: TdxRibbon
    Left = 0
    Top = 0
    Width = 1157
    Height = 27
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    ShowTabGroups = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 4
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
          ToolbarName = 'dxBarManager1Bar3'
        end
        item
          ToolbarName = 'dxBarManager1Bar4'
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
    Left = 1000
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1191
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 170
      DockedTop = 0
      FloatLeft = 1191
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
    object dxBarManager1Bar3: TdxBar
      CaptionButtons = <>
      DockedLeft = 348
      DockedTop = 0
      FloatLeft = 1191
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 562
      DockedTop = 0
      FloatLeft = 1191
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxClose'
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
    object dxClose: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = dxCloseClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1082#1085#1080#1075#1080
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1082#1085#1080#1075#1080
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1082#1085#1080#1075#1077
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1082#1085#1080#1075#1077
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 864
  end
  object uqSearchBook: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select l.id as lib_id'
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
    Left = 672
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsSearchBook: TUniDataSource
    DataSet = uqSearchBook
    Left = 752
  end
end
