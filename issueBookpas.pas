unit issueBookpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, cxTextEdit, cxContainer,
  cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, cxScrollBox, Data.DB,
  MemDS, DBAccess, Uni;

type
  TForm8 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxScrollBox1: TcxScrollBox;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    uqReturn: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
    lib_id : integer;

implementation

{$R *.dfm}
uses login;

{ TForm8 }

procedure TForm8.dxBarLargeButton1Click(Sender: TObject);
begin
  uqReturn.FieldValues['availability']:= 2;
  uqReturn.Post;
  Form8.Close;
end;

procedure TForm8.dxBarLargeButton2Click(Sender: TObject);
begin
    Form8.Close;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  DisableAero := True;

end;

procedure TForm8.FormShow(Sender: TObject);
begin
  uqReturn.Close;
  uqReturn.ParamByName('lib_id').AsInteger:= lib_id;
  uqReturn.Open;
  uqReturn.Edit;
end;

end.
