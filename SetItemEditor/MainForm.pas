unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FileData, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    lbItems: TListBox;
    edtEquip1: TEdit;
    Label1: TLabel;
    edtEquip2: TEdit;
    edtEquip3: TEdit;
    edtEquip4: TEdit;
    edtEquip5: TEdit;
    edtEquip6: TEdit;
    edtEquip7: TEdit;
    edtEquip8: TEdit;
    edtEquip9: TEdit;
    edtEquip10: TEdit;
    edtEquip11: TEdit;
    edtEquip12: TEdit;
    Label2: TLabel;
    edtEffSlot1: TEdit;
    edtEffSlot2: TEdit;
    edtEffSlot3: TEdit;
    edtEffSlot4: TEdit;
    edtEffSlot5: TEdit;
    edtEffSlot6: TEdit;
    edtEffSlot7: TEdit;
    edtEffSlot8: TEdit;
    edtEffSlot9: TEdit;
    edtEffSlot10: TEdit;
    Label3: TLabel;
    edtEff1: TEdit;
    edtEff2: TEdit;
    edtEff3: TEdit;
    edtEff4: TEdit;
    edtEff5: TEdit;
    edtEff6: TEdit;
    Label4: TLabel;
    edtEffv1: TEdit;
    edtEffv2: TEdit;
    edtEffv3: TEdit;
    edtEffv4: TEdit;
    edtEffv5: TEdit;
    edtEffv6: TEdit;
    Timer1: TTimer;
    edtEffName1: TEdit;
    edtEffName2: TEdit;
    edtEffName3: TEdit;
    edtEffName4: TEdit;
    edtEffName5: TEdit;
    edtEffName6: TEdit;
    Button1: TButton;
    Button2: TButton;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure lbItemsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    SetItem: TSetItem;
    Effects: TEffects;
  end;

var
  Form1: TForm1;

implementation

uses
  Load;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  SetItem[lbItems.ItemIndex].Equips[0] := StrToInt(edtEquip1.Text);
  SetItem[lbItems.ItemIndex].Equips[1] := StrToInt(edtEquip2.Text);
  SetItem[lbItems.ItemIndex].Equips[2] := StrToInt(edtEquip3.Text);
  SetItem[lbItems.ItemIndex].Equips[3] := StrToInt(edtEquip4.Text);
  SetItem[lbItems.ItemIndex].Equips[4] := StrToInt(edtEquip5.Text);
  SetItem[lbItems.ItemIndex].Equips[5] := StrToInt(edtEquip6.Text);
  SetItem[lbItems.ItemIndex].Equips[6] := StrToInt(edtEquip7.Text);
  SetItem[lbItems.ItemIndex].Equips[7] := StrToInt(edtEquip8.Text);
  SetItem[lbItems.ItemIndex].Equips[8] := StrToInt(edtEquip9.Text);
  SetItem[lbItems.ItemIndex].Equips[9] := StrToInt(edtEquip10.Text);
  SetItem[lbItems.ItemIndex].Equips[10] := StrToInt(edtEquip11.Text);
  SetItem[lbItems.ItemIndex].Equips[11] := StrToInt(edtEquip12.Text);

  SetItem[lbItems.ItemIndex].EffSlot[0] := StrToInt(edtEffSlot1.Text);
  SetItem[lbItems.ItemIndex].EffSlot[1] := StrToInt(edtEffSlot2.Text);
  SetItem[lbItems.ItemIndex].EffSlot[2] := StrToInt(edtEffSlot3.Text);
  SetItem[lbItems.ItemIndex].EffSlot[3] := StrToInt(edtEffSlot4.Text);
  SetItem[lbItems.ItemIndex].EffSlot[4] := StrToInt(edtEffSlot5.Text);
  SetItem[lbItems.ItemIndex].EffSlot[5] := StrToInt(edtEffSlot6.Text);
  SetItem[lbItems.ItemIndex].EffSlot[6] := StrToInt(edtEffSlot7.Text);
  SetItem[lbItems.ItemIndex].EffSlot[7] := StrToInt(edtEffSlot8.Text);
  SetItem[lbItems.ItemIndex].EffSlot[8] := StrToInt(edtEffSlot9.Text);
  SetItem[lbItems.ItemIndex].EffSlot[9] := StrToInt(edtEffSlot10.Text);

  SetItem[lbItems.ItemIndex].EF[0] := StrToInt(edtEff1.Text);
  SetItem[lbItems.ItemIndex].EF[1] := StrToInt(edtEff2.Text);
  SetItem[lbItems.ItemIndex].EF[2] := StrToInt(edtEff3.Text);
  SetItem[lbItems.ItemIndex].EF[3] := StrToInt(edtEff4.Text);
  SetItem[lbItems.ItemIndex].EF[4] := StrToInt(edtEff5.Text);
  SetItem[lbItems.ItemIndex].EF[5] := StrToInt(edtEff6.Text);

  SetItem[lbItems.ItemIndex].EFV[0] := StrToInt(edtEffv1.Text);
  SetItem[lbItems.ItemIndex].EFV[1] := StrToInt(edtEffv2.Text);
  SetItem[lbItems.ItemIndex].EFV[2] := StrToInt(edtEffv3.Text);
  SetItem[lbItems.ItemIndex].EFV[3] := StrToInt(edtEffv4.Text);
  SetItem[lbItems.ItemIndex].EFV[4] := StrToInt(edtEffv5.Text);
  SetItem[lbItems.ItemIndex].EFV[5] := StrToInt(edtEffv6.Text);

  StatusBar1.Panels.Items[0].Text := 'Saved to Struct!!';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if(TLoad.SaveSetItem) then
    StatusBar1.Panels.Items[0].Text := 'File saved successful!!';
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i: Integer;
begin
  TLoad.InitSetItem;
  TLoad.InitEffects;

  for i := Low(Self.SetItem) to High(Self.SetItem) do
  begin
    lbItems.Items.Add('['+ i.toString + '] '+ String(Self.SetItem[i].Name));
  end;

  lbItems.ItemIndex := 0;

  Timer1.Enabled := True;

  StatusBar1.Panels.Items[0].Text := 'Right.';
end;

procedure TForm1.lbItemsClick(Sender: TObject);
begin
  edtEquip1.Text := SetItem[lbItems.ItemIndex].Equips[0].ToString;
  edtEquip2.Text := SetItem[lbItems.ItemIndex].Equips[1].ToString;
  edtEquip3.Text := SetItem[lbItems.ItemIndex].Equips[2].ToString;
  edtEquip4.Text := SetItem[lbItems.ItemIndex].Equips[3].ToString;
  edtEquip5.Text := SetItem[lbItems.ItemIndex].Equips[4].ToString;
  edtEquip6.Text := SetItem[lbItems.ItemIndex].Equips[5].ToString;
  edtEquip7.Text := SetItem[lbItems.ItemIndex].Equips[6].ToString;
  edtEquip8.Text := SetItem[lbItems.ItemIndex].Equips[7].ToString;
  edtEquip9.Text := SetItem[lbItems.ItemIndex].Equips[8].ToString;
  edtEquip10.Text := SetItem[lbItems.ItemIndex].Equips[9].ToString;
  edtEquip11.Text := SetItem[lbItems.ItemIndex].Equips[10].ToString;
  edtEquip12.Text := SetItem[lbItems.ItemIndex].Equips[11].ToString;

  edtEffSlot1.Text := SetItem[lbItems.ItemIndex].EffSlot[0].ToString;
  edtEffSlot2.Text := SetItem[lbItems.ItemIndex].EffSlot[1].ToString;
  edtEffSlot3.Text := SetItem[lbItems.ItemIndex].EffSlot[2].ToString;
  edtEffSlot4.Text := SetItem[lbItems.ItemIndex].EffSlot[3].ToString;
  edtEffSlot5.Text := SetItem[lbItems.ItemIndex].EffSlot[4].ToString;
  edtEffSlot6.Text := SetItem[lbItems.ItemIndex].EffSlot[5].ToString;
  edtEffSlot7.Text := SetItem[lbItems.ItemIndex].EffSlot[6].ToString;
  edtEffSlot8.Text := SetItem[lbItems.ItemIndex].EffSlot[7].ToString;
  edtEffSlot9.Text := SetItem[lbItems.ItemIndex].EffSlot[8].ToString;
  edtEffSlot10.Text := SetItem[lbItems.ItemIndex].EffSlot[9].ToString;

  edtEff1.Text := SetItem[lbItems.ItemIndex].EF[0].ToString;
  edtEff2.Text := SetItem[lbItems.ItemIndex].EF[1].ToString;
  edtEff3.Text := SetItem[lbItems.ItemIndex].EF[2].ToString;
  edtEff4.Text := SetItem[lbItems.ItemIndex].EF[3].ToString;
  edtEff5.Text := SetItem[lbItems.ItemIndex].EF[4].ToString;
  edtEff6.Text := SetItem[lbItems.ItemIndex].EF[5].ToString;

  edtEffName1.Text := String(Effects[SetItem[lbItems.ItemIndex].EF[0]].Name);
  edtEffName2.Text := String(Effects[SetItem[lbItems.ItemIndex].EF[1]].Name);
  edtEffName3.Text := String(Effects[SetItem[lbItems.ItemIndex].EF[2]].Name);
  edtEffName4.Text := String(Effects[SetItem[lbItems.ItemIndex].EF[3]].Name);
  edtEffName5.Text := String(Effects[SetItem[lbItems.ItemIndex].EF[4]].Name);
  edtEffName6.Text := String(Effects[SetItem[lbItems.ItemIndex].EF[5]].Name);

  edtEffv1.Text := SetItem[lbItems.ItemIndex].EFV[0].ToString;
  edtEffv2.Text := SetItem[lbItems.ItemIndex].EFV[1].ToString;
  edtEffv3.Text := SetItem[lbItems.ItemIndex].EFV[2].ToString;
  edtEffv4.Text := SetItem[lbItems.ItemIndex].EFV[3].ToString;
  edtEffv5.Text := SetItem[lbItems.ItemIndex].EFV[4].ToString;
  edtEffv6.Text := SetItem[lbItems.ItemIndex].EFV[5].ToString;

  StatusBar1.Panels.Items[0].Text := 'Right.';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //
end;

end.
