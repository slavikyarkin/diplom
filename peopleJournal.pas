unit peopleJournal;

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
  dxSkinXmas2008Blue, cxTextEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  DBAccess, MemDS, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Uni,
  frxClass, frxDBSet;

type
  TForm5 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    gPeopleJournalDBTableView1: TcxGridDBTableView;
    gPeopleJournalLevel1: TcxGridLevel;
    gPeopleJournal: TcxGrid;
    gPeopleJournalDBTableView1name: TcxGridDBColumn;
    gPeopleJournalDBTableView1author_fio: TcxGridDBColumn;
    gPeopleJournalDBTableView1emp_fio_rec: TcxGridDBColumn;
    gPeopleJournalDBTableView1date_of_issue: TcxGridDBColumn;
    gPeopleJournalDBTableView1st: TcxGridDBColumn;
    uqPeopleJournal: TUniQuery;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBB4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxbbAddNewBook: TdxBarButton;
    dsPeopleJournal: TDataSource;
    dsJournal: TUniDataSource;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxReturn: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    ReportBook: TfrxReport;
    fjournal: TfrxDBDataset;
    frxJournal2: TfrxDBDataset;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton5: TdxBarLargeButton;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar8: TdxBar;
    dxBarManager1Bar9: TdxBar;
    dxBarManager1Bar10: TdxBar;
    procedure FormCreate(Sender: TObject);
    procedure dxBB4Click(Sender: TObject);
    procedure dxReturnClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxbbAddNewBookClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
// check


{$R *.dfm}
    uses mainEmp, addBook, issueBookpas, newBookRecord, login;
{ TForm4 }

// check

procedure TForm5.dxReturnClick(Sender: TObject);
begin
   issueBookpas.lib_id:= uqPeopleJournal.FieldValues['lib_id'];
   issueBookpas.journal_id:= uqPeopleJournal.FieldValues['journal_id'];
   Form8.Show;
end;
//------------------------------------------------------------------------------
procedure TForm5.dxBarButton6Click(Sender: TObject);
begin
      uqPeopleJournal.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm5.dxBarButton7Click(Sender: TObject);
begin
       if uqPeopleJournal.RecordCount > 0 then
  begin
    if ReportBook.PrepareReport then
  ReportBook.ShowPreparedReport;
  end;
end;

procedure TForm5.dxBB4Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm5.dxbbAddNewBookClick(Sender: TObject);
begin
   Form12.ShowModal;
end;
//------------------------------------------------------------------------------
procedure TForm5.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  inherited;
  uqPeopleJournal.Close;
  uqPeopleJournal.Open;
  end;
//------------------------------------------------------------------------------
procedure TForm5.FormShow(Sender: TObject);
begin
 dxRibbonStatusBar1.Panels[0].Text:= login.fio;
end;

end.

