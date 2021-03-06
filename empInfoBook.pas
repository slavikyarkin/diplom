unit empInfoBook;
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
  TForm25 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    uqBook: TUniQuery;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxSplitter1: TcxSplitter;
    cxDBLabel1: TcxDBLabel;
    dsBook: TUniDataSource;
    cxDBMemo1: TcxDBMemo;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    dxBarLargeButton3: TdxBarLargeButton;
    uqReview: TUniQuery;
    dsReview: TUniDataSource;
    cxGrid1DBTableView1text: TcxGridDBColumn;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1login: TcxGridDBColumn;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form25: TForm25;
  book_id : integer;

implementation

{$R *.dfm}

uses login, newReview;
{ TForm9 }
//------------------------------------------------------------------------------
procedure TForm25.dxBarLargeButton1Click(Sender: TObject);
begin
  Form10.ShowModal;
  uqReview.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm25.dxBarLargeButton2Click(Sender: TObject);
begin
  Form25.Close;
end;
//------------------------------------------------------------------------------
procedure TForm25.dxBarLargeButton3Click(Sender: TObject);
begin
  uqReview.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm25.dxBarLargeButton4Click(Sender: TObject);
begin
uqReview.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm25.dxBarLargeButton5Click(Sender: TObject);
begin
Form25.Close;
end;
//------------------------------------------------------------------------------
procedure TForm25.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;
//------------------------------------------------------------------------------
procedure TForm25.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio;
  uqBook.Close;
  uqBook.ParamByName('p_book_id').AsInteger:= book_id;
  uqBook.Open;
  uqReview.Close;
  uqReview.ParamByName('p_book_id').AsInteger:= book_id;
  uqReview.Open;
end;
end.

