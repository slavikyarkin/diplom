object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1052#1086#1080' '#1076#1072#1085#1085#1099#1077
  ClientHeight = 498
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 155
    Width = 871
    Height = 134
    Align = alTop
    Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 6
    object teSurname: TcxDBTextEdit
      Left = 78
      Top = 20
      TabOrder = 0
      Width = 121
    end
    object teName: TcxDBTextEdit
      Left = 78
      Top = 50
      TabOrder = 1
      Width = 121
    end
    object tePatron: TcxDBTextEdit
      Left = 78
      Top = 80
      TabOrder = 2
      Width = 121
    end
    object lSurname: TcxLabel
      Left = 20
      Top = 20
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
      Transparent = True
    end
    object lName: TcxLabel
      Left = 45
      Top = 50
      Caption = #1048#1084#1103':'
      Transparent = True
    end
    object lPatron: TcxLabel
      Left = 15
      Top = 80
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      Transparent = True
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 871
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
    ExplicitWidth = 640
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
    Top = 475
    Width = 871
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 457
    ExplicitWidth = 640
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
      FloatLeft = 866
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
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqPeopleInfo: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select *'
      '  from mm.people'
      ' where id = :p_people_id')
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
end
