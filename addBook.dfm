object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1076#1072#1095#1072'/'#1074#1086#1079#1074#1088#1072#1090' '#1082#1085#1080#1075#1080
  ClientHeight = 352
  ClientWidth = 650
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
    Top = 329
    Width = 650
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxScrollBox1: TcxScrollBox
    Left = 0
    Top = 60
    Width = 650
    Height = 269
    Align = alClient
    TabOrder = 1
    ExplicitTop = 131
    ExplicitHeight = 198
    object cxLabel1: TcxLabel
      Left = 24
      Top = 32
      Caption = #1040#1074#1090#1086#1088':'
    end
    object cxAuthor: TcxLookupComboBox
      Left = 69
      Top = 31
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListSource = dsAuthor
      Properties.OnChange = cxAuthorPropertiesChange
      TabOrder = 1
      Width = 196
    end
    object cxLabel2: TcxLabel
      Left = 303
      Top = 32
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080':'
    end
    object cxBook: TcxLookupComboBox
      Left = 397
      Top = 31
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListSource = dsNameBook
      Properties.OnChange = cxBookPropertiesChange
      TabOrder = 3
      Width = 204
    end
    object cxLabel3: TcxLabel
      Left = 12
      Top = 72
      Caption = 'ISBN:'
    end
    object cxISBN: TcxLookupComboBox
      Left = 69
      Top = 71
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'isbn'
        end>
      Properties.ListSource = dsIzdanie
      Properties.OnChange = cxISBNPropertiesChange
      TabOrder = 5
      Width = 196
    end
    object cxLabel5: TcxLabel
      Left = 16
      Top = 112
      Caption = #1042#1099#1076#1072#1090#1100':'
    end
    object cxPeople: TcxLookupComboBox
      Left = 69
      Top = 111
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListSource = dsPeople
      TabOrder = 7
      Width = 532
    end
    object cxApp: TComboBox
      Left = 397
      Top = 74
      Width = 204
      Height = 21
      TabOrder = 8
      Items.Strings = (
        #1041#1077#1079' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1081
        #1045#1089#1090#1100' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103)
    end
    object cxLabel6: TcxLabel
      Left = 301
      Top = 72
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1082#1085#1080#1075#1080
    end
  end
  object bSave: TdxRibbon
    Left = 0
    Top = 0
    Width = 650
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 6
    TabStop = False
    ExplicitLeft = -344
    ExplicitWidth = 994
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
      Caption = 'Custom 1'
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
          ItemName = 'dxBarButton1'
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
    object bSaveInform: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'C'#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = 'C'#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 512
    Top = 8
  end
  object uqAuthor: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      
        'select distinct a.id, a.surname || '#39' '#39' || a.name || '#39' '#39' || coale' +
        'sce(a.patron, '#39#39') as name'
      'from mm.library l'
      #9'left join mm.book b'
      '    '#9'on b.id = l.book_id'
      '    left join mm.book_author ba'
      '    '#9'on ba.book_id = b.id'
      '    left join mm.author a'
      '    '#9'on a.id = ba.author_id '
      'where l.availability = 2        ')
    Left = 152
    Top = 16
  end
  object uqNameBook: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select  DISTINCT b.id, b.name'
      'from mm.library l'
      #9'left join mm.book b'
      '    '#9'on b.id = l.book_id'
      '    left join mm.book_author ba'
      '    '#9'on ba.book_id = b.id'
      '    left join mm.author a'
      '    '#9'on a.id = ba.author_id '
      'where l.availability = 2   and a.id = :author     ')
    Left = 208
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'author'
        Value = nil
      end>
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
    Left = 376
    Top = 16
  end
  object uqIzdanie: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select l.id, l.isbn '
      'from mm.library l'
      'where l.book_id = :book_id and l.availability = 2')
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'book_id'
        Value = nil
      end>
  end
  object dsAuthor: TUniDataSource
    DataSet = uqAuthor
    Left = 152
    Top = 72
  end
  object dsNameBook: TUniDataSource
    DataSet = uqNameBook
    Left = 208
    Top = 72
  end
  object dsIzdanie: TUniDataSource
    DataSet = uqIzdanie
    Left = 272
    Top = 72
  end
  object dsPeople: TUniDataSource
    DataSet = uqPeople
    Left = 376
    Top = 72
  end
  object uqAll: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.journal')
    Left = 448
    Top = 84
  end
  object uqLib: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.library l'
      'where l.id = :lib_id')
    Left = 536
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lib_id'
        Value = nil
      end>
  end
end
