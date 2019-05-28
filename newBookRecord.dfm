object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1082#1085#1080#1075#1080' '#1074' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1080
  ClientHeight = 421
  ClientWidth = 1110
  Color = clWhite
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
    Top = 398
    Width = 1110
    Height = 23
    Panels = <>
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object gbGeneralInform: TGroupBox
    Left = 0
    Top = 24
    Width = 1116
    Height = 425
    Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 24
      Top = 185
      Width = 135
      Height = 19
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1040#1074#1090#1086#1088#1072':'
    end
    object Label2: TLabel
      Left = 24
      Top = 239
      Width = 124
      Height = 19
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1082#1085#1080#1075#1080':'
    end
    object Label1: TLabel
      Left = 24
      Top = 313
      Width = 121
      Height = 19
      Caption = #1050#1085#1080#1075#1072' '#1095#1080#1090#1072#1090#1077#1083#1103':'
    end
    object eaAuthor: TEdit
      Left = 24
      Top = 210
      Width = 1049
      Height = 27
      MaxLength = 1000
      TabOrder = 0
      OnKeyPress = eaAuthorKeyPress
    end
    object gbName: TGroupBox
      Left = 24
      Top = 24
      Width = 457
      Height = 137
      Caption = #1040#1074#1090#1086#1088
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label7: TLabel
        Left = 68
        Top = 22
        Width = 35
        Height = 19
        Caption = #1048#1084#1103':'
      end
      object Label8: TLabel
        Left = 32
        Top = 50
        Width = 71
        Height = 19
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object Label9: TLabel
        Left = 28
        Top = 83
        Width = 75
        Height = 19
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      end
      object eaName: TEdit
        Left = 109
        Top = 16
        Width = 324
        Height = 27
        TabOrder = 0
        OnKeyPress = eaNameKeyPress
      end
      object eaSurname: TEdit
        Left = 109
        Top = 47
        Width = 324
        Height = 27
        TabOrder = 1
        OnKeyPress = eaSurnameKeyPress
      end
      object eaPatron: TEdit
        Left = 109
        Top = 83
        Width = 324
        Height = 27
        TabOrder = 2
        OnKeyPress = eaPatronKeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 544
      Top = 24
      Width = 529
      Height = 137
      Caption = #1050#1085#1080#1075#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label12: TLabel
        Left = 24
        Top = 28
        Width = 121
        Height = 19
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080':'
      end
      object Label6: TLabel
        Left = 11
        Top = 53
        Width = 133
        Height = 19
        Caption = #1044#1072#1090#1072' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080':'
      end
      object Label10: TLabel
        Left = 103
        Top = 86
        Width = 41
        Height = 19
        Caption = 'ISBN:'
      end
      object Label3: TLabel
        Left = 39
        Top = 111
        Width = 105
        Height = 19
        Caption = #1044#1072#1090#1072' '#1080#1079#1076#1072#1085#1080#1103':'
      end
      object ebName: TEdit
        Left = 167
        Top = 24
        Width = 324
        Height = 27
        TabOrder = 0
        OnKeyPress = ebNameKeyPress
      end
      object ebISBN: TEdit
        Left = 167
        Top = 82
        Width = 324
        Height = 27
        TabOrder = 1
        OnKeyPress = ebISBNKeyPress
      end
      object ebDateBook: TDateTimePicker
        Left = 168
        Top = 111
        Width = 201
        Height = 23
        Date = 43404.907636238430000000
        Time = 43404.907636238430000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object ebDate: TDateTimePicker
        Left = 168
        Top = 53
        Width = 201
        Height = 23
        Date = 43404.907636238430000000
        Time = 43404.907636238430000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object ebBook: TEdit
      Left = 24
      Top = 264
      Width = 1049
      Height = 27
      MaxLength = 1000
      TabOrder = 3
      OnKeyPress = ebBookKeyPress
    end
    object cxPeople: TcxLookupComboBox
      Left = 165
      Top = 310
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListSource = dsPeople
      TabOrder = 4
      Width = 908
    end
  end
  object bSave: TdxRibbon
    Left = 0
    Top = 0
    Width = 1110
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 2
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
      FloatLeft = 209
      FloatTop = 214
      FloatClientWidth = 66
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSave'
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
    object dxSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      OnClick = dxSaveClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object dsPeople: TUniDataSource
    DataSet = uqPeople
    Left = 744
    Top = 8
  end
  object uqPeople: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select p.id'
      
        ' , p.surname || '#39' '#39' || p.name || '#39' '#39' || coalesce(p.patron, '#39#39') |' +
        '| '#39' '#8470' '#1073#1080#1083#1077#1090#1072' '#39' || lc.number as Name'
      'from mm.people p '
      'left join mm.library_card lc'
      'on lc.people_id = p.id')
    Left = 688
    Top = 8
  end
  object uqAuthor: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.author')
    Left = 536
    Top = 184
  end
  object uqBook: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.book')
    Left = 600
    Top = 184
  end
  object uqBookAuthor: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.book_author')
    Left = 664
    Top = 184
  end
  object uqGetPeople: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select distinct * from mm.people p'
      'where p.id = :pid'
      'limit 1 ')
    Left = 736
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        Value = nil
      end>
  end
  object uqGetAuthor: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.author a '
      
        'where a.name = :name and a.surname = :surname and a.about = :abo' +
        'ut')
    Left = 808
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'surname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'about'
        Value = nil
      end>
  end
  object uqGetBook: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.book b'
      
        'where b.name = :name and b.date_of_publication = :date_of_public' +
        'ation and b.description = :description')
    Left = 872
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'date_of_publication'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'description'
        Value = nil
      end>
  end
  object uqLib: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.library')
    Left = 936
    Top = 184
  end
end
