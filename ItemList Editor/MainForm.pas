unit MainForm;

{$WARN SYMBOL_DEPRECATED OFF}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls,
  MiscData;

type
  TForm1 = class(TForm)
    Items: TStringGrid;
    btnSearchItens: TButton;
    cbSearchItens: TComboBox;
    Pages: TPageControl;
    MainTab: TTabSheet;
    edtItemName: TEdit;
    edtItemNameEN: TEdit;
    btnSaveToStruct: TButton;
    btnSaveToFile: TButton;
    TabUsesCondition: TTabSheet;
    cbCanAgroup: TCheckBox;
    edtItemType: TEdit;
    Label1: TLabel;
    edtUseEffect: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtDelayUse: TEdit;
    Label4: TLabel;
    edtPriceHonor: TEdit;
    edtPriceMedal: TEdit;
    edtPriceGold: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtSellPrice: TEdit;
    edtClass: TEdit;
    Label8: TLabel;
    edtMeshID: TEdit;
    Label9: TLabel;
    edtBonusEquip: TEdit;
    Label10: TLabel;
    edtIconID: TEdit;
    Label11: TLabel;
    edtConjunt: TEdit;
    Label12: TLabel;
    edtLevel: TEdit;
    Label13: TLabel;
    cbExpires: TCheckBox;
    edtDuration: TEdit;
    Label14: TLabel;
    ItemStatusTab: TTabSheet;
    edtPAtk: TEdit;
    Label15: TLabel;
    edtMAtk: TEdit;
    edtMDef: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edtHP: TEdit;
    Label19: TLabel;
    edtMP: TEdit;
    Label20: TLabel;
    edtTradeType: TEdit;
    Label21: TLabel;
    edtTypeItem: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    edtDurability: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edtEF1: TEdit;
    edtEFV1: TEdit;
    edtEF2: TEdit;
    edtEFV2: TEdit;
    edtEF3: TEdit;
    edtEFV3: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtPDef: TEdit;
    Label29: TLabel;
    cbChangeApp: TCheckBox;
    cbRedution: TCheckBox;
    cbFortification: TCheckBox;
    edtRank: TEdit;
    Label30: TLabel;
    edtMaxLevel: TEdit;
    Label31: TLabel;
    edtTypePrice: TEdit;
    Label32: TLabel;
    edtPriceValue: TEdit;
    Label33: TLabel;
    cbCanSealed: TCheckBox;
    edtDescription: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSearchItensClick(Sender: TObject);
    procedure cbSearchItensKeyPress(Sender: TObject; var Key: Char);
    procedure SearchItem();
    procedure ItemsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnSaveToStructClick(Sender: TObject);
    procedure btnSaveToFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Functions, GlobalDefs;

{$R *.dfm}

procedure TForm1.btnSaveToFileClick(Sender: TObject);
begin
  if not(TFunctions.SaveItemList) then
  begin
    MessageBox(0, 'Error at saving the file!', 'Error in Save Function',
      MB_ICONERROR);
    Exit;
  end;

  MessageBox(0, 'File Saved Succesfully!', 'Success', MB_ICONINFORMATION);
end;

procedure TForm1.btnSaveToStructClick(Sender: TObject);
begin

  { Name Tab }
  StrPLCopy(ItemList[Items.Row].Name,
    AnsiString(String(Self.edtItemName.Text)), 64);
  StrPLCopy(ItemList[Items.Row].NameEnglish,
    AnsiString(String(Self.edtItemNameEN.Text)), 64);
  StrPLCopy(ItemList[Items.Row].Descrition,
    AnsiString(Self.edtDescription.Text), 128);

  { Condition Use Tab }
  if (Self.cbCanAgroup.Checked) then
    ItemList[Items.Row].CanAgroup := True
  else
    ItemList[Items.Row].CanAgroup := False;

  if (Self.cbExpires.Checked) then
    ItemList[Items.Row].Expires := True
  else
    ItemList[Items.Row].Expires := False;

  if (Self.cbCanSealed.Checked) then
    ItemList[Items.Row].CanSealed := True
  else
    ItemList[Items.Row].CanSealed := False;

  ItemList[Items.Row].ItemType := WORD(StrToInt(Self.edtItemType.Text));
  ItemList[Items.Row].UseEffect := WORD(StrToInt(Self.edtUseEffect.Text));
  ItemList[Items.Row].DelayUse := DWORD(StrToInt(Self.edtDelayUse.Text));
  ItemList[Items.Row].PriceHonor := DWORD(StrToInt(Self.edtPriceHonor.Text));
  ItemList[Items.Row].PriceMedal := DWORD(StrToInt(Self.edtPriceMedal.Text));
  ItemList[Items.Row].PriceGold := DWORD(StrToInt(Self.edtPriceGold.Text));
  ItemList[Items.Row].SellPrince := DWORD(StrToInt(Self.edtSellPrice.Text));
  ItemList[Items.Row].Classe := WORD(StrToInt(Self.edtClass.Text));
  ItemList[Items.Row].MeshID := WORD(StrToInt(Self.edtMeshID.Text));
  ItemList[Items.Row].BonusEquip := StrToInt(Self.edtBonusEquip.Text);
  ItemList[Items.Row].IconID := WORD(StrToInt(Self.edtIconID.Text));
  ItemList[Items.Row].Conjunto := WORD(StrToInt(Self.edtConjunt.Text));
  ItemList[Items.Row].Level := WORD(StrToInt(Self.edtLevel.Text));
  ItemList[Items.Row].Duration := DWORD(StrToInt(Self.edtDuration.Text));

  { Item Status Tab }
  if (Self.cbChangeApp.Checked) then
    ItemList[Items.Row].Change := True
  else
    ItemList[Items.Row].Change := False;

  if (Self.cbFortification.Checked) then
    ItemList[Items.Row].Fortification := True
  else
    ItemList[Items.Row].Fortification := False;

  if (Self.cbRedution.Checked) then
    ItemList[Items.Row].Reduction := True
  else
    ItemList[Items.Row].Reduction := False;

  ItemList[Items.Row].ATKFis := WORD(StrToInt(Self.edtPAtk.Text));
  ItemList[Items.Row].MagATK := WORD(StrToInt(Self.edtMAtk.Text));
  ItemList[Items.Row].DefFis := WORD(StrToInt(Self.edtPDef.Text));
  ItemList[Items.Row].DefMag := WORD(StrToInt(Self.edtMDef.Text));
  ItemList[Items.Row].HP := WORD(StrToInt(Self.edtHP.Text));
  ItemList[Items.Row].MP := WORD(StrToInt(Self.edtMP.Text));
  ItemList[Items.Row].TypeTrade := Byte(StrToInt(Self.edtTradeType.Text));
  ItemList[Items.Row].TypeItem := Byte(StrToInt(Self.edtTypeItem.Text));
  ItemList[Items.Row].Durabilidade := Byte(StrToInt(Self.edtDurability.Text));
  ItemList[Items.Row].EF[0] := WORD(StrToInt(Self.edtEF1.Text));
  ItemList[Items.Row].EFV[0] := WORD(StrToInt(Self.edtEFV1.Text));
  ItemList[Items.Row].EF[1] := WORD(StrToInt(Self.edtEF2.Text));
  ItemList[Items.Row].EFV[1] := WORD(StrToInt(Self.edtEFV2.Text));
  ItemList[Items.Row].EF[2] := WORD(StrToInt(Self.edtEF3.Text));
  ItemList[Items.Row].EFV[2] := WORD(StrToInt(Self.edtEFV3.Text));
  ItemList[Items.Row].Rank := Byte(StrToInt(Self.edtRank.Text));
  ItemList[Items.Row].MaxLvl := DWORD(StrToInt(Self.edtMaxLevel.Text));
  ItemList[Items.Row].TypePriceItem := WORD(StrToInt(Self.edtTypePrice.Text));
  ItemList[Items.Row].TypePriceItemValue :=
    WORD(StrToInt(Self.edtPriceValue.Text));

  MessageBox(0, 'Struct Saved Succesfully!', 'Success', MB_ICONINFORMATION);
end;

procedure TForm1.btnSearchItensClick(Sender: TObject);
begin
  Self.SearchItem;
end;

procedure TForm1.cbSearchItensKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Self.SearchItem;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.Items.ColWidths[1] := 360;
  Self.Items.Rows[0].Text := 'ID';
  Self.Items.Cells[1, 0] := 'Name';
  Self.Items.RowCount := MAX_ITENS;

  if (TFunctions.InitItemList) then
  begin
    if not(TFunctions.ImportToItems) then
    begin
      MessageBox(0, 'Error at: Importing itens to the form!',
        'Import Itens Error', MB_ICONERROR);
    end;
  end;

  MessageBox(0, 'ItemList succesful loaded!', 'Sucess', MB_ICONINFORMATION);
end;

procedure TForm1.ItemsSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  { Name Tab }
  Self.edtItemName.Text := String(ItemList[ARow].Name);
  Self.edtItemNameEN.Text := String(ItemList[ARow].NameEnglish);
  Self.edtDescription.Text := (String(ItemList[ARow].Descrition));

  { Condition Use Tab }
  if (ItemList[ARow].CanAgroup) then
    Self.cbCanAgroup.Checked := True
  else
    Self.cbCanAgroup.Checked := False;

  if (ItemList[ARow].Expires) then
    Self.cbExpires.Checked := True
  else
    Self.cbExpires.Checked := False;

  if (ItemList[ARow].CanSealed) then
    Self.cbCanSealed.Checked := True
  else
    Self.cbCanSealed.Checked := False;

  Self.edtItemType.Text := ItemList[ARow].ItemType.ToString();
  Self.edtUseEffect.Text := ItemList[ARow].UseEffect.ToString();
  Self.edtDelayUse.Text := ItemList[ARow].DelayUse.ToString();
  Self.edtPriceHonor.Text := ItemList[ARow].PriceHonor.ToString();
  Self.edtPriceMedal.Text := ItemList[ARow].PriceMedal.ToString();
  Self.edtPriceGold.Text := ItemList[ARow].PriceGold.ToString();
  Self.edtSellPrice.Text := ItemList[ARow].SellPrince.ToString();
  Self.edtClass.Text := ItemList[ARow].Classe.ToString();
  Self.edtMeshID.Text := ItemList[ARow].MeshID.ToString();
  Self.edtBonusEquip.Text := ItemList[ARow].BonusEquip.ToString();
  Self.edtIconID.Text := ItemList[ARow].IconID.ToString();
  Self.edtConjunt.Text := ItemList[ARow].Conjunto.ToString();
  Self.edtLevel.Text := ItemList[ARow].Level.ToString();
  Self.edtDuration.Text := ItemList[ARow].Duration.ToString();

  { Item Status Tab }
  if (ItemList[ARow].Change) then
    Self.cbChangeApp.Checked := True
  else
    Self.cbChangeApp.Checked := False;

  if (ItemList[ARow].Fortification) then
    Self.cbFortification.Checked := True
  else
    Self.cbFortification.Checked := False;

  if (ItemList[ARow].Reduction) then
    Self.cbRedution.Checked := True
  else
    Self.cbRedution.Checked := False;

  Self.edtPAtk.Text := ItemList[ARow].ATKFis.ToString;
  Self.edtMAtk.Text := ItemList[ARow].MagATK.ToString();
  Self.edtPDef.Text := ItemList[ARow].DefFis.ToString();
  Self.edtMDef.Text := ItemList[ARow].DefMag.ToString();
  Self.edtHP.Text := ItemList[ARow].HP.ToString();
  Self.edtMP.Text := ItemList[ARow].MP.ToString();
  Self.edtTradeType.Text := ItemList[ARow].TypeTrade.ToString();
  Self.edtTypeItem.Text := ItemList[ARow].TypeItem.ToString();
  Self.edtDurability.Text := ItemList[ARow].Durabilidade.ToString();
  Self.edtEF1.Text := ItemList[ARow].EF[0].ToString();
  Self.edtEFV1.Text := ItemList[ARow].EFV[0].ToString();
  Self.edtEF2.Text := ItemList[ARow].EF[1].ToString();
  Self.edtEFV2.Text := ItemList[ARow].EFV[1].ToString();
  Self.edtEF3.Text := ItemList[ARow].EF[2].ToString();
  Self.edtEFV3.Text := ItemList[ARow].EFV[2].ToString();
  Self.edtRank.Text := ItemList[ARow].Rank.ToString();
  Self.edtMaxLevel.Text := ItemList[ARow].MaxLvl.ToString();
  Self.edtTypePrice.Text := ItemList[ARow].TypePriceItem.ToString();
  Self.edtPriceValue.Text := ItemList[ARow].TypePriceItemValue.ToString();

end;

procedure TForm1.SearchItem;
var
  I: WORD;
begin
  for I := 0 to MAX_ITENS do
  begin
    if (UpperCase(cbSearchItens.Text) = UpperCase(Items.Cells[1, I])) then
    begin
      Items.Row := I;
    end
    else if (cbSearchItens.Text = '') then
    begin
      break;
    end;
  end;
end;

end.
