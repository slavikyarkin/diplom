unit addBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxScrollBox, Data.DB, DBAccess, Uni, MemDS,
  Vcl.StdCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TForm6 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    bSaveInform: TdxBarLargeButton;
    cxScrollBox1: TcxScrollBox;
    cxLabel1: TcxLabel;
    cxAuthor: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxBook: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxISBN: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxPeople: TcxLookupComboBox;
    uqAuthor: TUniQuery;
    uqNameBook: TUniQuery;
    uqPeople: TUniQuery;
    uqIzdanie: TUniQuery;
    dsAuthor: TUniDataSource;
    dsNameBook: TUniDataSource;
    dsIzdanie: TUniDataSource;
    dsPeople: TUniDataSource;
    cxApp: TComboBox;
    uqAll: TUniQuery;
    cxLabel6: TcxLabel;
    uqLib: TUniQuery;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxSave: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    bRefresh: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure cxAuthorPropertiesChange(Sender: TObject);
    procedure cxBookPropertiesChange(Sender: TObject);
    procedure cxISBNPropertiesChange(Sender: TObject);
    procedure dxSaveClick(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses mainEmp, login;
{ TForm6 }


//------------------------------------------------------------------------------
procedure TForm6.bRefreshClick(Sender: TObject);
begin
  uqNameBook.Refresh;
  uqIzdanie.Refresh;
  uqLib.Refresh;
  uqAll.Refresh;
  uqPeople.Refresh;
  uqAuthor.Refresh;
//
//  // cxPeople.Clear;
//   //cxISBN.Clear;
//   cxBook.Items.Clear;
//   cxAuthor.Items.Clear;
end;
//------------------------------------------------------------------------------
procedure TForm6.cxAuthorPropertiesChange(Sender: TObject);
begin

  uqNameBook.Close;
  uqNameBook.ParamByName('author').AsInteger:= cxAuthor.EditValue;
  uqNameBook.Open;
  cxBook.Enabled:= true;
end;
//------------------------------------------------------------------------------
procedure TForm6.cxBookPropertiesChange(Sender: TObject);
begin
  uqIzdanie.Close;
  uqIzdanie.ParamByName('book_id').AsInteger:= cxBook.EditValue;
  uqIzdanie.Open;
  cxISBN.Enabled:= true;
end;
//------------------------------------------------------------------------------
procedure TForm6.cxISBNPropertiesChange(Sender: TObject);
begin
uqLib.Close;
uqLib.ParamByName('lib_id').AsInteger:= cxISBN.EditValue;
uqLib.Open;
end;
//------------------------------------------------------------------------------
procedure TForm6.dxSaveClick(Sender: TObject);
begin
  uqAll.Append;
  uqAll.FieldValues ['people_id'] := cxPeople.EditValue;
  uqAll.FieldValues ['date_of_issue'] := Date;
if cxApp.Text = 'Без повреждений' then
  uqAll.FieldValues['appearance']:= 1;
if cxApp.Text = 'Есть повреждения' then
  uqAll.FieldValues['appearance']:= 2;
  uqAll.FieldValues['library_id']:= cxISBN.EditValue;
  uqAll.FieldValues['emp_issue_id']:= login.emp_id;
  uqAll.Post;

  uqLib.Edit;
  uqLib.FieldValues['availability']:= 1;
  uqLib.Post;

  uqNameBook.Refresh;
  uqIzdanie.Refresh;
  uqLib.Refresh;
  uqAll.Refresh;
  uqNameBook.Refresh;
  uqPeople.Refresh;
  uqAuthor.Refresh;
end;
//------------------------------------------------------------------------------
procedure TForm6.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqAuthor.Close;
  uqAuthor.Open;
  uqNameBook.Close;
  uqNameBook.Open;
  uqPeople.Close;
  uqPeople.Open;
  uqIzdanie.Close;
  uqIzdanie.Open;
  uqAll.Close;
  uqAll.Open;
  uqLib.Close;
  uqLib.Open;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
//   cxPeople.Clear;
//   cxISBN.Clear;
//   cxBook.Clear;
//   cxAuthor.Clear;
end;

end.

