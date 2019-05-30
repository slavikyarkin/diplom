unit chosenBook;

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
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS;

type
  TForm13 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1Bar3: TdxBar;
    uqChosen: TUniQuery;
    dsChosen: TUniDataSource;
    cxGrid1DBTableView1book_name: TcxGridDBColumn;
    cxGrid1DBTableView1edition_name: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_edition: TcxGridDBColumn;
    cxGrid1DBTableView1isbn: TcxGridDBColumn;
    cxGrid1DBTableView1office: TcxGridDBColumn;
    cxGrid1DBTableView1office_addr: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1availability: TcxGridDBColumn;
    bDelChosen: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    bBooKInfo: TdxBarLargeButton;
    bSearchBook: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure bDelChosenClick(Sender: TObject);
    procedure bBooKInfoClick(Sender: TObject);
    procedure bSearchBookClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses login, bookInfo, searchBook;
{ TForm13 }

procedure TForm13.bBooKInfoClick(Sender: TObject);
begin
  if uqChosen.RecordCount > 0 then
  begin
    bookInfo.book_id:= uqChosen.FieldValues['book_id'];
    Form9.ShowModal;
  end
  else
    ShowMessage('Нет записей!');
end;

procedure TForm13.bDelChosenClick(Sender: TObject);
begin
  if uqChosen.RecordCount > 0 then
    uqChosen.Delete
  else
    ShowMessage('Нет записей!');

  uqChosen.Refresh;
end;

procedure TForm13.bSearchBookClick(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm13.dxBarLargeButton1Click(Sender: TObject);
begin
  Form13.Close;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  uqChosen.Close;
  uqChosen.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqChosen.Open;
end;

end.
