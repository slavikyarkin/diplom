unit newBookRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, Vcl.StdCtrls, Data.DB, MemDS, DBAccess,
  Uni, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.ComCtrls;

type
  TForm12 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    dxSave: TdxBarButton;
    gbGeneralInform: TGroupBox;
    Label5: TLabel;
    eaAuthor: TEdit;
    gbName: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    eaName: TEdit;
    eaSurname: TEdit;
    eaPatron: TEdit;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    ebName: TEdit;
    ebISBN: TEdit;
    Label2: TLabel;
    ebBook: TEdit;
    dsPeople: TUniDataSource;
    uqPeople: TUniQuery;
    cxPeople: TcxLookupComboBox;
    Label1: TLabel;
    uqAuthor: TUniQuery;
    uqBook: TUniQuery;
    uqBookAuthor: TUniQuery;
    uqGetPeople: TUniQuery;
    uqGetAuthor: TUniQuery;
    uqGetBook: TUniQuery;
    uqLib: TUniQuery;
    Label3: TLabel;
    ebDateBook: TDateTimePicker;
    bSave: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ebDate: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure dxSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}
    uses mainEmp, login;
{ TForm12 }

procedure TForm12.dxSaveClick(Sender: TObject);
begin
  uqGetPeople.Close;
  uqGetPeople.ParamByName('pid').AsString :=cxPeople.EditValue;
  uqGetPeople.Open;

  uqBook.Append;
  uqBook.FieldValues ['name']:= ebName.Text;
  uqBook.FieldValues ['date_of_publication']:= ebDate.Date;
  uqBook.FieldValues ['description']:= ebBook.Text;
  uqBook.Post;

  uqAuthor.Append;
  uqAuthor.FieldValues ['name']:= eaName.Text;
  uqAuthor.FieldValues ['surname']:= eaSurname.Text;
  uqAuthor.FieldValues ['patron']:=eaPatron.Text;
  uqAuthor.FieldValues ['about']:=  eaAuthor.Text;
  uqAuthor.Post;

  uqGetBook.close;
  uqGetBook.ParamByName('name').AsString := ebName.Text;
  uqGetBook.ParamByName('date_of_publication').AsDate := ebDate.Date;
  uqGetBook.ParamByName('description').AsString := ebBook.Text;
  uqGetBook.Open;

  uqGetAuthor.close;
  uqGetAuthor.ParamByName('name').AsString := eaName.Text;
  uqGetAuthor.ParamByName('surname').AsString := eaSurname.Text;
  uqGetAuthor.ParamByName('about').AsString := eaAuthor.Text;
  uqGetAuthor.Open;

  uqBookAuthor.Append;
  uqBookAuthor.FieldValues['book_id']:=uqGetBook.FieldByName('id').AsInteger;
  uqBookAuthor.FieldValues['author_id']:=uqGetAuthor.FieldByName('id').AsInteger;
  uqBookAuthor.Post;

  uqLib.Append;
  uqLib.FieldValues['ISBN']:= ebISBN.Text;
  uqLib.FieldValues['book_id']:= uqGetBook.FieldByName('id').AsInteger;
  uqLib.FieldValues['availability']:= 2;
  uqLib.FieldValues['people_id']:= uqGetPeople.FieldByName('id').AsInteger;
  uqLib.FieldValues['date_of_edition']:= ebDateBook.Date;
  uqLib.Post;


end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqPeople.Close;
  uqPeople.Open;
  uqBook.Close;
  uqBook.Open;
  uqAuthor.Close;
  uqAuthor.Open;
  uqBookAuthor.Close;
  uqBookAuthor.Open;
  uqLib.Close;
  uqLib.Open;
end;
end.
