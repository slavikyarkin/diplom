object Form4: TForm4
  Left = 0
  Top = 185
  BorderStyle = bsToolWindow
  Caption = #1053#1086#1074#1099#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  ClientHeight = 571
  ClientWidth = 994
  Color = clBtnFace
  Constraints.MaxHeight = 600
  Constraints.MaxWidth = 1000
  Constraints.MinHeight = 600
  Constraints.MinWidth = 1000
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
    Top = 571
    Width = 994
    Height = 0
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pNewPeople: TPanel
    Left = 0
    Top = 60
    Width = 994
    Height = 511
    Align = alClient
    AutoSize = True
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object gbGeneralInform: TGroupBox
      Left = 25
      Top = 16
      Width = 950
      Height = 241
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object gbBirth: TGroupBox
        Left = 500
        Top = 37
        Width = 430
        Height = 172
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 31
          Width = 119
          Height = 19
          Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103':'
        end
        object Label6: TLabel
          Left = 24
          Top = 72
          Width = 111
          Height = 19
          Caption = 'E-mail ('#1087#1086#1095#1090#1072'):'
        end
        object Label7: TLabel
          Left = 24
          Top = 112
          Width = 129
          Height = 19
          Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072':'
        end
        object eMail: TEdit
          Left = 200
          Top = 65
          Width = 201
          Height = 27
          TabOrder = 0
          OnKeyPress = eMailKeyPress
        end
        object eNumber: TEdit
          Left = 200
          Top = 104
          Width = 201
          Height = 27
          TabOrder = 1
          OnKeyPress = eNumberKeyPress
        end
      end
      object gbName: TGroupBox
        Left = 20
        Top = 37
        Width = 430
        Height = 172
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 24
          Top = 15
          Width = 35
          Height = 19
          Caption = #1048#1084#1103':'
        end
        object Label2: TLabel
          Left = 24
          Top = 55
          Width = 71
          Height = 19
          Caption = #1060#1072#1084#1080#1083#1080#1103':'
        end
        object Label3: TLabel
          Left = 24
          Top = 95
          Width = 75
          Height = 19
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
        end
        object Label5: TLabel
          Left = 24
          Top = 135
          Width = 35
          Height = 19
          Caption = #1055#1086#1083':'
        end
        object eSurname: TEdit
          Left = 117
          Top = 48
          Width = 284
          Height = 27
          TabOrder = 0
          OnKeyPress = eSurnameKeyPress
        end
        object eParton: TEdit
          Left = 117
          Top = 88
          Width = 284
          Height = 27
          TabOrder = 1
          OnKeyPress = ePartonKeyPress
        end
        object eName: TEdit
          Left = 117
          Top = 9
          Width = 284
          Height = 27
          TabOrder = 2
          OnKeyPress = eNameKeyPress
        end
        object cbSex: TComboBox
          Left = 117
          Top = 129
          Width = 284
          Height = 27
          TabOrder = 3
          Items.Strings = (
            #1052#1091#1078#1089#1082#1086#1081
            #1046#1077#1085#1089#1082#1080#1081)
        end
      end
    end
    object dtpBirth: TDateTimePicker
      Left = 725
      Top = 76
      Width = 201
      Height = 27
      Date = 43404.907636238430000000
      Time = 43404.907636238430000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object gdSecondInforl: TGroupBox
      Left = 25
      Top = 263
      Width = 950
      Height = 224
      Caption = #1042#1090#1086#1088#1080#1095#1085#1072#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = gdSecondInforlClick
      object gbDoc: TGroupBox
        Left = 20
        Top = 32
        Width = 430
        Height = 169
        Caption = #1055#1072#1089#1087#1086#1088#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 24
          Top = 23
          Width = 48
          Height = 18
          Caption = #1042#1099#1076#1072#1085':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 24
          Top = 53
          Width = 94
          Height = 18
          Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 24
          Top = 83
          Width = 138
          Height = 18
          Caption = #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 24
          Top = 113
          Width = 46
          Height = 18
          Caption = #1057#1077#1088#1080#1103':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 230
          Top = 113
          Width = 49
          Height = 18
          Caption = #1053#1086#1084#1077#1088':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dtpEssueDate: TDateTimePicker
          Left = 176
          Top = 46
          Width = 225
          Height = 26
          Date = 43404.907636238430000000
          Time = 43404.907636238430000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object eEssue: TEdit
          Left = 176
          Top = 16
          Width = 225
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = eEssueKeyPress
        end
        object eUnitCode: TEdit
          Left = 176
          Top = 75
          Width = 225
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = eUnitCodeKeyPress
        end
        object eSerial: TEdit
          Left = 117
          Top = 109
          Width = 76
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = eSerialKeyPress
        end
        object eDocNumber: TEdit
          Left = 293
          Top = 109
          Width = 108
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = eDocNumberKeyPress
        end
      end
      object gbAddres: TGroupBox
        Left = 500
        Top = 32
        Width = 430
        Height = 169
        Caption = #1040#1076#1088#1077#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label13: TLabel
          Left = 16
          Top = 23
          Width = 45
          Height = 18
          Caption = #1054#1082#1088#1091#1075':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 16
          Top = 53
          Width = 51
          Height = 18
          Caption = #1056#1077#1075#1080#1086#1085':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 16
          Top = 83
          Width = 45
          Height = 18
          Caption = #1043#1086#1088#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 16
          Top = 113
          Width = 47
          Height = 18
          Caption = #1059#1083#1080#1094#1072':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 16
          Top = 137
          Width = 33
          Height = 18
          Caption = #1044#1086#1084':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 224
          Top = 137
          Width = 27
          Height = 18
          Caption = #1050#1074'.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object eStreet: TEdit
          Left = 120
          Top = 105
          Width = 281
          Height = 27
          TabOrder = 0
          OnKeyPress = eStreetKeyPress
        end
        object lcbTown: TcxLookupComboBox
          Left = 120
          Top = 79
          Constraints.MaxHeight = 21
          Enabled = False
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListSource = dsGetTown
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 286
        end
        object lcbRegion: TcxLookupComboBox
          Left = 120
          Top = 53
          Constraints.MaxHeight = 21
          Enabled = False
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListSource = dsGetRegion
          Properties.OnChange = lcbRegionPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 286
        end
        object lcbDistrict: TcxLookupComboBox
          Left = 120
          Top = 21
          AutoSize = False
          Constraints.MaxHeight = 20
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListSource = dsGetDistrict
          Properties.OnChange = lcbDistrictPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Height = 20
          Width = 286
        end
      end
    end
    object eHouse: TEdit
      Left = 645
      Top = 440
      Width = 73
      Height = 21
      TabOrder = 3
      OnKeyPress = eHouseKeyPress
    end
    object eFlat: TEdit
      Left = 832
      Top = 440
      Width = 94
      Height = 21
      TabOrder = 4
      OnKeyPress = eFlatKeyPress
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 994
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeAccent = rcsaGreen
    ColorSchemeName = 'Colorful'
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
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
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object dxBarManager1: TdxBarManager
    AutoAlignBars = True
    AutoDockColor = False
    AutoHideEmptyBars = True
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
    DockColor = clBtnFace
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 320
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
          ItemName = 'bSaveAll1'
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
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'C'#1086#1075#1083#1072#1089#1080#1077' '#1085#1072' '#1086#1073#1088#1072#1090#1086#1082#1091' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
      CaptionButtons = <>
      DockedLeft = 75
      DockedTop = 0
      FloatLeft = 1018
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'printFRX'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
    end
    object bSaveClose: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
    end
    object bClose: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
    end
    object bSaveAll: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
    end
    object bSaveAll1: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      OnClick = bSaveAll1Click
    end
    object printFRX: TdxBarLargeButton
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
      Category = 0
      Enabled = False
      Hint = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
      Visible = ivAlways
      OnClick = printFRXClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 232
    Top = 8
  end
  object uqAddr: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'SELECT *'
      ' from mm.addr')
    Active = True
    Left = 536
    Top = 8
  end
  object uqDoc: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'SELECT *'
      ' from mm.doc')
    Left = 472
    Top = 8
  end
  object uqPeople: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'SELECT *'
      ' from mm.people')
    Left = 416
    Top = 8
  end
  object uqGetPeople: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.people p'
      
        'where p.name = :p_name and p.surname =:p_surname and p.birth = :' +
        'p_birth; ')
    Active = True
    Left = 712
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_surname'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'p_birth'
        Value = nil
      end>
  end
  object uqLibraryCard: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select *'
      ' from mm.library_card')
    Left = 616
    Top = 8
  end
  object uqGetDistrict: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select id, name'
      ' from mm.district')
    Left = 800
    Top = 8
  end
  object uqGetRegion: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select id, name'
      ' from mm.region where district_id = :p_district_id')
    Left = 928
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_district_id'
        Value = nil
      end>
  end
  object uqGetTown: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select id, name'
      ' from mm.town where region_id = :p_region_id'
      '')
    Left = 864
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_region_id'
        Value = nil
      end>
  end
  object dsGetTown: TUniDataSource
    DataSet = uqGetTown
    Left = 865
    Top = 68
  end
  object dsGetRegion: TUniDataSource
    DataSet = uqGetRegion
    Left = 929
    Top = 68
  end
  object dsGetDistrict: TUniDataSource
    DataSet = uqGetDistrict
    Left = 801
    Top = 68
  end
  object uqGetDoc: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.doc d'
      'where d.issueed_by = :issueed_by '
      '  -- and d.unit_code = :d.unit_code '
      '   and d.series = :series '
      '   and d.number = :number')
    Active = True
    Left = 712
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'issueed_by'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'series'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'number'
        Value = nil
      end>
  end
  object uqGetAddr: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select * from mm.addr a'
      'where a.street = :street'
      '  and a.house = :house'
      '  and a.district_id = :district_id'
      '  and a.region_id = :region_id'
      '  and a.town_id = :town_id'
      '  and a.flat = :flat')
    Active = True
    Left = 536
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'street'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'house'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'district_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'region_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'town_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flat'
        Value = nil
      end>
  end
  object perData: TfrxReport
    Version = '5.6.11'
    DataSetName = 'frxDataSet1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43615.819814317100000000
    ReportOptions.LastChange = 43615.897811504600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 312
    Datasets = <
      item
        DataSet = fAddr
        DataSetName = 'fAddr'
      end
      item
        DataSet = fDataset1
        DataSetName = 'fDataset1'
      end
      item
        DataSet = fDoc
        DataSetName = 'fDoc'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ResetPageNumbers = True
      object Memo2: TfrxMemoView
        Left = 102.047310000000000000
        Top = 7.559060000000000000
        Width = 487.559370000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1057#1054#1043#1051#1040#1057#1048#1045' '
          #1053#1040' '#1054#1041#1056#1040#1041#1054#1058#1050#1059' '#1055#1045#1056#1057#1054#1053#1040#1051#1068#1053#1067#1061' '#1044#1040#1053#1053#1067#1061' ')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 26.456710000000000000
        Top = 68.031540000000000000
        Width = 668.976810000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Memo.UTF8W = (
          '[fDataset1."surname"] [fDataset1."name"] [fDataset1."patron"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end
          item
          end>
      end
      object Memo4: TfrxMemoView
        Top = 71.811070000000000000
        Width = 26.456710000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1071', ')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Top = 105.826840000000000000
        Width = 79.370130000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1072#1089#1087#1086#1088#1090)
        ParentFont = False
      end
      object frxDBDataset1series: TfrxMemoView
        Left = 79.370130000000000000
        Top = 109.606370000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        DataSet = fDataset1
        DataSetName = 'fDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Memo.UTF8W = (
          '[fDoc."series"] [fDoc."number"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
      object Memo5: TfrxMemoView
        Left = 207.874150000000000000
        Top = 105.826840000000000000
        Width = 68.031540000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object frxDBDataset1issueed_by: TfrxMemoView
        Left = 275.905690000000000000
        Top = 109.606370000000000000
        Width = 427.086890000000000000
        Height = 18.897650000000000000
        DataSet = fDataset1
        DataSetName = 'fDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Memo.UTF8W = (
          '[fDoc."issueed_by"]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Top = 173.858380000000000000
        Width = 714.331170000000000000
        Height = 98.267780000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          
            '     '#1044#1072#1102' '#1089#1074#1086#1077' '#1089#1086#1075#1083#1072#1089#1080#1077' '#1085#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1091' '#1084#1086#1080#1093' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093', '#1086#1090 +
            #1085#1086#1089#1103#1097#1080#1093#1089#1103' '#1080#1089#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1086' '#1082' '#1087#1077#1088#1077#1095#1080#1089#1083#1077#1085#1085#1099#1084' '#1085#1080#1078#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1103#1084' '#1087#1077#1088#1089#1086#1085#1072#1083 +
            #1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093': '#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086'; '#1087#1086#1083'; '#1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103'; '#1090#1080#1087' '#1076#1086#1082 +
            #1091#1084#1077#1085#1090#1072', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1077#1075#1086' '#1083#1080#1095#1085#1086#1089#1090#1100'; '#1076#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097 +
            #1077#1075#1086' '#1083#1080#1095#1085#1086#1089#1090#1100'; '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086'.')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Top = 136.063080000000000000
        Width = 177.637910000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1072#1076#1088#1077#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080)
        ParentFont = False
      end
      object fAddrstreet: TfrxMemoView
        Left = 177.637910000000000000
        Top = 139.842610000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        DataSet = fAddr
        DataSetName = 'fAddr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Memo.UTF8W = (
          '[fAddr."street"] [fAddr."house"] [fAddr."flat"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
      object Memo8: TfrxMemoView
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        Height = 385.512060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          
            '     '#1053#1072#1089#1090#1086#1103#1097#1077#1077' '#1089#1086#1075#1083#1072#1089#1080#1077' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1084#1085#1086#1081' '#1085#1072' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1080#1077' '#1076#1077 +
            #1081#1089#1090#1074#1080#1081' '#1074' '#1086#1090#1085#1086#1096#1077#1085#1080#1080' '#1084#1086#1080#1093' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093', '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099' ' +
            #1076#1083#1103' '#1076#1086#1089#1090#1080#1078#1077#1085#1080#1103' '#1091#1082#1072#1079#1072#1085#1085#1099#1093' '#1074#1099#1096#1077' '#1094#1077#1083#1077#1081', '#1074#1082#1083#1102#1095#1072#1103' ('#1073#1077#1079' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103') '#1089 +
            #1073#1086#1088', '#1089#1080#1089#1090#1077#1084#1072#1090#1080#1079#1072#1094#1080#1102', '#1085#1072#1082#1086#1087#1083#1077#1085#1080#1077', '#1093#1088#1072#1085#1077#1085#1080#1077', '#1091#1090#1086#1095#1085#1077#1085#1080#1077' ('#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077 +
            ', '#1080#1079#1084#1077#1085#1077#1085#1080#1077'), '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077', '#1087#1077#1088#1077#1076#1072#1095#1091' '#1090#1088#1077#1090#1100#1080#1084' '#1083#1080#1094#1072#1084' '#1076#1083#1103' '#1086#1089#1091#1097#1077#1089#1090#1074 +
            #1083#1077#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1081' '#1087#1086' '#1086#1073#1084#1077#1085#1091' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1077#1081', '#1086#1073#1077#1079#1083#1080#1095#1080#1074#1072#1085#1080#1077', '#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1080 +
            #1077' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093', '#1072' '#1090#1072#1082#1078#1077' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1080#1077' '#1083#1102#1073#1099#1093' '#1080#1085#1099#1093' '#1076#1077#1081#1089#1090#1074#1080#1081 +
            ', '#1087#1088#1077#1076#1091#1089#1084#1086#1090#1088#1077#1085#1085#1099#1093' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1084' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086#1084' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088 +
            #1072#1094#1080#1080'.'
          
            #1071' '#1087#1088#1086#1080#1085#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085', '#1095#1090#1086' '#1076#1072#1085#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1075#1072#1088#1072#1085#1090#1080#1088#1091#1077#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1091' '#1084#1086#1080 +
            #1093' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1084' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089 +
            #1090#1074#1086#1084' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1082#1072#1082' '#1085#1077#1072#1074#1090#1086#1084#1072#1090#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1084', '#1090#1072#1082' '#1080' '#1072#1074#1090#1086#1084#1072 +
            #1090#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1084' '#1089#1087#1086#1089#1086#1073#1072#1084#1080'.'
          
            #1044#1072#1085#1085#1086#1077' '#1089#1086#1075#1083#1072#1089#1080#1077' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1076#1086' '#1076#1086#1089#1090#1080#1078#1077#1085#1080#1103' '#1094#1077#1083#1077#1081' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1087#1077#1088#1089#1086#1085#1072#1083 +
            #1100#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1080#1083#1080' '#1074' '#1090#1077#1095#1077#1085#1080#1077' '#1089#1088#1086#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080'.'
          
            #1044#1072#1085#1085#1086#1077' '#1089#1086#1075#1083#1072#1089#1080#1077' '#1084#1086#1078#1077#1090' '#1073#1099#1090#1100' '#1086#1090#1086#1079#1074#1072#1085#1086' '#1074' '#1083#1102#1073#1086#1081' '#1084#1086#1084#1077#1085#1090' '#1087#1086' '#1084#1086#1077#1084#1091'  '#1087#1080#1089 +
            #1100#1084#1077#1085#1085#1086#1084#1091' '#1079#1072#1103#1074#1083#1077#1085#1080#1102'.  '
          
            #1071' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102', '#1095#1090#1086', '#1076#1072#1074#1072#1103' '#1090#1072#1082#1086#1077' '#1089#1086#1075#1083#1072#1089#1080#1077', '#1103' '#1076#1077#1081#1089#1090#1074#1091#1102' '#1087#1086' '#1089#1086#1073#1089#1090#1074#1077#1085 +
            #1085#1086#1081' '#1074#1086#1083#1077' '#1080' '#1074' '#1089#1074#1086#1080#1093' '#1080#1085#1090#1077#1088#1077#1089#1072#1093'.'
          ' ')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Left = 102.047310000000000000
        Top = 733.228820000000000000
        Width = 94.488250000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 275.905690000000000000
        Top = 733.228820000000000000
        Width = 385.512060000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '_______________ /_______________/'
          
            '                                                                ' +
            '                                      '#1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072' '#1087#1086#1076#1087#1080#1089#1080)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 351.496290000000000000
        Top = 755.906000000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          ' '#1055#1086#1076#1087#1080#1089#1100'                         ')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 461.102660000000000000
        Top = 755.906000000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072' '#1087#1086#1076#1087#1080#1089#1080)
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 37.795300000000000000
        Top = 733.228820000000000000
        Width = 64.252010000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1044#1072#1090#1072':')
        ParentFont = False
      end
    end
  end
  object fDataset1: TfrxDBDataset
    UserName = 'fDataset1'
    CloseDataSource = False
    DataSet = uqGetPeople
    BCDToCurrency = False
    Left = 472
    Top = 312
  end
  object fDoc: TfrxDBDataset
    UserName = 'fDoc'
    CloseDataSource = False
    DataSet = uqGetDoc
    BCDToCurrency = False
    Left = 272
    Top = 312
  end
  object fAddr: TfrxDBDataset
    UserName = 'fAddr'
    CloseDataSource = False
    DataSet = uqGetAddr
    BCDToCurrency = False
    Left = 560
    Top = 320
  end
end
