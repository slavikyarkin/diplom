object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1052#1086#1080' '#1076#1072#1085#1085#1099#1077
  ClientHeight = 421
  ClientWidth = 479
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 155
    Width = 253
    Height = 243
    Align = alLeft
    Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 1
    ExplicitTop = 131
    ExplicitHeight = 267
    object teSurname: TcxDBTextEdit
      Left = 98
      Top = 20
      DataBinding.DataField = 'surname'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 0
      Width = 121
    end
    object teName: TcxDBTextEdit
      Left = 98
      Top = 50
      DataBinding.DataField = 'name'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 1
      Width = 121
    end
    object tePatron: TcxDBTextEdit
      Left = 98
      Top = 80
      DataBinding.DataField = 'patron'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 2
      Width = 121
    end
    object lSurname: TcxLabel
      Left = 40
      Top = 20
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
      Transparent = True
    end
    object lName: TcxLabel
      Left = 65
      Top = 50
      Caption = #1048#1084#1103':'
      Transparent = True
    end
    object lPatron: TcxLabel
      Left = 35
      Top = 80
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      Transparent = True
    end
    object lSex: TcxLabel
      Left = 65
      Top = 110
      Caption = #1055#1086#1083':'
      Transparent = True
    end
    object cbSex: TcxDBLookupComboBox
      Left = 98
      Top = 110
      DataBinding.DataField = 'sex'
      DataBinding.DataSource = dsPeopleInfo
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSex
      TabOrder = 7
      Width = 121
    end
    object deBirth: TcxDBDateEdit
      Left = 98
      Top = 140
      DataBinding.DataField = 'birth'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 8
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 4
      Top = 140
      Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103':'
      Transparent = True
    end
    object teEmail: TcxDBTextEdit
      Left = 98
      Top = 170
      DataBinding.DataField = 'email'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 10
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 56
      Top = 170
      Caption = 'E-mail:'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 53
      Top = 200
      Caption = #1053#1086#1084#1077#1088':'
      Transparent = True
    end
    object teNumber: TcxDBTextEdit
      Left = 98
      Top = 200
      DataBinding.DataField = 'number'
      DataBinding.DataSource = dsPeopleInfo
      TabOrder = 13
      Width = 121
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 479
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
    Top = 398
    Width = 479
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
  object GroupBox2: TGroupBox
    Left = 253
    Top = 155
    Width = 226
    Height = 243
    Align = alClient
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1093#1086#1076#1072
    TabOrder = 3
    ExplicitTop = 131
    ExplicitHeight = 267
    object cxLabel4: TcxLabel
      Left = 24
      Top = 20
      Caption = #1051#1086#1075#1080#1085':'
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 16
      Top = 50
      Caption = #1055#1072#1088#1086#1083#1100':'
      Transparent = True
    end
    object teLogin: TcxDBTextEdit
      Left = 68
      Top = 20
      DataBinding.DataField = 'login'
      DataBinding.DataSource = dsIdentification
      TabOrder = 2
      Width = 121
    end
    object tePassword: TcxDBTextEdit
      Left = 67
      Top = 47
      DataBinding.DataField = 'password'
      DataBinding.DataSource = dsIdentification
      Properties.EchoMode = eemPassword
      TabOrder = 3
      Width = 121
    end
    object bPassword: TcxButton
      Left = 67
      Top = 73
      Width = 121
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 4
      OnClick = bPasswordClick
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
      FloatLeft = 866
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bSave'
        end
        item
          Visible = True
          ItemName = 'bSaveClose'
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
    object bSaveClose: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000020744558745469746C65005361766520416E6420436C6F73653B5361
        76653B436C6F73653B2A84087B0000062449444154785EC5965D8C546719C77F
        E79CD9EECE5274091F41D822A0829662DAD0D40A4662AAF1C20B2F6CBC5193D6
        34C40B6AD2504B89D1AA6D1A2FB4F8D1D80B156F342AA9D4960B4D2136A1B1B6
        442D9654545C286CA16C03CBB23B333B73DEE7437BDE737292E92E9B269ABE93
        37CF799ECCE4FF9FFFF3751AEECEDB791AC0DB4F204912DECA7177CE7FFB413C
        4918BDFF6B2990C4BBE0A9800C3077F7C63C5F588891ADDEF3F514C8C6BEF5C0
        A1469A6E7707F0E2437C04AF3C07AF8C13D48EBCFFA1876F03A4D1079E01693F
        817EBF568C81C46CFBF24F6DAD406BFAEE5083476B3176F6C9673F5AE2D0801A
        FCCB0FEE7BA03130B0072773E0E5A347B9726992D135D771EBAD37E1EE981966
        8E9A11428ECCFC1B54E88E9DE2D597C678E1D77F60ED4D1BD872FB7600FE7AE0
        08A7FFFC4F6EF9ECC718DDBC1EDC9120F413280259A3B1E723376FCA9234214B
        539EFBDDEF59B428A7D91CE2F6CF7D264A5ACAE9EEF47A5DE4070FE1228C1F3B
        C9B16313AC7B741F179F3AC00BBF384492264CADDAF4DFD87D1CFBFE77701346
        6F780FD21380A45F81D4D43273383BFE3A21680584B915B626E09881A921331D
        3C08477F7998DB0E1F62F1B2255CFEC03A5EDCFB280037DEB393772E1E64ED0F
        1FE1998F7F82D5DF5C4BAFDDEE27108FA9E26ACCCC74181C1CC089C02212C1AB
        5B125355A6CF9E233F7F8E751FBA818B4FEC67C5DD3B49B2841B77ED04872523
        C30C0D648CFF763FEB6EB99ED97F9D60EA95D7E624909829E28A9B8267110847
        5530F79A84D536EFE6E417CEB371FD30FF387298E3A4ACDFB18391C54D3C0153
        38FED88F681F799AF76D18A17BE60C61D6E753C05051D40D9328B73B88680D5A
        5F421EC87B016D75E8BD760199BAC274A78769F55B075266DE884D4D929F9BC5
        54093D9F470155542209CB14CC8BAB229895840A5F09BD9C4EA74BE805747696
        932726E86CFB341B3E7F276A467328034F687785777DE14E4E4E77183BF204EF
        5E3948DE4BE72CC24454905807B1F0122FAC4840448B7F1C42C0D470A3209BF7
        7A68BBC5E4A50E9FDCBD936EA3C9F060C6F8CF7E02C0E81D77014DB6EFBE9BA7
        9FFA15AB9724E47963FE221415D4145CC180B2085B57DA50CD39379C147325CF
        059969B371F375FCEDBE7BD9F6BDEFF2F7C7F63179F03738A0DD59AEBFEB8BFC
        F1DE5DBC77C30A74E622A16773CE81444550D598027596AD5CC1EB172620EDB2
        7BD7FD3875FE712FD4F8525790569BA6B4F0C9D31CDCBA8DA5CBDFC1AAA543B8
        3B134FEEE7E0BE9FB266CD5206A585747342E02A4518B420D1CB03376FFD3094
        7300B3288846DFDCE97666197FF5145B5A6DC2A5CB0C2E1AE6839B5711A65B74
        2E9C0785E52323AC5CB68CEEC5497AED0EA821219D731D2712843C44155AAD76
        AC760033D42129C8D42D18F22E17175DCBE327A6C017038E8F4D15161617C627
        14A70D5CC38A560F27A363F21C90BF590191527EADFB1D708F455778E6180E1E
        77C1994D5B38A52182D58B07AF1720D70E3739737A8CA3CF3EBE1198015AC0EC
        9B151041424045AB96AB41CBBC1BA53527EFCC92A519C91BB7C2C66BE54A52D9
        C0108D8141804BC03410DC9D39DA501151B454402494F98F2AD463D8E274C4F1
        14704A62F59826A1F4936A832EFC4A662A0409A84A3901851FEFFD0A6E40C489
        2448622BD68A578A61F5EAE78E1D5F056A027D2F3C3E671B4A10540CC7632A0C
        A41EADE015112A4588F0959FE058614D9534CD308BEA01C9D5148823560433C1
        2D2AE2D4C515A52E01EB9C637D4A506F4B12D2B2A8174C411CC59A6B54C01C11
        ADF3DEFF8645AD00156845B214580B051A718F9851D5DABC044C842079D505A8
        48253B7507805301438D5FC60BF07AB07923D6C642294800B4EA028B92C51424
        1886D7607DD6F13A0675BC2C66C77CE114D4CB284861AB2ED8F7FC392EB773AC
        1C4066A01641D5887173D4CBE7321503CD455181229E600B10F088AF2A413255
        050751A531D8E41A1BC00CCCBD00CF0CD49DD41CAB9ED5712A720E6E9869EC08
        55701740019F8B8001A1DB6DEF7DF9F84BF73864E0341A0D5EFCCB2B5C99EE96
        E9B1B8B0D49068CB94C58A3775CC621C80768B566B06DC3DCF3B8F003960F329
        901FFBD3816F000FD77192E79FF9397D2701DE4ACC01057A40B724E073D58094
        EC7A75BBFCCF8E97C076B51A0030FEBFC7FB03FF010275521DB37E416E000000
        0049454E44AE426082}
      OnClick = bSaveCloseClick
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
    object bSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000B744558745469746C6500536176653BF9E8F9090000054549444154
        785EC557BF8B5C5514FEEE7D33B3EE6E36B1D02882853F1A41D046540C1241B4
        B5B3482C36601A41831048A148F01FD022B516366A21181051D0C2422DACC222
        61A322E81A22C4EC8FECECBC7B7E48BEC39DF774D80109EAEE5CCEBB770EE73B
        E73BDFB96F37B93BFECF9F34BB47BAA958F3977796AB0F860CA0A1E59A097EB3
        E0155801080003E0831E40F3F29BEFBC315A583893726E524AC8D9F1F3C575EC
        6C6F33DF83CB4B78F8A10760E630535A3583DD586AD01BCB14A60E55C1DADA1A
        960E2EC31D70A59F8A94F73FF9F0DC090065268166343A7DE491079B9C123C03
        C3A6C1D98FCE6379296369F900F2CA019C5C7D2EF87300B41E00A0EDCE0C7861
        F5149E7DFA28133235987BF3D9E75F3E0FE064B000F413C86636823BBEFF7103
        9680C5E1B032171F37A83936AEEE76C0B48E13C78E47E752B87F7CFE03FA5EB8
        7009A24AC6EE387C1BCCADB6195D02B1928B43CC482B6B1A3488CA12AD9A41D4
        508A72DF4F20E5014C17909070F7BDF7A12D06538565836BF88B29FA629F49C0
        5C604C4019C82A403890CA228622DA07E773CA0D9AD420370DCC9C3E2CC4127D
        61606CB72AFE590628149510514A0E3705D10912622BD23160D6B190F3008366
        C444CCC2A702BA1B1719F1FD13486ED102332103AC8EBF011209284A11021BC0
        24C0041A0C4723348301D40D93220474846ECC13AD9B55BCD90454850CA81852
        4E5013A0A39994B645A2BA6E0268536AB0B872887B53431B0C80076422CE1DB3
        0CD4839863D5108D27B6C2BD5B95DA5622306BF10879E6EC59DC7EEB52F83942
        2766A45C482199658C7D5B605A0820AAC89618E0F05D77E2F2AF1BD8D9B98695
        8382574FBD0603A924D5608F09C4E7F8CE09B872E810CC8DBE6CAF1A8BAA7833
        09882844249848405B5A3CFED493481C4320E4CE0F0113590136AF5D45BBBB0B
        EFB342C11134C4EDCED6CE6320FA5F04AAC2FDD6B620F7D2F5C427027B02ADAA
        E28F2BBFD3A10A13912DAC6A84E318F131670A28C222A15EB7B8AFAC03EFD266
        1087A784EB9B9BEC710AB0AA09520FAFAE46ABB5553DCCBFB6403534D00A9013
        C0C084428A2D12174F48F378E73ADC957BC0C31F98566EFD6B5C0566BAFF1458
        2928A54044812682EDEE6C414B81A78EDAA8D2216D8148A1C098265131BDA472
        CE5858589CEE952FA5392D10DE01857D8502098632D9C3BBE75E8F96047C7D3F
        B09AC0440566325507C7564F63301CC5182B606270DF7F0A083E29424BB1C121
        25F420BD2ADDC1A5D6ED031EB1E7D4F0EA65C52187F92DE0A1A942DBB8E9728E
        40E63AADFA8BAF7F22A89A626B6B0F6D89AB59D598A888D2BE78FC31C04126CD
        AC261963A8B36398FA53D096021381A6CA8A4C031C7DF49E182FEB546E7D061C
        DD9B2F318100E4B9431A5E53FBBE0B20F1A2E14D9852CD5AA7E2FAF4AB75EEB7
        775A4C4461A26480D51783A8F0E27969F54865607A2BAA0359C9C03C110A8417
        91C641ED1BA2D2679EB81FAC41630AE2C3EA7A62AC3D07935123207D285AC47E
        760CA90183460B6A30F6D7ADCA9F60F5B12FBE2E21EE5358115888B713ADEDFF
        1711AA065404E869E0BDEF7EC3D6B840D4312E420DA8D5A02008E7DC416BD329
        316A25D5C41573FF222245CAACAB58A28F79B488810DA1E2183546F0C6007547
        2638E299ADE9C693FA5183A504D497D7DF4498C3F0545DCDD494A04E914542D1
        4BA78DEA120C209D5627C108CE67207C9C3D9FF6AA8EA4001062760C305E3B1E
        6FBF7D69FDE22BC9916BA06193F1ED373F6032919810E9FE09916A4599608C9D
        134835D695CBBFA0C7B9B5EDF5B7004C88D99DD30E01DCC2D5BF1FE6AFF40FBE
        F7A81C7B00C6005A00DED74001A0F12532FE9D1F8FCAA1F3FE3BFE2F3E5E377F
        02C73EB2E2D2D4F54C0000000049454E44AE426082}
      OnClick = bSaveClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 384
  end
  object uqPeopleInfo: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select *'
      '  from mm.people'
      ' where id = :p_people_id')
    Left = 200
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsPeopleInfo: TUniDataSource
    DataSet = uqPeopleInfo
    Left = 256
    Top = 8
  end
  object uqSex: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select 1 as id, '#39#1052#1091#1078#1089#1082#1086#1081#39' as name'
      ''
      'union all'
      ''
      'select 2, '#39#1046#1077#1085#1089#1082#1080#1081#39)
    Left = 184
    Top = 64
  end
  object dsSex: TUniDataSource
    DataSet = uqSex
    Left = 216
    Top = 64
  end
  object uqIdentification: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select *'
      '  from mm.identification'
      ' where people_id = :p_people_id')
    Left = 264
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_people_id'
        Value = nil
      end>
  end
  object dsIdentification: TUniDataSource
    DataSet = uqIdentification
    Left = 320
    Top = 80
  end
end
