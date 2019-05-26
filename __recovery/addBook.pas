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
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    bSaveInform: TdxBarLargeButton;
    cxScrollBox1: TcxScrollBox;
    cxLabel1: TcxLabel;
    cxAuthor: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxBook: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
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
    cbStatusBook: TComboBox;
    cxLabel4: TcxLabel;
    cxApp: TComboBox;
    uqAll: TUniQuery;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSaveInformClick(Sender: TObject);
    procedure cxAuthorPropertiesChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses mainEmp;
{ TForm6 }

procedure TForm6.bSaveInformClick(Sender: TObject);
begin
  uqAll.Append;
  uqAll.FieldValues ['people_id'] := cxPeople.EditValue;
  uqAll.FieldValues ['date_of_issue'] := Date;
  if cbStatusBook.Text = 'Выдача' then
    uqAll.FieldValues['State']:= 1;
  if cbStatusBook.Text = 'Возврат' then
    uqAll.FieldValues['State']:= 2;
  if cxApp.Text = 'Без повреждений' then
    uqAll.FieldValues['appearance']:= 1;
  if cxApp.Text = 'Есть повреждения' then
    uqAll.FieldValues['appearance']:= 2;


  uqAll.FieldValues ['book_id']:=cxBook.EditValue;
  uqAll.Post;

end;

procedure TForm6.cxAuthorPropertiesChange(Sender: TObject);
begin

  uqNameBook.Close;
  uqNameBook.ParamByName('author').AsInteger:= cxAuthor.EditValue;
  uqNameBook.Open;
  cxBook.Enabled:= true;
end;

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

end;
end.

