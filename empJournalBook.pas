unit empJournalBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni;

type
  TForm23 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    uqBookJournal: TUniQuery;
    dsPeopleJournal: TDataSource;
    cxGridDBTableView2name: TcxGridDBColumn;
    cxGridDBTableView2author_fio: TcxGridDBColumn;
    cxGridDBTableView2people_fio: TcxGridDBColumn;
    cxGridDBTableView2date_of_issue: TcxGridDBColumn;
    cxGridDBTableView2isbn: TcxGridDBColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;
  lib_id : integer;
implementation

{$R *.dfm}
      uses login;
{ TForm23 }
//------------------------------------------------------------------------------
procedure TForm23.dxBarLargeButton1Click(Sender: TObject);
begin
  uqBookJournal.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm23.dxBarLargeButton2Click(Sender: TObject);
begin
  Form23.Close;
end;
//------------------------------------------------------------------------------
procedure TForm23.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;
//------------------------------------------------------------------------------
procedure TForm23.FormShow(Sender: TObject);
begin
uqBookJournal.Close;
uqBookJournal.ParamByName('lib_id').AsInteger := lib_id;
uqBookJournal.Open;
end;
end.
