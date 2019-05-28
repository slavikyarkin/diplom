unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Data.DB, MemDS,
  DBAccess, Uni, UniProvider, PostgreSQLUniProvider, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxLabel, cxTextEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, DASQLMonitor, UniSQLMonitor, dxGDIPlusClasses, cxImage;

type
  TForm3 = class(TForm)
    teLogin: TcxTextEdit;
    tePassword: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    bOk: TcxButton;
    bCancel: TcxButton;
    Provaider: TPostgreSQLUniProvider;
    con: TUniConnection;
    uqIdent: TUniQuery;
    sqlMonitor: TUniSQLMonitor;
    cxImage1: TcxImage;
    Panel1: TPanel;
    procedure bOkClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  role, people_id, emp_id : integer;
  fio, card: string;


implementation

{$R *.dfm}

uses mainEmp, mainPeople;

procedure TForm3.bCancelClick(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.bOkClick(Sender: TObject);
begin
  uqIdent.Close;
  uqIdent.ParamByName('login').AsString:= teLogin.Text;
  uqIdent.ParamByName('password').AsString:= tePassword.Text;
  uqIdent.Open;
  if uqIdent.RecordCount > 0 then
  begin
    role:= uqIdent.FieldByName('role').AsInteger;
    people_id:= uqIdent.FieldByName('people_id').AsInteger;
    emp_id:= uqIdent.FieldByName('emp').AsInteger;
    fio:= uqIdent.FieldByName('fio').AsString;
    card:= uqIdent.FieldByName('number').AsString;
    case role of
      1 :
        begin
          Form1.Show;
        end;
      2 :
        begin
          Form2.Show;
        end;
    end;
  end
  else
  begin
    ShowMessage('Неправильно введен логин или пароль!');
    cxLabel1.Style.TextColor:= clRed;
    cxLabel2.Style.TextColor:= clRed;
  end;
end;
end.
