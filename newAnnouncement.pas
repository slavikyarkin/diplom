unit newAnnouncement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxContainer, cxEdit, Data.DB, DBAccess, Uni, MemDS,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxMemo, cxDBEdit, Vcl.ExtCtrls;

type
  TForm21 = class(TdxRibbonForm)
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
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    uqBook: TUniQuery;
    dsBook: TUniDataSource;
    uqAnnouncement: TUniQuery;
    dsAnnouncement: TUniDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    uqBookExchange: TUniQuery;
    dsBookExchange: TUniDataSource;
    cxDBMemo1: TcxDBMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    bAdd: TdxBarLargeButton;
    Panel1: TPanel;
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
  Form21: TForm21;
  openForm : boolean;
  AnnouncementId : integer;

implementation

{$R *.dfm}

uses login;
{ TForm21 }

procedure TForm21.bAddClick(Sender: TObject);
begin
  uqBookExchange.FieldValues['people_id']:= login.people_id;
  uqBookExchange.Post;
  Form21.Close;
end;

procedure TForm21.bCloseClick(Sender: TObject);
begin
  Form21.Close;
end;

procedure TForm21.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  openForm:= false;
  cxDBLookupComboBox1.Focused;
end;

procedure TForm21.FormShow(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[0].Text:=  login.fio + ' ' + login.card;
  uqBook.Close;
  uqBook.Open;
  uqAnnouncement.Close;
  uqAnnouncement.Open;
  uqBookExchange.Close;
  if not openForm then
  begin
    uqBookExchange.ParamByName('p_id').AsInteger:= -1;
    bAdd.Caption:= 'Добавить';
  end
  else
  begin
    uqBookExchange.ParamByName('p_id').AsInteger:= AnnouncementId;
    bAdd.Caption:= 'Сохранить';
  end;

  uqBookExchange.Open;
  uqBookExchange.Edit;
end;

end.
