unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Data.DB, MemDS,
  DBAccess, Uni, UniProvider, PostgreSQLUniProvider, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxLabel, cxTextEdit;

type
  TForm3 = class(TForm)
    teLogin: TcxTextEdit;
    tePassword: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    bOk: TcxButton;
    bCancel: TcxButton;
    Provaider: TPostgreSQLUniProvider;
    con: TUniConnection;
    uqIdent: TUniQuery;
    procedure bOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  role, people_id : integer;


implementation

{$R *.dfm}

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
    case role of
      1 :
        begin

        end;
      2 :
        begin

        end;
    end;

//    Application.CreateForm(TForm1, Form1);
//    Form1.Show;
  end
end;

end.
