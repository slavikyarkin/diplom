unit createNewUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxTextEdit, cxContainer, cxEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, Data.DB,
  DBAccess, MemDS, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DateUtils, Uni, frxClass, frxDBSet;


type
  TForm4 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    bSave: TdxBarLargeButton;
    bSaveClose: TdxBarLargeButton;
    bClose: TdxBarLargeButton;
    pNewPeople: TPanel;
    gbGeneralInform: TGroupBox;
    gbBirth: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    eMail: TEdit;
    eNumber: TEdit;
    gbName: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    eSurname: TEdit;
    eParton: TEdit;
    eName: TEdit;
    dtpBirth: TDateTimePicker;
    gdSecondInforl: TGroupBox;
    gbDoc: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dtpEssueDate: TDateTimePicker;
    eEssue: TEdit;
    eUnitCode: TEdit;
    eSerial: TEdit;
    eDocNumber: TEdit;
    gbAddres: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    eStreet: TEdit;
    eHouse: TEdit;
    eFlat: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    bSaveAll: TdxBarButton;
    uqAddr: TUniQuery;
    uqDoc: TUniQuery;
    uqPeople: TUniQuery;
    uqGetPeople: TUniQuery;
    uqLibraryCard: TUniQuery;
    uqGetDistrict: TUniQuery;
    uqGetRegion: TUniQuery;
    uqGetTown: TUniQuery;
    dsGetTown: TUniDataSource;
    dsGetRegion: TUniDataSource;
    dsGetDistrict: TUniDataSource;
    uqGetDoc: TUniQuery;
    uqGetAddr: TUniQuery;
    cbSex: TComboBox;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    bSaveAll1: TdxBarButton;
    lcbTown: TcxLookupComboBox;
    lcbRegion: TcxLookupComboBox;
    lcbDistrict: TcxLookupComboBox;
    dxBarManager1Bar3: TdxBar;
    perData: TfrxReport;
    printFRX: TdxBarLargeButton;
    fDataset1: TfrxDBDataset;
    fDoc: TfrxDBDataset;
    fAddr: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure lcbDistrictPropertiesChange(Sender: TObject);
    procedure lcbRegionPropertiesChange(Sender: TObject);
    procedure bSaveAll1Click(Sender: TObject);
    procedure eNameKeyPress(Sender: TObject; var Key: Char);
    procedure eSurnameKeyPress(Sender: TObject; var Key: Char);
    procedure ePartonKeyPress(Sender: TObject; var Key: Char);
    procedure eEssueKeyPress(Sender: TObject; var Key: Char);
    procedure eSerialKeyPress(Sender: TObject; var Key: Char);
    procedure eMailKeyPress(Sender: TObject; var Key: Char);
    procedure eStreetKeyPress(Sender: TObject; var Key: Char);
    procedure eHouseKeyPress(Sender: TObject; var Key: Char);
    procedure eFlatKeyPress(Sender: TObject; var Key: Char);
    procedure eDocNumberKeyPress(Sender: TObject; var Key: Char);
    procedure eNumberKeyPress(Sender: TObject; var Key: Char);
    procedure eUnitCodeKeyPress(Sender: TObject; var Key: Char);
    procedure printFRXClick(Sender: TObject);
    procedure gdSecondInforlClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
   uses mainEmp;
{ TForm3 }
//------------------------------------------------------------------------------
procedure TForm4.bSaveAll1Click(Sender: TObject);
begin
//Проверки на заполнение полей формы
  if eEssue.Text = ''  then
  begin
    ShowMessage('Заполните поле "выдан"');
    abort;
  end;
  if DateToStr(dtpEssueDate.Date) = ''  then
  begin
    ShowMessage('Заполните поле "Дата выдачи"');
    abort;
  end;
  if eUnitCode.Text = ''  then
  begin
    ShowMessage('Заполните поле "код подразделения"');
    abort;
  end;
  if eSerial.Text = ''  then
  begin
    ShowMessage('Заполните поле "Серия"');
    abort;
  end;
  if eDocNumber.Text = ''  then
  begin
    ShowMessage('Заполните поле "Номер"');
    abort;
  end;
    if eStreet.Text = ''  then
  begin
    ShowMessage('Заполните поле "Улица"');
    abort;
  end;
  if eHouse.Text = ''  then
  begin
    ShowMessage('Заполните поле "Дом"');
    abort;
  end;
  if eFlat.Text = ''  then
  begin
    ShowMessage('Заполните поле "Квартира"');
    abort;
  end;
    if eName.Text = ''  then
  begin
    ShowMessage('Заполните поле "Имя"');
    abort;
  end;
    if eSurname.Text = ''  then
  begin
    ShowMessage('Заполните поле "Фамилия"');
    abort;
  end;
    if cbSex.Text = ''  then
  begin
    ShowMessage('Заполните поле "пол"');
    abort;
  end;
    if eNumber.Text = ''  then
  begin
    ShowMessage('Заполните поле "Номер телефона"');
    abort;
  end;
  //Заполнение бд данными
  uqDoc.Append;
  uqDoc.FieldValues['issueed_by']:=eEssue.Text;
  uqDoc.FieldValues['date_of_issue']:=dtpEssueDate.Date;
  uqDoc.FieldValues['unit_code']:=eUnitCode.Text;
  uqDoc.FieldValues['series']:=eSerial.Text;
  uqDoc.FieldValues['number']:=eDocNumber.Text;
  uqDoc.Post;

  uqGetDoc.Close;
  uqGetDoc.ParamByName('issueed_by').AsString:= eEssue.Text;
  uqGetDoc.ParamByName('series').AsString:= eSerial.Text;
  uqGetDoc.ParamByName('number').AsString:= eDocNumber.Text;
  uqGetDoc.Open;

  uqAddr.Append;
  uqAddr.FieldValues ['district_id'] := lcbDistrict.EditValue;
  uqAddr.FieldValues ['region_id'] := lcbregion.EditValue;
  uqAddr.FieldValues ['town_id'] :=  lcbTown.EditValue;
  uqAddr.FieldValues ['street']:=eStreet.Text;
  uqAddr.FieldValues ['house']:=eHouse.Text;
  uqAddr.FieldValues ['flat']:=eFlat.Text;
  uqAddr.Post;

  uqGetAddr.close;
  uqGetAddr.ParamByName('flat').AsString := eFlat.Text;
  uqGetAddr.ParamByName('street').AsString := eStreet.Text;
  uqGetAddr.ParamByName('house').AsString := eHouse.Text;
  uqGetAddr.ParamByName('district_id').AsString := lcbDistrict.EditValue;
  uqGetAddr.ParamByName('region_id').AsString := lcbregion.EditValue;
  uqGetAddr.ParamByName('town_id').AsString := lcbTown.EditValue;
  uqGetAddr.Open;

  uqPeople.Append;
  uqPeople.FieldValues['name']:=eName.Text;
  uqPeople.FieldValues['Surname']:=eSurname.Text;
  uqPeople.FieldValues['Patron']:=eParton.Text;
    if cbSex.Text = 'Мужской' then
      uqPeople.FieldValues['Sex']:= 1;
    if cbSex.Text = 'Женский' then
      uqPeople.FieldValues['Sex']:= 2;
  uqPeople.FieldValues['email']:=eMail.Text;
  uqPeople.FieldValues['Number']:=eNumber.Text;
  uqPeople.FieldValues['birth']:=dtpBirth.Date;
  uqPeople.FieldValues['doc_id']:=uqGetDoc.FieldByName('id').AsInteger;
  uqPeople.FieldValues['addr_id']:=uqGetAddr.FieldByName('id').AsInteger;
  uqPeople.Post;

  //получаем id только что созданного people
  uqGetPeople.Close;
  uqGetPeople.ParamByName('p_name').AsString :=eName.Text;
  uqGetPeople.ParamByName('p_surname').AsString :=eSurname.Text;
  uqGetPeople.ParamByName('p_birth').AsDate  :=dtpBirth.Date;
  uqGetPeople.Open;

  uqLibraryCard.Append;
  uqLibraryCard.FieldValues ['date_of_issue']:= Date;
  uqLibraryCard.FieldValues ['expirate_date']:= IncYear(Date,2);
  uqLibraryCard.FieldValues ['number']:= IntToStr(uqgetPeople.FieldByName('id').AsInteger) + '-' + IntToStr(yearof(date));
  uqLibraryCard.FieldValues['people_id']:= uqGetPeople.FieldByName('id').AsInteger;
  uqLibraryCard.Post;
  printFRX.Enabled:= True;
end;


//------------------------------------------------------------------------------
//Блок регулярных выражений для полей Edit
procedure TForm4.printFRXClick(Sender: TObject);
begin
  if uqGetDoc.RecordCount > 0 then
  begin
    if perData.PrepareReport then
  perData.ShowPreparedReport;
  end;
//  if perData.PrepareReport then
//  perData.ShowPreparedReport;
end;

procedure TForm4.eDocNumberKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['0'..'9',#08,#32]) then Key := #0;
   if eDocNumber.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eEssueKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['А'..'Я','а'..'я',#08,#32,'-']) then Key := #0;
   if eEssue.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eFlatKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['0'..'9',#08,#32]) then Key := #0;
   if eFlat.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eHouseKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['0'..'9',#08,#32]) then Key := #0;
   if eHouse.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eMailKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['A'..'Z','a'..'z',#08,#32,'-','@','_','.','0'..'9']) then Key := #0;
   if eMail.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eNameKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['А'..'Я','а'..'я',#08,#32,'-']) then Key := #0;
   if eName.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eNumberKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['0'..'9',#08,#32]) then Key := #0;
   if eNumber.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.ePartonKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['А'..'Я','а'..'я',#08,#32,'-']) then Key := #0;
   if eParton.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eSerialKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['0'..'9',#08,#32]) then Key := #0;
   if eSerial.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eStreetKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['А'..'Я','а'..'я',#08,#32,'-']) then Key := #0;
   if eStreet.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eSurnameKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['А'..'Я','а'..'я',#08,#32,'-']) then Key := #0;
   if eSurname.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;

procedure TForm4.eUnitCodeKeyPress(Sender: TObject; var Key: Char);
var
 simvol: AnsiString;
begin
  simvol:=String(Key);
  if not ( Char(simvol [1]) in ['0'..'9',#08,#32]) then Key := #0;
   if eUnitCode.SelStart = 0 then
    if  (key in [#32]) then
     key:= #0;
end;
procedure TForm4.FormCreate(Sender: TObject);
begin
  uqPeople.Open;
  uqLibraryCard.Open;
  DisableAero := True;
  uqGetDistrict.Open;
  uqDoc.Open;
  uqAddr.Open;
  uqGetDoc.Open;
end;
procedure TForm4.gdSecondInforlClick(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
//передача параметров в скрипты
procedure TForm4.lcbDistrictPropertiesChange(Sender: TObject);
begin
  uqGetRegion.Close;
  uqGetRegion.ParamByName('p_district_id').AsInteger:= lcbDistrict.EditValue;
  uqGetRegion.Open;
  lcbRegion.Enabled:= true;
end;
//------------------------------------------------------------------------------
procedure TForm4.lcbRegionPropertiesChange(Sender: TObject);
begin
  uqGetTown.Close;
  uqGetTown.ParamByName('p_region_id').AsInteger:= lcbRegion.EditValue;
  uqGetTown.Open;
  lcbTown.Enabled:= true;
end;
end.
