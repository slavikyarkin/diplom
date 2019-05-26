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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Uni;

type
  TForm5 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
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
    dxBarManager1Bar3: TdxBar;
    dxBB4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarManager1Bar4: TdxBar;
    dxbbAddNewBook: TdxBarButton;
    dsPeopleJournal: TDataSource;
    dsJournal: TUniDataSource;
    procedure FormCreate(Sender: TObject);
    procedure dxBB4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
    uses mainEmp, addBook;
{ TForm4 }

//procedure TForm4.dxBarButton2Click(Sender: TObject);
//begin
//Application.CreateForm(TForm6, Form6);
//Form6.ShowModal;
//end;

procedure TForm5.dxBB4Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  inherited;
  uqPeopleJournal.Close;
  uqPeopleJournal.Open;
  end;

end.

