program lib3;

uses
  Vcl.Forms,
  login in 'login.pas' {Form3},
  mainEmp in 'mainEmp.pas' {Form1},
  mainPeople in 'mainPeople.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
