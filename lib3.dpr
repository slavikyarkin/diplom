program lib3;

uses
  Vcl.Forms,
  login in 'login.pas' {Form3},
  mainEmp in 'mainEmp.pas' {Form1},
  mainPeople in 'mainPeople.pas' {Form2},
  createNewUser in 'createNewUser.pas' {Form4},
  peopleJournal in 'peopleJournal.pas' {Form5},
  addBook in 'addBook.pas' {Form6},
  peopleInfo in 'peopleInfo.pas' {Form7},
  issueBookpas in 'issueBookpas.pas' {Form8},
  bookInfo in 'bookInfo.pas' {Form9},
  newReview in 'newReview.pas' {Form10},
  searchBook in 'searchBook.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
