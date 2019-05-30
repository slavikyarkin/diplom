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
    ExplicitTop = 457
    ExplicitWidth = 640
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 155
    Width = 812
    Height = 369
    Align = alClient
    TabOrder = 6
    ExplicitLeft = 312
    ExplicitTop = 288
    ExplicitWidth = 250
    ExplicitHeight = 200
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
        F40000001B744558745469746C65004164643B506C75733B426172733B526962
        626F6E3B9506332F000008F449444154785E8D570B7055C5F9FFED9E739FB909
        E40121E4C13320963A80888DA47F4450B41D915AA0481D6B6BA7B5159D3E9CFE
        517CD4D13AB66594DA426BB55AB1A530814A5B194B41D1227104E4116C54484C
        02216F929BFB3CE79E7376BB67F79CE44A8769BF99DFFDF6EEDDB3BFEFFB7DDF
        6E4EC8435B1B410801A104D4F5181D43780200EEBC87076E9D437069C3E30DC7
        38631C5C407AAE3CE30C8E333AEF30079BEE5E04DD5D70CFEA05504CAE237963
        65E541CD1F928B906F5C000FAF9AE77A896EC3E1DCFB490C140019D4D3AF344A
        0EDD9F24F2237F9C4F0C2A40D63FBFEF8A6861D10AA20596504A2294D02B00C0
        B6ED53E0C8E672C69BC9A1C1DD9BEEBBB90900AB086B0C003F9FB5392E322F32
        E80E93A33C620E0E820A45EE427BF0A5B7BF142A2878626C41B8765A55312AC7
        C510D435948E09CB2517868D39A665E35C5FB2AEB5B368C323DB0E9FC924861F
        DB78F7F53B013895119D75666DC5E4ABE0F1522EEBE4FFA07C454892D3754FEF
        9AF2C81FDF3B585359BE63F9C2DADAD54B2FC3ECDAF188C44220111DE7333901
        1324AC212CE63E3BA31C6BAE9F85158B66D64E9D5CF587F52F1D3AB876FDE6E9
        00F4AA884EABA33AE123E5E0172BA03E26467499F5F77FF5FAE2C231C53BEAE7
        5417CF9A3A0E71D34647C28046FC1E21C271F95CDA71C038306C0A2F06D17000
        5FFCFC7434B7F65FF54F90C6BB7EB2FDF6DF6D58F30600ABA62080F694C5D9A8
        020C9CAB8D2A3DF275CFFCEDBAB12565AFDD7CEDCCE29AAA12740C1B4898B68C
        5C042CC15CCF213C94E7A35D3F6C38681DCCA2AAB218B72CBEACB8BC72D2EE3B
        1EDBB60440C06FDE91001C47915729727AE78F5F9E1E1B5BB24D6410A4A1207A
        53A6DC5C40914BEF13FAC17881F8417145D09530C10241AC587C59A0AC7CE22B
        CBD76D9C01409F1C0B505F796A598ECCCC6FB8B1E3AB5FFCBF79934A1D5DC390
        9193646E90CC7149946F69EDC3A6CDFBF0C307B6E3FE07B7E3D92DFF406B5B9F
        DCC776B85C6F7BC15D48E760100D8BAE9A565231F58AE7010405E86F7FB0542A
        41932243511799FD379F7A75D5B892C2BA4A21DD60C6F636637098DAD0F7DB76
        3462E1F4623CF8952BB161CD955834B30C0DBBDE0330AA0473A45252B1BE540E
        1515C5282F1B73F59A07B6AE02A0FBA5D0B38635927D20147BF49AB935E88C1B
        EA5832B58C7001E19977309329034B16D4624A751902411DE98C813F37B6A9CC
        051863AA648E07316EBB9045FDBC4938DB39B001C02E015B80D39D4FAC90D9AF
        FAFF9717971517D406A311983906CB7BD8F260BBB0D59C6BB158087A50934405
        D130745DF308D9C85A4B2926BFE72C061209A37CDC98695FF8EEB3D702D00488
        0E6534C702CB26579608B94C494601700210AAB2A7E0A0848C5E611C5ED713B9
        2610A01E1983707014B1AF84FCDE3D640AD54AD1DC3CE606006F08D87E2D28E3
        FA021A0CA23F6E898C34689C836A045D670770F06033BABB872EBEF82521DC75
        946260308DC79FDC09DF264C28467DFD67306E4289EA1F9B216D31140AB54083
        F33D0530A2000399C902010C244C24321A4A8A748483147BF61CC5B23995987A
        CD2468BA065DA30808CF38918DC641609B0E7E7DFF4D48650C2910A540477702
        BFDFFB3EEEB873A92C692A6B833B0C05B10038D56AF34B405C70C68A723691B5
        1363F40EE6100E6948A74D2C9C3B05D595A508057559062200019B01E04CDD23
        134BC0F22EA4DA2913B065F77124330E12691B8CA9D3643AF291429F97421971
        9B2769E4E426B6B7D8301CD570D110344DF38E21BC9A3209C605F28E29938008
        3E0000B2F9DCBDFDDF52394B7E1F3986F0CCB659226BE44A1D682A4B4EC12950
        5010C6997383A8A92A050154F600D2860D65EAFA2D8804DC215451084E7CDC8D
        68414836A24FCE094336CB0497938467BAFFF2E058B9D366DAACA3D1286CB913
        0301455DFD6C6CF9EB096C6A382CEBAF09E89A86171EBAC54F02B1888E5B7FB4
        1D94C22F910C7CE9757391356DF9F6C3993A5556C680651AAD0064017D0558CE
        CC1E4DC5537585E12818E1B0E5F60EA2454558B97A3174AAEAEEDA8B2FECC170
        228B582CACB2E69035FEFA376E829163E05C653D94B290CBD9925C7CCA6C5343
        49E4B2C963009C4F05904DF4EFEFECE8BB77D6C471702C064EA894326D3AC8E4
        32D04080D11854B339AEACA38DD73D682065A82E63720D6430FE5A4DA738D7D1
        874CBCEF801F00F54AE01C7FF5D1B77B7A2E7C32D4979033B2C16CE6351B8725
        BC7FABB9A6530A47122BD90589FA9D3158729DFFAC24972C83FDC3E8EE1E683F
        F9DA930746AEE2ABEF78817BF5B0D2F1EEA7DA3F6A03A8CACA71617B70A03CE3
        8846C368E9BC80B1B1104A0A433879A60791481896ED28E2FCF56E120E97CAB5
        7FD48E647FC746008617007436F2A606EBE4EE871B026BB77CABABAD67FEF8EA
        09F23E00A1A0840302C45B39FFEACBF18B8623F8E9D643702D1C09A26EE16C64
        0C47F60207469A8E73F5DCF9F61EF476F59DFC60CF130D004CBF09A9FBC0BBE7
        53DCAB8939D871ECDE96532D4389E1041854296C019677CEB5C2186E5C5E8F95
        B72DC1CAB54B70D32DF5704251E4A4ECFE5F40E9A592897812679A5AE27D67DE
        B90F404665AF8CCCBBED37D8FCF3DBE15A5D554C07109EB1F4FE65A5D597FF69
        E6FC5981A29222990A910A788D887C53133CEFAD86E5BD66272F24F0E1D166AB
        BFEDC4D75ADEFAE5EB00D202F6BC35CFF163DBBF0DCA18C0A1E0AB707AFFC67D
        FDEDA7BEDA74A869B8E76C6FFE8B8602870097F06F42FF1AF65502077A3A7A71
        E29DA6446FEBB13B05F95E3FFB773B539C7901EB7EE43E3C79B22D079EF9FBC4
        392B6FB0CDEC7362A33993674D86AB06710908C77F9AAF1047623089F6E6760C
        F5F636F59F3EF09DEE537F69F6C82D5F1C9F97BA033916683C97E2F941749DD8
        F9AFA65DDFBBA1EBE3E3EB8EBF75F4EC91FD87F1C987ED880FC4918AA7C1D55B
        B01827111747ACADB90D47F61FC5F1370F9F3BFFD1FBF789679709F2534A7645
        7E48707CEAFF02D7939112A820AEA98E11008E7F5C5ADEF8D92B0076D67CEEAE
        05F19E4937EAA1583D40C2540FCD90E5B1CDD300376C23792833D8BEF7DCE197
        0E03C8E61D37C727271E992F3C99FDE5CDB8947DB0EB9EFCFF0D3581401E3439
        AF8C79B0F2E07880E0E097D81F04FF9B913C4FA5F7A18CE78149EFCFFF17FB37
        66AFE935F6829A2E0000000049454E44AE426082}
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
      '         on a.id = be.announcement_id')
    Left = 400
    Top = 24
  end
  object dsAnnouncement: TUniDataSource
    DataSet = uqAnnouncement
    Left = 472
    Top = 80
  end
end
