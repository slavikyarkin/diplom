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
  TForm17 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form17: TForm17;
  book_id : integer;

implementation

{$R *.dfm}

uses login, newReview;
{ TForm17 }

procedure TForm17.dxBarLargeButton2Click(Sender: TObject);
begin
  Form17.Close;
end;

procedure TForm17.dxBarLargeButton3Click(Sender: TObject);
begin
  uqReview.Refresh;
end;

procedure TForm17.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm17.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio;

  uqBook.Close;
  uqBook.Open;

  uqReview.Close;
  uqReview.Open;
end;

end.
