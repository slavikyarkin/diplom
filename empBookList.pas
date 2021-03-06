unit empBookList;

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
  DBAccess, Uni, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid;

type
  TForm16 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1book_name: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1edition_name: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_edition: TcxGridDBColumn;
    cxGrid1DBTableView1isbn: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1office: TcxGridDBColumn;
    cxGrid1DBTableView1office_addr: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    uqSearchBook: TUniQuery;
    dsSearchBook: TUniDataSource;
    dxClose: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarButton2: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxCloseClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses login, empBookInfo, empJournalBook, empInfoBook;

{ TForm16 }
//------------------------------------------------------------------------------
procedure TForm16.dxBarButton2Click(Sender: TObject);
begin
  empInfoBook.book_id := uqSearchBook.FieldValues['book_id'];
  Form25.ShowModal;
end;
//------------------------------------------------------------------------------
procedure TForm16.dxBarLargeButton1Click(Sender: TObject);
begin
  Form19.ShowModal;
end;
//------------------------------------------------------------------------------
procedure TForm16.dxBarLargeButton2Click(Sender: TObject);
begin
 Form23.ShowModal;
 empJournalBook.lib_id:= uqSearchBook.FieldValues['lib_id'];
end;
//------------------------------------------------------------------------------
procedure TForm16.dxCloseClick(Sender: TObject);
begin
 Form16.Close;
end;
//------------------------------------------------------------------------------
procedure TForm16.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqSearchBook.Close;
  uqSearchBook.Open;
end;
//------------------------------------------------------------------------------
procedure TForm16.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio;
  Form16.WindowState := wsMaximized;
  uqSearchBook.Close;
  uqSearchBook.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqSearchBook.Open;
end;
end.
