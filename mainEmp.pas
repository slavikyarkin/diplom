unit mainEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  DBAccess, Uni, MemDS, UniProvider, PostgreSQLUniProvider, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid;

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
    procedure FormCreate(Sender: TObject);
    procedure bNewPeopleClick(Sender: TObject);
    procedure bJornalPeopleClick(Sender: TObject);
    procedure bGeneralJournalClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarEdit3Change(Sender: TObject);
    procedure bInfPeopleClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqPeople.Close;
  uqPeople.MacroByName('w').Value:= '';

  uqPeople.Open;
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
