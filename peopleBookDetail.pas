unit peopleBookDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS;

type
  TForm17 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    HDBTableView1: TcxGridDBTableView;
    HLevel1: TcxGridLevel;
    H: TcxGrid;
    dxBarManager1Bar3: TdxBar;
    bClose: TdxBarLargeButton;
    uqDetail: TUniQuery;
    dsDetail: TUniDataSource;
    HDBTableView1login: TcxGridDBColumn;
    HDBTableView1date_of_issue: TcxGridDBColumn;
    HDBTableView1date_of_return: TcxGridDBColumn;
    bRefresh: TdxBarLargeButton;
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
  Form17: TForm17;
  library_id : integer;

implementation

{$R *.dfm}

uses login;
{ TForm17 }

procedure TForm17.bCloseClick(Sender: TObject);
begin
  Form17.Close;
end;

procedure TForm17.bRefreshClick(Sender: TObject);
begin
  uqDetail.Refresh;
end;

procedure TForm17.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm17.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  uqDetail.Close;
  uqDetail.ParamByName('p_library_id').AsInteger:= library_id;
  uqDetail.Open;
end;

end.
