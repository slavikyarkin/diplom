unit empBookPeople;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl;

type
  TForm23 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;       // check

implementation

{$R *.dfm}

{ TForm23 }

procedure TForm23.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

end.
