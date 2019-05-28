object Form17: TForm17
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
  ClientHeight = 545
  ClientWidth = 839
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
    Width = 839
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
    ExplicitWidth = 650
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
    Top = 522
    Width = 839
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
    ExplicitTop = 467
    ExplicitWidth = 650
  end
  object H: TcxGrid
    Left = 0
    Top = 155
    Width = 839
    Height = 367
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 232
    ExplicitWidth = 250
    ExplicitHeight = 200
    object HDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = HDBTableView1login
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object HDBTableView1login: TcxGridDBColumn
        Caption = #1051#1086#1075#1080#1085
        DataBinding.FieldName = 'login'
        Width = 120
      end
      object HDBTableView1date_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
        Width = 80
      end
      object HDBTableView1date_of_return: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
        DataBinding.FieldName = 'date_of_return'
        Width = 80
      end
    end
    object HLevel1: TcxGridLevel
      GridView = HDBTableView1
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
    object bClose: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000029744558745469746C650052656D6F76653B44656C6574653B426172
        733B526962626F6E3B5374616E646172643B635648300000075549444154785E
        CD977B50145716C61B22212BC4C148802C0803828F1194B782E2A0C843015101
        5D175913A3A220441D501010D441E4A988318115105FA408A6203E8201411E22
        AE2042A2154908E003301044E34A2A1BFADB7B879ED801DB72F3CFA6AB7E75BB
        EED439DF77CFDC7BBA9B01F07FE5CF6140E05221A87290FBFFE952191D3F3A87
        D28090B01A419D434DC08890F86B84D7097FE150E7E654040C8C0A56AF5AB932
        AC2369FF604752E260A5BFFF6632F78632C9CDD5AB194AD3EA8061021428E3C7
        50D132DFE5A16D0909836D72F960E9D2A55BC9DC58EE371521034AF1372EAFF0
        8BBC7B3815FFB9DFACA0E35032CA7D7D6534B1D2C450CFD78C826ECA577CF1B1
        177C7CB6B51F48C42F1D8DF8A5BD01DF93FB0B4B7CA2499C86D2849081D72B7C
        7DB77512F19F6FD5E271692106CE9EC2CFCD9568CF4846A9CFEF57F26B570BF3
        EB8316BEB8C6E75EDEB2B6F4443CBBFE25FA4E7C88DEEC143CAD2E465BDA3E9C
        F3F48AE02AA9FA2203AAB3C462CDD6F8F8C1678DE5182839894745B90AFA8B72
        F0ACA10C34F1594F6F197F257CF1E2C59EB2EF52E4F8777D297AF332D0732411
        0F0F27A03B632F06BE388DDB51D183D3F5F4445C15471978CDD36CB256DDBA0D
        8FFB8AF2F16341D6734E7F8CBE531F91C41740058A172DA6263469C53834CFB8
        2F0A6F4DDA8BA757CEA3F7683ABA33A9F01E741F8847576A2CEE2545A376EDFA
        A75243A30942065409EA472CACDEAD0A0C18EA3D9689DE7C8E6387F0431E2503
        3FD594A075FF1E7CEAEA114E62B42885AEEE11771277E3A7EA123CCC4A41D781
        DD78901E870744F87ED24EDCDD17894B3E5E43072533DFE7F691EACB36E1D883
        D3CC3756AE5A39D4939D8A87FF4CC3C36C4A2A7AB2081F27E3C9A5227C238FC3
        89F92E51279C5DA26ECB77E149E567E8FE30110FD276E15E720CEEED27C2093B
        D0B9371C173D3D86924CA786108D37096A429B90BF993493274D092E5BBE6CA8
        EBF03E45623A7691B2761D2264C8F188FCA7B7E2A3150C9415D2395A66C56AEF
        CAB7A3734F383AE2B6E2BCEB42562E36A5C7781C5FFC850672CC244A136AD4ED
        3E23D3E02FBCBD86EEA5C7E33E252D0EF753C90A538657F963F131F49F3B49E6
        E2C84AB7A3632F118DDF867622DC161D861267291BF757A3502220E2F68AEA4B
        0D648B27334F2ACFF04D8C8B3710879CF3701FEA4C8CC25D422759616742243A
        E45430021DBB6568A7A2B15BF07D4C18110EC5773B36A1688E231BF5B67E18DD
        237CF1C3FAC6C29DF088810933F065013370B1E07726A275F543CF38CC62EF84
        04E2DB8820B46DDF84B6A810B429052336A275EBFBB813B606B7D7F9E313CB99
        6CC45BBA1F8C14EF2BC9630EEA1A081B38F48E21D37FEE38219FE93F9BFFDBC9
        2068CBB4F56485D6566CCB4A0F7C4559E18E16FF619AFDDDD0E2E786663F579C
        924C63378B26D086A3C36B3A2ABD85590C256D829EB081F3CEAE4CDF674799BE
        3347F90F259AE4ED0C2BFB5D756B56E3EBC0A5B8B9DC9563219A96B9A069B90B
        372E44F5DFFC916A61134F627479474EA5E764264349D1D21136F0F95C17E687
        82237C715ABEF19996F63BAFAE5F8B8EA42834AFF2C48DA50B70C387321F8D4B
        E6E386B73319A568F096E2DB9DC1A85913887473DB18123B81A0AE34D19593CA
        7C6A3B57D840B183335F9C06BE7570866D74ED7BFF40BB3C1C4D2B3CD0E02525
        CC2338A1C1D309D73DE7E1FA62A7E72C9A8B6FC2D7A32A6015522456B1D404FF
        49FA89B5A3A08151E2E9E6D631D58101688BDB82265F57FC8B2457E03107D728
        EE14470E075C737340BDDB6CD4BBCEC6ADD035A858E18FC4293376D13DC49910
        3A86A3C553255631A41BA29594B491949C2427D0E40E0A81AB0B67236F92314B
        A95B300B575DEC87596047463BD491B1256815CA962D83DCD43C8EEE239E09E1
        C731154F9E6A1973C9CF9794720329B5334DAC4491F88AB31DF24CC4EC060D51
        2CE598D924B6566A4BE66D08D6B822B546ED3C1B82356EBEE78B522F2FEC3199
        AE34A13ED200FF39F066829985ECA2F712DCFEE05D5C5BE444C48613D74A4972
        420D499C6B6CC486686AED2031FA94604DADC83CD3496CF55C4BD4FCC64C05D5
        7366A0F1EFDE38EBE28658F1D4EDB42B2A1FE5230DA811B44FDB48079A830250
        4FFEE35A272BD428B0A4906496C8111B2AC57508633974A8895C1363F6B28305
        AA08976753CC7179D630F5BEEEC8B7707CCC1D4F354103C72DE7F4D62D9612B1
        61F7D58E140BD0C4394613592A440579AF67147AAFB3495314956B2C662BEC25
        A8B423D84FC3F0FD3494DB99235762DF4763850CD044E3220D2707155AD9B355
        0ED4F97454122A08470D0D468AF35FB755B939DD8D1AA29DB96223B6DC660A2E
        112AACC9483839C582DDAA671C4CDBB3F2480A6D42ED087DD32D0516566C998D
        04E5B61264E9EBBF50BC699D3FD3B4D68F1961428F9AC89E3891BD3873324A67
        98E1B8D974364C472CE3CAAF2EF842C26FBDB2774C367E24B6E823F407698836
        8FECED49226D86CFC84AACD71085654E943CCA3490F485EA18858C6CCDAFD288
        443488438BCE097C9C08C58F27E8718CE777C357FD321AC37BE91CF312F13F1A
        FF0ADF867C84AF3F1AFFE7F83AFE2FD99CCA83727FB1B90000000049454E44AE
        426082}
      OnClick = bCloseClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqDetail: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select i.login '
      '     , j.date_of_issue'
      '     , j.date_of_return'
      '  from mm.journal j'
      '       left join mm.identification i'
      '         on i.people_id = j.people_id'
      ' where j.library_id = :p_library_id')
    Active = True
    Left = 184
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_library_id'
        Value = nil
      end>
  end
  object dsDetail: TUniDataSource
    DataSet = uqDetail
    Left = 232
    Top = 8
  end
end
