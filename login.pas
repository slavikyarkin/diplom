unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, Data.DB, DBAccess,
  cxLabel, Vcl.StdCtrls, cxButtons, MemDS, cxTextEdit, cxImage,
  dxGDIPlusClasses, Uni, UniProvider, PostgreSQLUniProvider;

type
  TForm2 = class(TForm)
    lLogin: TcxLabel;
    lPassword: TcxLabel;
    teLogin: TcxTextEdit;
    tePassword: TcxTextEdit;
    bOk: TcxButton;
    iLogo: TcxImage;
    connect: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    uqIdent: TUniQuery;
    procedure bOkClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    class function Execute: boolean;
  end;
  var
//  Form1: TForm1;
  role : integer;
  user_id : integer;


implementation
                    uses main, user;
{$R *.dfm}

procedure TForm2.bOkClick(Sender: TObject);
begin
  uqIdent.Close;
  uqIdent.ParamByName('login').AsString:= teLogin.Text;
  uqIdent.ParamByName('password').AsString:= tePassword.Text;
  uqIdent.Open;
  if uqIdent.RecordCount > 0 then
  begin
//    ModalResult:= mrOk;
//    Form2.Visible:= false;
    role:= uqIdent.FieldByName('role').AsInteger;
    user_id:= uqIdent.FieldByName('id').AsInteger;
    if role = 2  then
     begin
    Application.CreateForm(TForm1, Form1) ;
    Form1.Show;
    end
    else
      begin
    Application.CreateForm(TForm9, Form9) ;
    Form9.Show;
    end
  end
  else
//    ModalResult:= mrAbort; kkl
// check work control version
//maybe something wrong
    begin
    lLogin.Style.TextColor:= clRed;
    lPassword.Style.TextColor:= clRed;
    ShowMessage('����������� ������ ����� ��� ������!');
  end;
end;



class function TForm2.Execute: boolean;
begin
  with TForm2.Create(nil) do try
    Result:= ShowModal = mrOk;
  finally
    Free;
  end;
end;

end.
