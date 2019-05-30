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
  searchBook in 'searchBook.pas' {Form11},
  newBookRecord in 'newBookRecord.pas' {Form12},
  chosenBook in 'chosenBook.pas' {Form13},
  empInfo in 'empInfo.pas' {Form14},
  peopleBook in 'peopleBook.pas' {Form15},
  empBookList in 'empBookList.pas' {Form16},
  peopleBookDetail in 'peopleBookDetail.pas' {Form17},
  peopleBookRating in 'peopleBookRating.pas' {Form18},
  empBookInfo in 'empBookInfo.pas' {Form19},
  bookExchange in 'bookExchange.pas' {Form20},
  newAnnouncement in 'newAnnouncement.pas' {Form21},
  peopleAnnouncement in 'peopleAnnouncement.pas' {Form22},
  empPeopleBookInfo in 'empPeopleBookInfo.pas' {Form24},
  empJournalBook in 'empJournalBook.pas' {Form23},
  empInfoBook in 'empInfoBook.pas' {Form25};

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
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm23, Form23);
  Application.CreateForm(TForm25, Form25);
  Application.Run;
end.
