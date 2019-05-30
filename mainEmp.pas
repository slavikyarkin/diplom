unit mainEmp;

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
  dxRibbonBackstageViewGalleryControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, MemDS, Uni, UniProvider,
  PostgreSQLUniProvider, frxClass, frxDBSet;

type
  TForm1 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar1: TdxBar;
    bNewPeople: TdxBarLargeButton;
    bInfPeople: TdxBarLargeButton;
    bJornalPeople: TdxBarLargeButton;
    bGeneralJournal: TdxBarLargeButton;
    gdbtvPeople: TcxGridDBTableView;
    glPeople: TcxGridLevel;
    gPeople: TcxGrid;
    cNumber: TcxGridDBColumn;
    cName: TcxGridDBColumn;
    cSurname: TcxGridDBColumn;
    cPatron: TcxGridDBColumn;
    cBirth: TcxGridDBColumn;
    cDate_of_issue: TcxGridDBColumn;
    cExpirate_date: TcxGridDBColumn;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    connect: TUniConnection;
    uqPeople: TUniQuery;
    dsPeople: TUniDataSource;
    dxBarButton1: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    dxBarSubItem1: TdxBarSubItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBarEdit2: TdxBarEdit;
    dxBarSubItem2: TdxBarSubItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarEdit3: TdxBarEdit;
    dxBarManager1Bar3: TdxBar;
    fast: TdxBarLargeButton;
    f1: TfrxDBDataset;
    frxReport2: TfrxReport;
    f2: TfrxDBDataset;
    frxReport1: TfrxReport;
    uqPeopleID: TUniQuery;
    dsPeopleID: TUniDataSource;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarEdit3Change(Sender: TObject);
    procedure bNewPeopleClick(Sender: TObject);
    procedure bJornalPeopleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bInfPeopleClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure fastClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;
 // check

var
  Form1: TForm1;
  people_id : integer;

implementation

{$R *.dfm}

//uses newPeople, PeopleJournal, BookList, PeopleInform, login;
uses login, createNewUser, peopleJournal, empInfo, empBookList, empBookPeople;


procedure TForm1.bInfPeopleClick(Sender: TObject);
begin
    Form14.ShowModal;
end;

procedure TForm1.bJornalPeopleClick(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.bNewPeopleClick(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.dxBarButton1Click(Sender: TObject);
begin
Form16.ShowModal;
end;

procedure TForm1.dxBarEdit3Change(Sender: TObject);
var s: string;
begin
  s:= #39;
  uqPeople.Close;
  uqPeople.MacroByName('w').Value:= ' where lc.number ilike ' + s +'%' + dxBarEdit3.Text + '%' + s;
  s := uqPeople.MacroByName('w').Value;
  uqPeople.Open;
end;

procedure TForm1.dxBarLargeButton1Click(Sender: TObject);
begin
        Form23.show;
end;

procedure TForm1.fastClick(Sender: TObject);
begin
// frxReport2.ShowPreparedReport;
// frxReport2.Print;
// TForm1.frxReport2.Preview;
    uqPeopleID.close;
    uqPeopleID.ParamByName('pid').AsInteger:= uqPeople.FieldValues['id'];
    uqPeopleID.Open;
if frxReport2.PrepareReport then
frxReport2.ShowPreparedReport;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DisableAero := True;
//  uqPeople.Close;
//  uqPeople.MacroByName('w').Value:= '';
//  uqPeople.Open;
    uqPeople.Open;
    uqPeople.Refresh;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   dxRibbonStatusBar1.Panels[0].Text:= login.fio;
   uqPeople.Open;
   uqPeople.Refresh;
end;
end.

