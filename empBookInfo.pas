unit empBookInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, Data.DB, MemDS, DBAccess, Uni, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxDBLabel, cxMemo, cxDBEdit;

type
  TForm19 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    uqBook: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsBook: TUniDataSource;
    dxBarLargeButton3: TdxBarLargeButton;
    uqReview: TUniQuery;
    dsReview: TUniDataSource;
    cxGrid1DBTableView1text: TcxGridDBColumn;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1login: TcxGridDBColumn;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarButton1: TdxBarButton;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar3: TdxBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
var
  Form19: TForm19;
  comment_id : integer;

implementation

{$R *.dfm}

uses login, newReview;
{ TForm19 }
//------------------------------------------------------------------------------
procedure TForm19.dxBarButton1Click(Sender: TObject);
begin
// empBookInfo.comment_id:= uqReview.FieldValues['id'];
     if uqReview.RecordCount > 0 then
  begin
    uqReview.Delete;
    uqReview.Refresh;
  end;
end;
//------------------------------------------------------------------------------
procedure TForm19.dxBarLargeButton2Click(Sender: TObject);
begin
  Form19.Close;
end;
//------------------------------------------------------------------------------
procedure TForm19.dxBarLargeButton3Click(Sender: TObject);
begin
  uqReview.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm19.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;
//------------------------------------------------------------------------------
procedure TForm19.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio;

  uqBook.Close;
  uqBook.Open;

  uqReview.Close;
  uqReview.Open;
end;
end.
