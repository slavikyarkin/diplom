unit empPeopleBookInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, dxRibbonCustomizationForm, frxClass, frxDBSet, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxSkinsForm, dxStatusBar, dxRibbonStatusBar;

type
  TForm24 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsMyJur: TUniDataSource;
    uqMyJur: TUniQuery;
    f1: TfrxDBDataset;
    f2: TfrxDBDataset;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1author_fio: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_issue: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    frxReport1: TfrxReport;
    dxBarButton2: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarButton3: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;
  pid : integer;
implementation

{$R *.dfm}
        uses peopleJournal, mainEmp;
{ TForm24 }
//------------------------------------------------------------------------------
procedure TForm24.dxBarButton1Click(Sender: TObject);
begin
 if frxReport1.PrepareReport then
  frxReport1.ShowPreparedReport;
end;
//------------------------------------------------------------------------------
procedure TForm24.dxBarButton3Click(Sender: TObject);
begin
 Form24.Close;
end;
//------------------------------------------------------------------------------
procedure TForm24.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;
//------------------------------------------------------------------------------
procedure TForm24.FormShow(Sender: TObject);
begin
uqMyJur.Close;
uqMyJur.ParamByName('pid').AsInteger:= pid;
uqMyJur.Open;
end;
end.
