unit mainPeople;

{ Форма пользователя!}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni;

type
  TForm2 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    uqMyJur: TUniQuery;
    dsMyJur: TUniDataSource;
    cxGrid1DBTableView1name_book: TcxGridDBColumn;
    cxGrid1DBTableView1author: TcxGridDBColumn;
    cxGrid1DBTableView1genre: TcxGridDBColumn;
    cxGrid1DBTableView1emp_issue: TcxGridDBColumn;
    cxGrid1DBTableView1emp_recive: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_issue: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_return: TcxGridDBColumn;
    cxGrid1DBTableView1appearance: TcxGridDBColumn;
    bBookInfo: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    bRefresh: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    bExit: TdxBarLargeButton;
    bRating: TdxBarLargeButton;
    bBookExchange: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bBookInfoClick(Sender: TObject);
    procedure bRefreshClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure bExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRatingClick(Sender: TObject);
    procedure bBookExchangeClick(Sender: TObject);
  private
    { Private declarations }
    procedure refresh;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses login, peopleInfo, bookInfo, searchBook, chosenBook, peopleBook,
     peopleBookRating, bookExchange;
{ TForm2 }

procedure TForm2.refresh;
begin
  uqMyJur.Refresh;
  if uqMyJur.RecordCount = 0 then
    bBookInfo.Enabled:= false
  else
    bBookInfo.Enabled:= true;
end;

procedure TForm2.bBookExchangeClick(Sender: TObject);
begin
  Form20.ShowModal;
end;

procedure TForm2.bBookInfoClick(Sender: TObject);
begin
  bookInfo.book_id:= uqMyJur.FieldValues['book_id'];
  Form9.ShowModal;
end;

procedure TForm2.bExitClick(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm2.bRatingClick(Sender: TObject);
begin
  Form18.ShowModal;
end;

procedure TForm2.bRefreshClick(Sender: TObject);
begin
  refresh;
end;

procedure TForm2.dxBarLargeButton1Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm2.dxBarLargeButton2Click(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm2.dxBarLargeButton3Click(Sender: TObject);
begin
  Form13.ShowModal;
end;

procedure TForm2.dxBarLargeButton4Click(Sender: TObject);
begin
  Form15.ShowModal;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Form2.WindowState := wsMaximized;
  dxRibbonStatusBar1.Panels[0].Text:= login.fio + ' ' + login.card;
  uqMyJur.Close;
  uqMyJur.ParamByName('p_people_id').AsInteger:= login.people_id;
  uqMyJur.Open;
  refresh;
end;

end.
