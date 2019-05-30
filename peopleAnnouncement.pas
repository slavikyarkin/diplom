unit peopleAnnouncement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  DBAccess, Uni, MemDS, cxGridLevel, cxGridCustomView, cxGrid;

type
  TForm22 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    bClose: TdxBarLargeButton;
    bAdd: TdxBarLargeButton;
    bEdit: TdxBarLargeButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    uqAnnoucement: TUniQuery;
    dsAnnoucement: TUniDataSource;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1announcement_name: TcxGridDBColumn;
    cxGrid1DBTableView1comm: TcxGridDBColumn;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1case: TcxGridDBColumn;
    bBookInfo: TdxBarLargeButton;
    bRefresh: TdxBarLargeButton;
    bDel: TdxBarLargeButton;
    bStatus: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bBookInfoClick(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
    procedure bDelClick(Sender: TObject);
    procedure bStatusClick(Sender: TObject);
    procedure uqAnnoucementAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure refresh;
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

{$R *.dfm}

uses login, newAnnouncement, bookInfo;
{ TForm22 }

procedure TForm22.refresh;
begin
  uqAnnoucement.Refresh;
  if uqAnnoucement.RecordCount = 0 then
  begin
    bEdit.Enabled:= false;
    bStatus.Enabled:= false;
    bDel.Enabled:= false;
    bBookInfo.Enabled:= false;
  end
  else
  begin
    bEdit.Enabled:= true;
    bStatus.Enabled:= true;
    bDel.Enabled:= true;
    bBookInfo.Enabled:= true;
  end;
end;

procedure TForm22.bAddClick(Sender: TObject);
begin
  newAnnouncement.openForm:= false;
  Form21.ShowModal;
  refresh;
end;

procedure TForm22.bBookInfoClick(Sender: TObject);
begin
  bookInfo.book_id:= uqAnnoucement.FieldValues['book_id'];
  Form9.ShowModal;
end;

procedure TForm22.bCloseClick(Sender: TObject);
begin
  Form22.Close;
end;

procedure TForm22.bDelClick(Sender: TObject);
begin
  uqAnnoucement.Delete;
  refresh;
end;

procedure TForm22.bEditClick(Sender: TObject);
begin
  newAnnouncement.openForm:= true;
  newAnnouncement.AnnouncementId:= uqAnnoucement.FieldValues['id'];
  Form21.ShowModal;
  refresh;
end;

procedure TForm22.bRefreshClick(Sender: TObject);
begin
  refresh;
end;

procedure TForm22.bStatusClick(Sender: TObject);
begin
  uqAnnoucement.Edit;
  if uqAnnoucement.FieldValues['type'] then
    uqAnnoucement.FieldValues['type']:= false
  else
    uqAnnoucement.FieldValues['type']:= true;

  uqAnnoucement.Post;
  refresh;
end;

procedure TForm22.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm22.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:= login.fio + ' ' + login.card;
  uqAnnoucement.Close;
  uqAnnoucement.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqAnnoucement.Open;
  refresh;
end;

procedure TForm22.uqAnnoucementAfterScroll(DataSet: TDataSet);
begin
  if uqAnnoucement.RecordCount > 0 then
  begin
    if uqAnnoucement.FieldValues['type'] then
      bStatus.Caption:= 'Закрыть'
    else
      bStatus.Caption:= 'Открыть';
    end;
end;

end.
