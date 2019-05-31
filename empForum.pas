unit empForum;

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
  TForm26 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1login: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1announcement_name: TcxGridDBColumn;
    cxGrid1DBTableView1comm: TcxGridDBColumn;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1case: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    uqAnnouncement: TUniQuery;
    dsAnnouncement: TUniDataSource;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}
     uses mainEmp, login;
{ TForm26 }

procedure TForm26.dxBarButton1Click(Sender: TObject);
begin
uqAnnouncement.Delete;
end;

procedure TForm26.dxBarButton2Click(Sender: TObject);
begin
  uqAnnouncement.Refresh;
end;

procedure TForm26.dxBarButton3Click(Sender: TObject);
begin
   Form26.Close;
end;

procedure TForm26.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

end.
