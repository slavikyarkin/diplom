unit peopleBookRating;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, DBAccess, Uni, MemDS;

type
  TForm18 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxPageControl1: TcxPageControl;
    tsBook: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    bExtradition: TcxTabSheet;
    dxBarManager1Bar3: TdxBar;
    bClose: TdxBarLargeButton;
    bRefresh: TdxBarLargeButton;
    tsCountReadBook: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    uqBook: TUniQuery;
    uqExtradition: TUniQuery;
    uqCountReadBook: TUniQuery;
    dsBook: TUniDataSource;
    dsExtradition: TUniDataSource;
    dsCountReadBook: TUniDataSource;
    cxGrid1DBTableView1login: TcxGridDBColumn;
    cxGrid1DBTableView1count: TcxGridDBColumn;
    cxGrid3DBTableView1login: TcxGridDBColumn;
    cxGrid3DBTableView1count: TcxGridDBColumn;
    cxGrid2DBTableView1login: TcxGridDBColumn;
    cxGrid2DBTableView1sum: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses login;
{ TForm18 }

procedure TForm18.bCloseClick(Sender: TObject);
begin
  Form18.Close;
end;

procedure TForm18.bRefreshClick(Sender: TObject);
begin
  uqBook.Refresh;
  uqExtradition.Refresh;
  uqCountReadBook.Refresh;
end;

procedure TForm18.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm18.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  uqBook.Close;
  uqBook.Open;
  uqExtradition.Close;
  uqExtradition.Open;
  uqCountReadBook.Close;
  uqCountReadBook.Open;
end;

end.
