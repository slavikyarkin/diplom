object Form4: TForm4
  Left = 0
  Top = 185
  Caption = #1053#1086#1074#1099#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  ClientHeight = 561
  ClientWidth = 984
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
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 984
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
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
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 561
    Width = 984
    Height = 0
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxDBComboBox1: TcxDBComboBox
    Left = 656
    Top = 383
    TabOrder = 2
    Width = 121
  end
  object pNewPeople: TPanel
    Left = 0
    Top = 60
    Width = 984
    Height = 501
    Align = alClient
    AutoSize = True
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 155
    ExplicitHeight = 406
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
        end
        object eNumber: TEdit
          Left = 200
          Top = 104
          Width = 201
          Height = 27
          TabOrder = 1
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
        end
        object eParton: TEdit
          Left = 117
          Top = 88
          Width = 284
          Height = 27
          TabOrder = 1
        end
        object eName: TEdit
          Left = 117
          Top = 9
          Width = 284
          Height = 27
          TabOrder = 2
        end
        object cbSex: TComboBox
          Left = 117
          Top = 129
          Width = 284
          Height = 27
          TabOrder = 3
          OnChange = bSaveAllClick
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
      Top = 271
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
        end
      end
    end
    object eHouse: TEdit
      Left = 645
      Top = 440
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object eFlat: TEdit
      Left = 832
      Top = 440
      Width = 94
      Height = 21
      TabOrder = 4
    end
  end
  object lcbDistrict: TcxLookupComboBox
    Left = 645
    Top = 380
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListSource = dsGetDistrict
    Properties.OnChange = lcbDistrictPropertiesChange
    TabOrder = 4
    Width = 281
  end
  object lcbRegion: TcxLookupComboBox
    Left = 645
    Top = 410
    Enabled = False
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListSource = dsGetRegion
    Properties.OnChange = lcbRegionPropertiesChange
    TabOrder = 5
    Width = 281
  end
  object lcbTown: TcxLookupComboBox
    Left = 645
    Top = 440
    Enabled = False
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListSource = dsGetTown
    TabOrder = 6
    Width = 281
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bSaveAll'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
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
      OnClick = bSaveAllClick
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
end
