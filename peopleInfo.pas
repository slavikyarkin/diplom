unit peopleInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls, cxDBEdit,
  Data.DB, MemDS, DBAccess, Uni;

type
  TForm7 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    teSurname: TcxDBTextEdit;
    teName: TcxDBTextEdit;
    tePatron: TcxDBTextEdit;
    GroupBox1: TGroupBox;
    lSurname: TcxLabel;
    lName: TcxLabel;
    lPatron: TcxLabel;
    uqPeopleInfo: TUniQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses login;
{ TForm7 }


procedure TForm7.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqPeopleInfo.Close;
  uqPeopleInfo.ParamByName('p_people_id').AsInteger:=  login.people_id;
  uqPeopleInfo.Open;
end;

end.
