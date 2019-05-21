object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1088#1086' '#1087#1086#1078#1072#1083#1086#1074#1072#1090#1100'!'
  ClientHeight = 137
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 331
    Height = 137
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    object cxLabel1: TcxLabel
      Left = 144
      Top = 17
      Caption = #1051#1086#1075#1080#1085':'
    end
    object cxLabel2: TcxLabel
      Left = 137
      Top = 57
      Caption = #1055#1072#1088#1086#1083#1100':'
    end
    object teLogin: TcxTextEdit
      Left = 188
      Top = 16
      TabOrder = 2
      Width = 121
    end
    object tePassword: TcxTextEdit
      Left = 188
      Top = 56
      TabOrder = 3
      Width = 121
    end
    object Panel2: TPanel
      Left = 1
      Top = 95
      Width = 329
      Height = 41
      Align = alBottom
      TabOrder = 4
      ExplicitLeft = 312
      ExplicitTop = 176
      ExplicitWidth = 185
      object bOk: TcxButton
        Left = 130
        Top = 6
        Width = 75
        Height = 25
        Caption = #1042#1093#1086#1076
        TabOrder = 0
        OnClick = bOkClick
      end
      object bCancel: TcxButton
        Left = 233
        Top = 6
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 1
      end
    end
  end
  object Provaider: TPostgreSQLUniProvider
    Left = 16
    Top = 8
  end
  object con: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'lib'
    Username = 'psqlmaster'
    Server = 'localhost'
    Connected = True
    Left = 72
    Top = 8
    EncryptedPassword = '8CFF9AFF9CFF8AFF8DFFCEFF8BFF86FF'
  end
  object uqIdent: TUniQuery
    Connection = con
    SQL.Strings = (
      'select * '
      '  from mm.identification i '
      ' where i.login = :login '
      '   and i.password = :password ')
    Left = 16
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'login'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'password'
        Value = nil
      end>
  end
end
