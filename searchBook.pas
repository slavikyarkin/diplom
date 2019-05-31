unit searchBook;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, DBAccess, Uni, MemDS;

type
  TForm11 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    uqSearchBook: TUniQuery;
    dsSearchBook: TUniDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1book_name: TcxGridDBColumn;
    cxGrid1DBTableView1edition_name: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_edition: TcxGridDBColumn;
    cxGrid1DBTableView1isbn: TcxGridDBColumn;
    cxGrid1DBTableView1office: TcxGridDBColumn;
    cxGrid1DBTableView1office_addr: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    dxBarManager1Bar3: TdxBar;
    bAddChosen: TdxBarLargeButton;
    bClose: TdxBarLargeButton;
    uqChosen: TUniQuery;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    bBookInfo: TdxBarLargeButton;
    bChosen: TdxBarLargeButton;
    bRefresh: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bAddChosenClick(Sender: TObject);
    procedure uqSearchBookAfterScroll(DataSet: TDataSet);
    procedure bBookInfoClick(Sender: TObject);
    procedure bChosenClick(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure applyFilter;
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

{ TForm11 }
uses login, bookInfo, chosenBook;

procedure TForm11.bAddChosenClick(Sender: TObject);
begin
  if uqChosen.RecordCount = 0 then
  begin
    uqChosen.Edit;
    uqChosen.FieldValues['people_id']:= login.people_id;
    uqChosen.FieldValues['library_id']:= uqSearchBook.FieldValues['id'];
    uqChosen.Post;
  end
  else
    uqChosen.Delete;

  applyFilter;
end;

procedure TForm11.bBookInfoClick(Sender: TObject);
begin
  bookInfo.book_id:= uqSearchBook.FieldValues['book_id'];
  Form9.ShowModal;
end;

procedure TForm11.bCloseClick(Sender: TObject);
begin
  Form11.Close;
end;

procedure TForm11.bRefreshClick(Sender: TObject);
begin
  applyFilter;
end;

procedure TForm11.bChosenClick(Sender: TObject);
begin
  Form13.ShowModal;
  applyFilter;
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  Form11.WindowState := wsMaximized;
  uqSearchBook.Close;
  uqSearchBook.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqSearchBook.Open;
end;

procedure TForm11.uqSearchBookAfterScroll(DataSet: TDataSet);
begin
  uqChosen.Close;
  uqChosen.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqChosen.ParamByName('p_library_id').AsInteger:= uqSearchBook.FieldValues['id'];
  uqChosen.Open;
  if uqChosen.RecordCount = 0 then
    bAddChosen.Caption:= 'Добавить в избранные'
  else
    bAddChosen.Caption:= 'Убрать из избранных';
end;

procedure TForm11.applyFilter;
begin
  uqSearchBook.Refresh;
  if uqSearchBook.RecordCount = 0 then
  begin
    bAddChosen.Enabled:= false;
    bBookInfo.Enabled:= false;
  end
  else
  begin
    bAddChosen.Enabled:= true;
    bBookInfo.Enabled:= true;
  end;
end;

end.
