object Form20: TForm20
  Left = 0
  Top = 0
  Caption = #1050#1085#1080#1075#1086#1086#1073#1084#1077#1085
  ClientHeight = 547
  ClientWidth = 812
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
    Width = 812
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
    Top = 524
    Width = 812
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
    Width = 812
    Height = 369
    Align = alClient
    TabOrder = 2
    ExplicitTop = 131
    ExplicitHeight = 393
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAnnouncement
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1login
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1login: TcxGridDBColumn
        Caption = #1051#1086#1075#1080#1085
        DataBinding.FieldName = 'login'
        Width = 80
      end
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
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
      object cxGrid1DBTableView1announcement_name: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'announcement_name'
        Width = 80
      end
      object cxGrid1DBTableView1comm: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        DataBinding.FieldName = 'comm'
        Width = 200
      end
      object cxGrid1DBTableView1date: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        DataBinding.FieldName = 'date'
        Width = 80
      end
      object cxGrid1DBTableView1case: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'case'
        Width = 80
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
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 846
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bAdd'
        end
        item
          Visible = True
          ItemName = 'bPeopleAnn'
        end
        item
          Visible = True
          ItemName = 'bBookInfo'
        end
        item
          Visible = True
          ItemName = 'bRefresh'
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
    object bAdd: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000023744558745469746C65004164643B46696C653B41646446696C653B
        426172733B526962626F6E3B15DCAA0A000006C249444154785E9D976D8C5557
        15869FBDCFFD62F82E1F325AE2086540A9969A1004A93AD381926A44495B35A5
        15D14035C5B6D3D630752C23ADB606A3057ED818AA520C9A92566B9AD2385249
        43AA4D51B055A74029299D6140606698B997FB71CE5ECBE69EECE4C4DECB1057
        B2B3F6EC3BB9EBC9FBEEF3DE1CA3AAF832C6E0B7896EA85175CE1590B8D7AFE4
        CC14FF53DB76BEBC4F0DAD4641014431181445639A78A7A00A6A8837C0F0D0C8
        435DF7DEB8D9436CDEFA2745050536DDBD9C44D5075068FDF66D8BB954552A11
        A113A2D0510E238AC588675FECE1BA4FCCF9DEC6477E671EEDF8E266C03D7857
        1BA7074ABAED897D00970BA00044A2200A16544CF2339C802A08065143245A85
        6A597C158562D87977D71EF358D7CD9B8168C61539EE7FF8F77AD900380540C5
        7700AF352860030B081A589CB51884722504A065C91C9CC8774B1DBF368F3FB2
        BA0AB1A5F30B75EF85AD7741540D28E0E7A3E0F72A586BB1164C60100CE56205
        8020B0B42D9DFBEEFAE8036BEFF9C526200D58C05C168024AC504085B82BF142
        FCFF55218C0144299663809435A402CB0D2DF359DEB2A0E3D66FFDECC124C4E8
        7740C46F6200ACC7F2200958C51A83622897C32A4C2A30586B080265E50D1F43
        5CD41156B6F2D48EBBBAFC575C1AC02B8DEF026A41BD8D06C19398EA4A670326
        8ECFB17EE36E44FC23EA9161E215533B80870137AA029220507C09E22F227E30
        8808363034E432ACF9D227C95F2C51A984B848092321728E9431741F38061000
        8C0EE06FBFF75935116D1E4E630C0360C8A46205C68FCDE2E27C88732272554B
        9C13BC5CA303C4DE7B9971244A41930A60E2A434904907882AAA012E13907182
        8BA40A2078007CE4D70750E73D54C0C4DD2B4F1C4A780CEF0A06F5BE03813188
        3598C0924A1924C2035CBE05241E3975FE2849E2550215452D58030605A3E4AC
        2532423A304C9A90F59943D79EEB316A5094AE5BF6D50210E20E5893981277AD
        F1C80616060ABDBCF6F65EFA06FFC5B9FC0950983AAE892BA75C4D73F387F159
        D075F33E930F8FEA8FF6DC512F097D6A2A2AB1AEAA2028AA09101114B05639F8
        D6333CF597EF901BE35876ED2ADA3FBF9DF695DBAAFB4C26E4C885ED6CD8BAF8
        4E2003D871E966234EEA59E0154ECAECCDF0C37D0E843CFDD787109B6775CB7D
        348C495188DEE6D4C51708A5402ADBC04766373267E63ABA5F7DB6F3FE27D24B
        BA77BDB9EAF0FE53F91FDCB65F007D0F40E4C40FC725632FE184AA121878F1F5
        1DA4D38E958BBF493E3C417FE1087FD8DB435FFF08008D8D6359B16C26960C2B
        16B7D0FD4ABAB57253F4C37701DA81B0A6025E669708A2E44644C1C099A1E3F4
        F4EE67DDE73632587E8DA1D25104E59DBE11BABEB10B804D3B5613BA32A2452E
        86AFB268C13CDEEA3BB6FE2B1BAFF9D56F1EFDC721C0D5B0C07912307183643A
        1A8C441C3EBE978F5F751D153DC3B9620F22118A540133694B2A65112794A312
        AA82A094DD1BCC9F3537387776680DF03A20757E8CBCF789D989A00A50DEEC3F
        48EB071731503CC673CF9FE0747F09CF1A464210589C5376ED7C0705A64F4FB1
        A425873684A8D2060480790F8073EA7DC633E043C9ABA0C2F90BA7B1D961FE79
        FA154EF5E5E8B8FD97A88548C03970A27CFF8EDD0C0E9771387EFAE45A4E9E3F
        89D50CCE4923602F1D447E2EF8E1208A38C1A0D59C2F5686182C9EC5B92BC935
        6469C805A882A255806C2660C6940640633B5C0924220AB180A9056054D40F47
        057CF08A07D4F86C4C6A32C323255461E2D4908E6DB7E0797F72EF1E1468DF72
        93BF434C7E9FC389A39C8772895380D602C0A9A0AAA8F8BF158C807A4483A8D2
        34ED5A7A7B8F909A9AA679E120699B01E0CFCF8CE5C248857163AB52F3995579
        004257A1505186CE04140BE59700A96D8123EE9AB4C2E2894011352C9C7B233F
        7FBE9BA56D13387BB1D7C734224D544490AA5DCA40FE3FA805045C04278F86EE
        7C5FE14920AAF514A8A8438149E3D268F21EA0A8C660E252E43E308FAB67B6F2
        EFBF1D60DA5C70464060D2B40A9BB67F191426CF8810952A0828C7FE9E66F06C
        79E7CB4F9F3C0CB8DA4124FAC29D0FFC76856A22F9105083E20F846C36C5C26B
        DE05E8EF617824CFF4792364C728CD8B0648051940895C859192502EC2F14396
        73BDD14B079FEBEB04CADE827AEF8600864B9705D24043EB5767DD33614AF6BE
        F7CFD1DCF8A9110D930580C28061E034F41EB1E5FC6079CB81DD271F030A4008
        08B1AC97BF7C7D7643336F9C7BDC436480090B96372EF9F4ED4D3BDABE3EBB67
        D9FAD9BA6CDD6CBDFE6BB37A96DEDAB4637ECBF4A5C044201B83635AD67E88D8
        82FFA3C250D9D0F9639F531170F1F01FFB0F01ED40CA0F010408E3450438403F
        B5A649C529DE0246A97A16D57B95B7A3BCB22B89FA2F8110297DA755B8360000
        000049454E44AE426082}
      OnClick = bAddClick
    end
    object bRefresh: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000027744558745469746C6500526566726573683B5265706561743B4261
        72733B526962626F6E3B52656C6F6164CD4DF6E90000091349444154785EC597
        6950545716C72F8B46D151474D3431EEA3A351A3E306384649D4382A91C50430
        C8441425A0B8B3AF028ADA54005101111A9C068128342E40836C02DAB23468AB
        C8DEA06C0DCD4E3774379E39AF7DCFE9E2CBD4D45815AA7E75EF8577CEF99FE5
        5DEA1100F843F9C305FC3F3F1AA31965F0519DAB07D5A4D11A0DF3B7FF498C5F
        5239F1FB1DC1D5176182F82494C4BBC43C4E5473A8793A8C37C723F6F1714F4E
        31CF9B535CE61557A2F4E494283DFEF554E07E93CF73892A3871E437EE5C3531
        1A6EB14F896B0C059FB8B2F9C485FD8438472351D4FA9810DF440191BD7BF701
        CAD09D5DB4FB667E0D44F25E814368A611E5F05060C631BF448132E569033C6B
        EA82FACE01908E8C50E0BE1F7F27813B4FEAC137BE54E918591075D03F6E3623
        6470E41D516780E674642121DEB74A89140F882AFB1F8F058CF7892FA97BD323
        0351F7209C0CCFAFFBBB89DD04330FCE92331179F2AE612534CB95201A5242A5
        4C012FA40AA8C6953AB7C947A003CF778B45E016FD64E06850DA6EF43906D11C
        5062D0519C087B440896F0437044D325BAC8FD415913B463908621052414D4C0
        41569A073A196BE6798715975F0DD518E4F980029E0DC8DFD32F870A9A677D72
        689229E1554B1F78C53E8523C13C4746449FE21D51C7E14A3E21D8235539A8E0
        76812973CF270906C498D1EB410554A0B3C6FE6138793577D0F048C8023D6387
        E9163EC92D5558997A1421A2A9C5672B514879CF309422253D4320EC1B863A89
        143C629E286D0292CD68111A4CF05EC508B10FC92138147C267B6DC7C8C23481
        A80B4428A0B41B9DA1A3E72822FF552B587827A7A383715BEDAE9B183B2580A9
        4B02E81DB80E7ABF448089F32D3817FF044A9B7B5522F89221E077CAA0AC6B08
        044DDD384779BDA6274217D233A14105EF416C7F7B4898E05A0E213CE388F497
        D03A3C02020CCC97C86886A006CBED135304BB8E45995222D6595E76586BC1DA
        3673E9B79328D6FC747EBBAEE5E5886F6D6F0CC7E4544209062F144BA1A05D0A
        CFD00727B71A0E5E78C046DB4F10CD6EF908A1B0B9944954A5DFB4C77E024E6E
        7D0D4EF60B2C5D111AABE89051603652A878DB0D468E09F5B3577C37992EA796
        1ADA94F355465E1B36FC12DE12935D098FD13EB76510725B0740281E84A32139
        CA9DB6AC25F4B31A926125D91F90815B34B60FE279DE2EAA8306EC25A53ABF75
        F03FB4BD4780995CBE530A9B6DC2BDA88164DE7306FA3C76E56E37BD2DB691F2
        426C65F6DB7EC86CEA87A2B601B8765F083F7BDDF6A16D353A8794E478682E21
        56DE715FE1B4CA9A7088F81D52788846D96F07E02192DD8C50677AFFAA4B0666
        2E09F255BBDD56309930E5645A898CD3DF171C791167A2102BF0A0A10F45F441
        AAE02DECF5E66244321ED16C4701478373080E42567AD68B3610E2C094A18032
        318255C868EC43FAA114CF0C6548CA935A586711924165C29492A90023608DE9
        D97F98BB24AAFCA5D6F4A8C8AEEB0273AFD456B4F9935A0B3589B17312ECC6A9
        363C1D0F3B4FC4830D2B13F858FA7B75BD70AFBE57B5C75EC1C65FC241DFEA1A
        E85A5E81B5162130AA0D5AF480E9209326CFF8CB175B6CA3E1392675FB751724
        5576412E2663E6C995A3CDA7C86464225D0D54A3666CE89C325CD93B0C2955DD
        9052DD0D8FB0059480493316CDA4D5EBD0C1B4D432FF64FFB974784F1AEC3F9F
        063F7972A10205DC7A218138A104D26A7BC0D43519ACCF67C081008A743888AB
        7AF9B4119D6D276FB71463E9125F4A20F19504B21A7AA909869DF657B651E545
        B499CC5BA50AC208303CC1E1F1CADF408B5401CD34027C1D632B3A805DDE015C
        AC82105B5887C955E21D139F5F05AB4C5999C4E07014A9EE19661C8DDB6C1FFF
        282CB70E420B5B20AAAC1D92D13084FB0CF638DF8AA004329963008230098C59
        67E2F237CBB35CC5FDEA2E600BC4108DB651A562B851DA0E9125ED10FAB805FC
        788DE079BF01021F36C126EB70C53CBD036BC837D611A4AA7B98713456FF60B4
        8F4358A1CAD83FB31102F3DEC23DA118FEE97B5FBED5FAD2064A242382813E4F
        D8B43FF4A26F7C31702AC410F1B40DC2F8AD1054D0ACF2E3F9A001DC3138B5B7
        F4BF0F8BB7BAB2281BA26B194A2ABB871801DA5F197A2E3770F85D19572E86B3
        3C11F866882028AF19D839B560E69EDC6A60E5BF9132A487509B82DEEB4CF962
        E90C039B1BA2C8A22608C86A5205F5A003BBDDAB070F5CDD6FBF84A53BFC1A75
        A62E98A1B25B63164C5E750D51306D18BFCAEA46ECF1483EB072DE80575A0378
        A78920024B18935B0B963E77E546A739D7BFB709FE010DA6506CB509DA61E8C0
        3E81FBA95FEF72DF67E59B0ABFE5BD010F0CEA86B8DCAD07E7D43AF0C364B6D8
        DE80D9EB6DF731F7015969C22242C910798130FD9C67706CC91A6BCE008B574B
        0547470D2A67D7702EB25E4B201867E2308B8715E182991B170E5DCC80431778
        A06B1E4039FE6CB56960B6EF9DE7D8EFF7819DB8B5E076B70E0E5F2D80B91B9D
        B2E9D7708C2ADE32C300F2BC73089191E712D987615C6CC4B2DC609704E7D21B
        548EDC300B57C40705C59688E1115E54E56219083B65AA8B2BB3AA13BE77E0BC
        F96CA1DEC22F57EDD13338705D7AF1A1089C52EAC0311905706BE0EB1F02A4D3
        161BE9D273A4395BDF999025DBFD494587EC3D288299054467917188BBDEAF49
        E098F012BC1F88C005B371E632D482333AA770C2B33F96D7FB6631E8595EBE8A
        B633177DE776E1606086AAEFAE686778FA16CC5CFD6B00759730D7F8E7EBCF10
        B2ED683C29C7E002A49C464DC484793BCF5B2DB3BC39687E311F3C536BC18B76
        E88241CFA4D4C219CCCE891675ED5133FC702A49B168938DFEC4E9F3672FDDE1
        DF78F65E151C6597C02CDD538D6327CEFA9CBEC4348ADBA464C66A1C9B2D761C
        22104B3F5046A32662FC8CF536CB16985C8B5F6EC551EE0DC88223D1A5702A4E
        08DE28C60BA7FC2447087691A560E6CF834D8762956BCC825CD1EECFB3D6D95A
        ED381603BA7B4360EA929FADA8849857988F023E5DE940C8E6C3379158F2578B
        18B2D81C3163934514E66C32EA9E9FF8E95AEBE5737705BACF330ECF9B6F725D
        38FF4736CCDBC386B9C611C2394661795F6EBFE4316DB5F5723AD03864F21C7D
        A7B4E9CB0FF3703F8919BC692BECC9B41547C8545CFFEB8FFA7F3AE67DA7FB38
        05994A41EF27A9DD0F5A1474401D0A7AAFF931BE961831DAEAA87F8CA833FA6B
        E9A3F1D1BE0B01E00FE5DFFF3B6B594FDCD6290000000049454E44AE426082}
      OnClick = bRefreshClick
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
    object bPeopleAnn: TdxBarLargeButton
      Caption = #1052#1086#1080' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1103
      Category = 0
      Hint = #1052#1086#1080' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1103
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000025744558745469746C6500436F70793B426172733B526962626F6E3B
        5374616E646172643B436C6F6E656D0EDF5B0000057B49444154785E9D966FA8
        1CE515C67FE79DB97BD3264B3F09458A16ADD70F516323681383F562488A4844
        2828164429A4B548A129A237B635BDDA8622041411691114C42F1614D18A70EB
        9F264255B4C44AD5226D28422842B4DA9BBB3B33EF797ADD7D9997C1DD4DE859
        06CE0ECB9C679EF99D67D62431A9FAFD3EA9C2C38F1F5EC16C11093040743A81
        0432C60DF09F4F57EFD97FDBD5CB8003FACDC32B428E803B6FDD452A4A669701
        86D9E2F7F66C6152555543139DA6890CEBC8DA5AC3894F4E32A89A9FFFF2D053
        76F7BEEB968178C70F77F2E737FFAE95573F00E80A303326D5A64D9B005A97A2
        3B9241EB01B800406608C3255E7BFB43F6DE70292707CDCF967EFD7B3BB8FFBB
        CB40F3AD4B16F8C57DCF08382D07ACAA2A2BCB32B83B92882EA0F51A01160C13
        94211083036258D7005C76F15944F7BBF61D78C20E1DB8712462F9F63D0E689A
        00836C7D8CD1CC2C7CEDAB7DDC7D74C8F3F39740886006065618C2A8063500A1
        086CDFFA75BC8EFBABA547EDC183372F0335898B8902EE7FF4D531702E0C4388
        BFBEFF11EFAC1FD380BB60E10CB6AD0F9284476730AC0028831109ECB8EC1B34
        EE4BC37DBFE57787F67644949380FBF14DDBA6025747A7A923C3BA1901F7D1C7
        AB7CFAD9803FBDFEC1BAE567836038AC3183B23042308A425CB563018F71A96A
        1EE2B1077E7400501690CB94A86ADC9177818B0E123886CB685CBCFCDA3FF8E9
        F7AFE0D917DFE5C87A7FE1E633E96FEC71C7AF9EC6A1750CC48E4BCF65E1BC73
        96807B813881814CBC3B193840E99982A3221043C07086550DC0E2F6F35839F2
        3EAFFFE518D77D670B83AAA16A228AD04451C74861F0AFE39F0114D320A4134C
        09326B7B278440908F80738CE15A0540510476EE389F175EFA1B6F1CFD27576E
        5B40A14451B86B9413C140FE610BF94407DCD36C07ACE50CE100388C44984570
        B19681C308EC5EDCCC732B6FF3E29177D9B57801A15720416C4ACA021CCFDB06
        7C0142A5B8541A47EA25DAF2B47AC2260277EDEE8B78EA0F6FF1FCCA51AED9F5
        4D2C046CCE982B0C6FC802263A20B576A390AC1060092AB50ECECD177CA5BF81
        1FDCF904EEEA00B7FBCACDBC77EC2475DDD09B9FC7828DC2CADD670AC0DB6C05
        703C275F2BDCDD0985F1E50D3D6EBEFE72FE7B724055D5C446D48DD3C44869B6
        9E1FFF267A83D4A308612442640133B70029C715F99C003300A3578E1DE86F9C
        27A67CA8D38BA92C6C74CE5D48421AB3E351A780300A1011A0BB0DD9010C5C98
        416FAEC025A482D82BE84527363E12E02401CA37E25227F22740A80C9D916FDE
        8D56461B0F46BADE18C41012C0C65C3906CE951D90382503E61E532B945A7594
        90604CBDA53E090F165070CA22E01E9184B291C4F4653603CA778C921872657B
        5AF2B3684130C3424038D145FAE4DFCE0E22471938D48AB0E43DB8BA92D46D90
        A048C0C91D8FE041EDDB726610354D8E20243C8F41DEFD47286534BB090E4AC0
        29392025F1D22C063234DEBD2202B23043E468508E0A7021AC052E0D24CD47A7
        82501E11A0AEB769887598686F3DB94AE83E8E18D3E0165265A766E7408ED4EC
        8081BA562868428A3A109293CE865EE04BBD403957220CF7BC431319F0D6AB2E
        601946E50DF134388583E4A031FD620CDCF37F7C8763C7570956804135583B0C
        0C019FB905DEEE8C65D07CDC39B9A4D68EFC12039480DB77EB9EAD65597E1242
        A881080C80B524405F142047AD0386486001DE12E94040780634CBEAA45ED334
        278013EB22EA10828038E95FB1E5E798C112C2276C8208A0CEC06EE5F8C5DDEB
        75113550F57ABD7C89295B204521A0BF712ED32EBAA104F9BC947BD4119480F3
        CFABAA2A0D8743C1F42876A05E1BACBEF293BB9FFCB6484E5B0A204BC3D4DD12
        29F748C83217F5B00B1CC034014AC7F09143B7EC01E68102303A75DADF13325D
        E0A60BC82232A9B3069D7E65E0A6D4FF00EBFB1275126F380F0000000049454E
        44AE426082}
      OnClick = bPeopleAnnClick
    end
    object bBookInfo: TdxBarLargeButton
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
      Category = 0
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000017744558745469746C6500496E666F726D6174696F6E3B
        426F6F6B3BAC8D1D31000006BD49444154785EA5976D8C945715C77FF799D9DD
        01965D58D8852D0517B6BB80402A50A4556AA16D4220C8075A5B950F462389F2
        454D1A93466A8C2989B59AF6437D89A14D25B16A34C40F80D4D6A0A508DA7629
        5A901717585E775984591666679EE7DE736CEE4DE7662064219EE4E43C739F3B
        F33FE7DCDFC9CD188037BF731F8F6E7ED7000990F33198E1167607EF1510C005
        470155D5281022B95F6D5CF0C8C4C6BACDF9C42C5614D430F1AE46BCA9A23E42
        0C505DD4F8189E0CE13794CC6ACFC56265D3E79E7BEF4DC0C604200F31819671
        755BCF1EBBDCF6D0D3AFD23A6F297762AACAADECFAB9F717B1EDA957818ED885
        6079A2E57A4FF4B715AF28C70FFF9B6B133A40138C1154135424D49418100045
        6ABA112B1127900002269750C84FC359690B7AA444ABE98071A24C9F3399737F
        7EDE3B0AF3174EABB655556BD4F4A375890B0A21AA09D128C5313348D454756A
        1388665460F9938F81CD50149766DCBDF8417025BCA95073D8AA407091104182
        6BDC77B5FF1CA7FF712932778B045011B29161864E7F802AD834A3BDBB1DCDAE
        47E2D0A06BC04411C2124414B41AC74F9E84318C9A8071022E73B854C080CB14
        150BEA62D52146B1288440E044C140750AD459542229B73E02A74866112B00A8
        B5A873DEBD2054DB1E51D00884C6371293F3458868ECC0AD21047129D6590CE0
        9C80FA45048855C54A6312910D25001813C850A7A342E837B94CD04C10C0660E
        9C43C5C5EA6E9C80F801137744488D0905888ECE00AAB84A05671DAA8AD8208E
        B35118C5687C8E62A08678FEAAD5A849767B0C380723C3D7B199C5603C902AC1
        AB98A3B1BB46BD00985AE86AD3432AA55A0642D49B2114C596534A4365EAC7D6
        636D60409D84CA6BC10BE2377643635754144D534C1DA8BB0D084514710E9B5A
        3F0D9A24E02CAA2E8A285188DA0B2A82A92082D834EC1387131995019C6A387F
        A758204D5324AB7810035051C0DC7C235613549BA122A856E71B95D1A7C020F8
        CA03B1EA13516791B41C3698044D4C00CC0018D0208453DF29931F47AEB90B53
        68C1D43703A0B644F3CC02F0F7AAF8CF7E73006342022642A87EF64504141F3D
        C52204F8A40A5E6432C2968CEF449BE672E8621383FD0D5C2E17009858A85068
        1A47E7EC3D4DBD47DF2F027CFDF30B7969EB3B3740A820D606784202200E5408
        5A42642D9EBF3186FCD4FBE92FB7B3E7E064A6DDDDCEDCF92D4C6D6D04A07FF0
        1ABDA72FB3E11B2FBCDE7FAE77C38B9BBFFA17638CFBF196BD5A03A106089140
        2CEAB54307A2DD702728242D0B383134953D27A7B26AF96C264D6EA2E744916D
        07FA4095FBBA2671FF9299DC33A3A563E7EEBA5DDFFEFE6B4FFEF0BB5FFC439A
        66AE1642010910C619AFCEB6829A201AEF3EA86F66A47E266FBC379EF5EBE671
        6A185ED97E82D606E5CB0F77327E6C3DCFFDFE10BB0E0EB266F1541E5F3D2FF7
        CA6F4B5B9EF8D2A6FD4F6F5C7E3E219A41F153103A111C7F1CE22348802E9C8F
        77336E3A3D2712BA67B5734DEBD879609091918CAEF6661A0BF5F41C19E452B1
        4C9A3AB6ED3B4F314D58307BCA84F6E9733600B91A06C493EF05828BA278C108
        5C1C7C8C8236B472F42C3CB66E1A7FFCD7252AE50C11E5776FF7F1F2CE239E8F
        A6A6B114340746D9F1EE004F7C721A6FFDEDF067811FDC3C86B67A711060144F
        673C0EC098782BE6C670B128B44E6AA46F60804AC53252CEF8C4C726B06CC11C
        BAEE9AC8969D87397866885C2EC7A9F3C3B4B6CCC05AD70124374328E28523F5
        C448EC84AFDE8404D34AEA13BC70FE2AA92AE284F1339B99F5A1B8059FD0B5E1
        14142AF99CDF5BA96400264F3415C0D99880481047043526C018810948D8110A
        B9840B0345A63437F0C1C921AC75ECD87392B59FBE078072D97275A8EC3BD031
        B3D1EF2D954A67014D08A6E1FAD7FF16874A24B90430DEAB754BA81AEF8A8A01
        052D0DD0DD6E3F3CD323AC58D886CD9C07B9A12EC13ABC17EAF364A9C566C2A3
        8BA7F8BDC3C54B3B009B279800E50B25F7943976E947896112A160723FDD4D38
        81201C51088C14269C64CAB2C779EDAF3D3CB3B49B45DDCDECFDE700EB57DD8B
        0370B0F2814E76EDEBE381796D74B526FCF2173D43FF39BAFF65C09AC8007960
        4C70EA8064F4FF83F1BB8B3EB57EEDDCF94B9FFFD6C635C9E92B86ED7BCF70FC
        CC1510E89CDEC49A651D74B4282FFC64BBF49D3AF695B7DF78E9D7401613889E
        8BCFB76D0668B877E91756B44EE97E71F5CA2533563C388FAECE76008EF75E60
        F79E43ECFCD33B7D972F9EFC66CFBEADAF03E595EB9E55334A75DC6112756DED
        1F9F3C6BCEC35FCBE7C72CC9D7372C00C5A6E961978DECEF3DBAFBE7172F1C1A
        043255D547D67E0FA3AAFC3FF6D0EA6740E3C25BBB9E4D80BAE0E408E6800CC8
        3EB36A9310243106FE07A712A6ED900E36D80000000049454E44AE426082}
      OnClick = bBookInfoClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqAnnouncement: TUniQuery
    Connection = Form3.con
    SQL.Strings = (
      'select be.id'
      '     , b.name'
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
      '     , i.login'
      '     , a.type as announcement_name'
      '     , be.text as comm'
      '     , be.date '
      '     , case be.type '
      '        when true then '#39#1054#1090#1082#1088#1099#1090#1086#39
      '        when false then '#39#1047#1072#1082#1088#1099#1090#1086#39' '
      '       end'
      '  from mm.book_exchange be'
      '       join mm.book b'
      '         on b.id = be.book_id'
      '       join mm.identification i '
      '         on i.people_id = be.people_id'
      '       join mm.announcement a'
      '         on a.id = be.announcement_id'
      ' order by be.id desc')
    Left = 384
    Top = 8
  end
  object dsAnnouncement: TUniDataSource
    DataSet = uqAnnouncement
    Left = 448
    Top = 24
  end
end
