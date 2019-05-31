unit empInfo;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls, cxDBEdit,
  Data.DB, MemDS, DBAccess, Uni, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, Vcl.Menus, cxButtons,
  cxSplitter;

type
  TForm14 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    bSaveClose: TdxBarLargeButton;
    bClose: TdxBarLargeButton;
    teSurname: TcxDBTextEdit;
    teName: TcxDBTextEdit;
    tePatron: TcxDBTextEdit;
    GroupBox1: TGroupBox;
    lSurname: TcxLabel;
    lName: TcxLabel;
    lPatron: TcxLabel;
    uqPeopleInfo: TUniQuery;
    dsPeopleInfo: TUniDataSource;
    bSave: TdxBarLargeButton;
    lSex: TcxLabel;
    uqSex: TUniQuery;
    dsSex: TUniDataSource;
    cbSex: TcxDBLookupComboBox;
    deBirth: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    teEmail: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    teNumber: TcxDBTextEdit;
    GroupBox2: TGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    teLogin: TcxDBTextEdit;
    tePassword: TcxDBTextEdit;
    uqIdentification: TUniQuery;
    dsIdentification: TUniDataSource;
    bPassword: TcxButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    procedure FormCreate(Sender: TObject);
    procedure bSaveCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bPasswordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    password : boolean;
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses login;
{ TForm7 }

//------------------------------------------------------------------------------
procedure TForm14.bSaveCloseClick(Sender: TObject);
begin
  uqPeopleInfo.Post;
  uqIdentification.Post;
  Form14.Close;
end;
//------------------------------------------------------------------------------
procedure TForm14.bPasswordClick(Sender: TObject);
begin
  if password then
  begin
    password:= false;
    tePassword.Properties.EchoMode:= eemNormal;
    bPassword.Caption:= 'Скрыть пароль';
  end
  else
  begin
    password:= true;
    tePassword.Properties.EchoMode:= eemPassword;
    bPassword.Caption:= 'Показать пароль';
  end;
end;
//------------------------------------------------------------------------------
procedure TForm14.bCloseClick(Sender: TObject);
begin
  Form14.Close;
end;
//------------------------------------------------------------------------------
procedure TForm14.bSaveClick(Sender: TObject);
begin
  uqPeopleInfo.Post;
  uqIdentification.Post;
  uqPeopleInfo.Edit;
  uqIdentification.Edit;
end;
//------------------------------------------------------------------------------
procedure TForm14.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqSex.Open;
  password:= true;
end;
//------------------------------------------------------------------------------
procedure TForm14.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:= login.fio;
  uqPeopleInfo.Close;
  uqPeopleInfo.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqPeopleInfo.Open;
  uqIdentification.Close;
  uqIdentification.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqIdentification.Open;
  uqPeopleInfo.Edit;
  uqIdentification.Edit;
end;
end.
