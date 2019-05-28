unit peopleBook;

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
  DBAccess, Uni, MemDS, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TForm15 = class(TdxRibbonForm)
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
    uqMyBook: TUniQuery;
    dsMyBook: TUniDataSource;
    cxGrid1DBTableView1book_name: TcxGridDBColumn;
    cxGrid1DBTableView1edition_name: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_edition: TcxGridDBColumn;
    cxGrid1DBTableView1isbn: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1availability: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    dxBarManager1Bar3: TdxBar;
    bClose: TdxBarLargeButton;
    bDetail: TdxBarLargeButton;
    bRating: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bDetailClick(Sender: TObject);
    procedure bRatingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses login, peopleBookDetail, peopleBookRating;
{ TForm15 }

procedure TForm15.bCloseClick(Sender: TObject);
begin
  Form15.Close;
end;

procedure TForm15.bDetailClick(Sender: TObject);
begin
  peopleBookDetail.library_id:= uqMyBook.FieldValues['id'];
  Form17.ShowModal;
end;

procedure TForm15.bRatingClick(Sender: TObject);
begin
  Form18.ShowModal;
end;

procedure TForm15.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm15.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  uqMyBook.Close;
  uqMyBook.ParamByName('p_people_id').AsInteger:=  login.people_id;
  uqMyBook.Open;
end;

end.
