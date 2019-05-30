unit bookExchange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl;

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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

uses login, newAnnouncement;
{ TForm20 }

procedure TForm20.bAddClick(Sender: TObject);
begin
  Form21.ShowModal;
end;

procedure TForm20.bCloseClick(Sender: TObject);
begin
  Form20.Close;
end;

procedure TForm20.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm20.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  Form20.WindowState := wsMaximized;
end;

end.
