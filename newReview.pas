unit newReview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, Data.DB, DBAccess, Uni, MemDS, cxMemo,
  cxDBEdit;

type
  TForm10 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    bSend: TdxBarLargeButton;
    bClose: TdxBarLargeButton;
    cxDBMemo1: TcxDBMemo;
    uqReview: TUniQuery;
    dsReview: TUniDataSource;
    procedure FormCreate(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses login, bookInfo;
{ TForm10 }

procedure TForm10.bCloseClick(Sender: TObject);
begin
  Form10.Close;
end;

procedure TForm10.bSendClick(Sender: TObject);
begin
  uqReview.FieldValues['people_id']:= login.people_id;
  uqReview.FieldValues['book_id']:= bookInfo.book_id;
  uqReview.Post;
  Form10.Close;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
 uqReview.Close;
 uqReview.Open;
 uqReview.Edit;
end;

end.
