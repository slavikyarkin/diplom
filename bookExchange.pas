unit bookExchange;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, Uni,
  MemDS, cxGridLevel, cxGridCustomView, cxGrid;

type
  TForm20 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    bAdd: TdxBarLargeButton;
    bRefresh: TdxBarLargeButton;
    bClose: TdxBarLargeButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    uqAnnouncement: TUniQuery;
    dsAnnouncement: TUniDataSource;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1login: TcxGridDBColumn;
    cxGrid1DBTableView1announcement_name: TcxGridDBColumn;
    cxGrid1DBTableView1comm: TcxGridDBColumn;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1case: TcxGridDBColumn;
    bPeopleAnn: TdxBarLargeButton;
    bBookInfo: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
    procedure bPeopleAnnClick(Sender: TObject);
    procedure bBookInfoClick(Sender: TObject);
  private
    { Private declarations }
    procedure refresh;
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

uses login, newAnnouncement, peopleAnnouncement, bookInfo;
{ TForm20 }

procedure TForm20.refresh;
begin
  uqAnnouncement.Refresh;
  if uqAnnouncement.RecordCount = 0 then
  begin
    bBookInfo.Enabled:= false;
  end
  else
  begin
    bBookInfo.Enabled:= true;
  end;
end;

procedure TForm20.bAddClick(Sender: TObject);
begin
  newAnnouncement.openForm:= false;
  Form21.ShowModal;
  refresh;
end;

procedure TForm20.bBookInfoClick(Sender: TObject);
begin
  bookInfo.book_id:= uqAnnouncement.FieldValues['book_id'];
  Form9.ShowModal;
end;

procedure TForm20.bCloseClick(Sender: TObject);
begin
  Form20.Close;
end;

procedure TForm20.bPeopleAnnClick(Sender: TObject);
begin
  Form22.ShowModal;
  refresh;
end;

procedure TForm20.bRefreshClick(Sender: TObject);
begin
  refresh;
end;

procedure TForm20.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm20.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  Form20.WindowState := wsMaximized;
  uqAnnouncement.Close;
  uqAnnouncement.Open;
  refresh;
end;

end.
