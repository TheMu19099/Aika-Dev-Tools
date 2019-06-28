unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Skills: TStringGrid;
    cbSearchSkills: TComboBox;
    btnSearch: TButton;
    Page: TPageControl;
    MainPage: TTabSheet;
    edtName: TEdit;
    edtNameEN: TEdit;
    edtDescription: TEdit;
    SkillAtributesPage: TTabSheet;
    edtSkillPoints: TEdit;
    edtIndex: TEdit;
    Label1: TLabel;
    edtMinLevel: TEdit;
    Label2: TLabel;
    edtLevel: TEdit;
    Label3: TLabel;
    edtClassification: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtLearnCosts: TEdit;
    Label6: TLabel;
    edtClasse: TEdit;
    Label7: TLabel;
    edtMP: TEdit;
    Label8: TLabel;
    edtPreCooldown: TEdit;
    Label9: TLabel;
    edtCooldown: TEdit;
    edtCooldownType: TEdit;
    edtTargetType: TEdit;
    edtUniqueType: TEdit;
    edtMaxTargets: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtRange: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edtDamageRange: TEdit;
    edtSuccessRate: TEdit;
    Label17: TLabel;
    edtAgressive: TEdit;
    Label18: TLabel;
    edtBuffDebuff: TEdit;
    Label19: TLabel;
    edtAttribute: TEdit;
    Label20: TLabel;
    edtDamage: TEdit;
    edtAdicionalDamage: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    edtDuration: TEdit;
    Label23: TLabel;
    edtCastTime: TEdit;
    Label24: TLabel;
    edtTargetAnimation: TEdit;
    Label25: TLabel;
    EffectsPage: TTabSheet;
    eff1: TGroupBox;
    eff2: TGroupBox;
    eff4: TGroupBox;
    eff3: TGroupBox;
    edtEff1Index: TEdit;
    edtEff1Value: TEdit;
    edtEff2Index: TEdit;
    edtEff2Value: TEdit;
    edtEff3Index: TEdit;
    edtEff3Value: TEdit;
    edtEff4Index: TEdit;
    edtEff4Value: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    edtEffect1Name: TEdit;
    edtEffect2Name: TEdit;
    edtEffect4Name: TEdit;
    edtEffect3Name: TEdit;
    memEffectDesc: TMemo;
    Effects2: TTabSheet;
    lbEffs: TListBox;
    memEffsDesc: TMemo;
    btnSaveToStruct: TButton;
    btnSaveFile: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cbSearchSkillsKeyPress(Sender: TObject; var Key: Char);
    procedure SearchSkill();
    procedure btnSearchClick(Sender: TObject);
    procedure SkillsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure lbEffsClick(Sender: TObject);
    procedure btnSaveToStructClick(Sender: TObject);
    procedure btnSaveFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Functions, GlobalDefs, System.AnsiStrings;

{$R *.dfm}

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  Self.SearchSkill;
end;

procedure TForm1.cbSearchSkillsKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Self.SearchSkill;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if (TFunctions.InitSkillData()) then
  begin
    Skills.ColWidths[1] := 300;
    Self.Skills.Rows[0].Text := 'ID';
    Self.Skills.Cells[1, 0] := 'Name';
    Self.Skills.RowCount := MAX_ITENS;

    if not(TFunctions.ImportToSkills) then
    begin
      MessageBox(0, 'Error at import skills to TStringCells!', 'Error',
        MB_ICONERROR);
      Exit;
    end;

    TFunctions.InitEffName;
    TFunctions.InitEffDesc;

    if not(TFunctions.ImportToEffects) then
    begin
      MessageBox(0, 'Error at import effects to TListBox!', 'Error',
        MB_ICONERROR);
      Exit;
    end;
  end
  else
  begin
    Exit;
  end;

end;

procedure TForm1.lbEffsClick(Sender: TObject);
var
  I: WORD;
  Index: Integer;
begin
  Index := 0;

  for I := 0 to Self.lbEffs.Count -1 do
  begin
    if(Self.lbEffs.Selected[i]) then
    begin
      Index := i;
    end;
  end;

  Self.memEffsDesc.Lines.Clear;
  Self.memEffsDesc.Lines.Add(String(EffDesc[Index].Desc));
end;

procedure TForm1.SearchSkill;
var
  I: WORD;
begin
  for I := 0 to MAX_ITENS do
  begin
    if (UpperCase(cbSearchSkills.Text) = UpperCase(Skills.Cells[1, I])) then
    begin
      Skills.Row := I;
    end
    else if (cbSearchSkills.Text = '') then
    begin
      break;
    end;
  end;
end;

procedure TForm1.btnSaveFileClick(Sender: TObject);
begin
  if(TFunctions.SaveSkillData) then
    MessageBox(0, 'File saved successful.', 'Success', MB_ICONINFORMATION);
end;

procedure TForm1.btnSaveToStructClick(Sender: TObject);
var
  S: Integer;
begin
  S := Skills.Row;

  System.AnsiStrings.StrPLCopy(SkillData[S].Name, AnsiString(edtName.Text), 64);
  System.AnsiStrings.StrPLCopy(SkillData[S].NameEnglish, AnsiString(edtNameEN.Text), 64);
  System.AnsiStrings.StrPLCopy(SkillData[S].Description, AnsiString(edtDescription.Text), 288);

  SkillData[S].Index := StrToInt(edtIndex.Text);
  SkillData[S].MinLevel := StrToInt(edtMinLevel.Text);
  SkillData[S].Level := StrToInt(edtClassification.Text);
  SkillData[S].SkillPoints := StrToInt(edtSkillPoints.Text);
  SkillData[S].LearnCosts := StrToInt(edtLearnCosts.Text);
  SkillData[S].Classe := StrToInt(edtClasse.Text);
  SkillData[S].MP := StrToInt(edtMP.Text);
  SkillData[S].PreCooldown := StrToInt(edtPreCooldown.Text);
  SkillData[S].Cooldown := StrToInt(edtCooldown.Text);
  SkillData[S].CooldownType := StrToInt(edtCooldownType.Text);
  SkillData[S].TargetType := StrToInt(edtTargetType.Text);
  SkillData[S].UniqueType := StrToInt(edtUniqueType.Text);
  SkillData[S].MaxTargets := StrToInt(edtMaxTargets.Text);
  SkillData[S].Range := StrToInt(edtRange.Text);
  SkillData[S].DamageRange := StrToInt(edtDamageRange.Text);
  SkillData[S].SuccessRate := StrToInt(edtSuccessRate.Text);
  SkillData[S].Agressive := StrToInt(edtAgressive.Text);
  SkillData[S].BuffDebuff := StrToInt(edtBuffDebuff.Text);
  SkillData[S].Attribute := StrToInt(edtAttribute.Text);
  SkillData[S].Damage := StrToInt(edtDamage.Text);
  SkillData[S].Adicional := StrToInt(edtAdicionalDamage.Text);
  SkillData[S].Duration := StrToInt(edtDuration.Text);
  SkillData[S].CastTime := StrToInt(edtCastTime.Text);
  SkillData[S].TargetAnimation := StrToInt(edtTargetAnimation.Text);

  SkillData[S].EF[0] := StrToInt(edtEff1Index.Text);
  SkillData[S].EF[1] := StrToInt(edtEff2Index.Text);
  SkillData[S].EF[2] := StrToInt(edtEff3Index.Text);
  SkillData[S].EF[3] := StrToInt(edtEff4Index.Text);

  SkillData[S].EFV[0] := StrToInt(edtEff1Value.Text);
  SkillData[S].EFV[1] := StrToInt(edtEff2Value.Text);
  SkillData[S].EFV[2] := StrToInt(edtEff3Value.Text);
  SkillData[S].EFV[3] := StrToInt(edtEff4Value.Text);
end;

procedure TForm1.SkillsSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  Desc: String;
  I: BYTE;
begin
  Self.edtName.Text := String(SkillData[ARow].Name);
  Self.edtNameEN.Text := String(SkillData[ARow].NameEnglish);
  Self.edtDescription.Text := String(SkillData[ARow].Description);

  Self.edtIndex.Text := IntToStr(SkillData[ARow].Index);
  Self.edtMinLevel.Text := IntToStr(SkillData[ARow].MinLevel);
  Self.edtLevel.Text := IntToStr(SkillData[ARow].Level);
  Self.edtClassification.Text := IntToStr(SkillData[ARow].Classification);

  Self.edtSkillPoints.Text := IntToStr(SkillData[ARow].SkillPoints);
  Self.edtLearnCosts.Text := IntToStr(SkillData[ARow].LearnCosts);
  Self.edtClasse.Text := IntToStr(SkillData[ARow].Classe);

  Self.edtMP.Text := IntToStr(SkillData[ARow].MP);
  Self.edtPreCooldown.Text := IntToStr(SkillData[ARow].PreCooldown);
  Self.edtCooldown.Text := IntToStr(SkillData[ARow].Cooldown);
  Self.edtCooldownType.Text := IntToStr(SkillData[ARow].CooldownType);
  Self.edtTargetType.Text := IntToStr(SkillData[ARow].TargetType);
  Self.edtUniqueType.Text := IntToStr(SkillData[ARow].UniqueType);
  Self.edtMaxTargets.Text := IntToStr(SkillData[ARow].MaxTargets);

  Self.edtRange.Text := IntToStr(SkillData[ARow].Range);
  Self.edtDamageRange.Text := IntToStr(SkillData[ARow].DamageRange);
  Self.edtSuccessRate.Text := IntToStr(SkillData[ARow].SuccessRate);
  Self.edtAgressive.Text := IntToStr(SkillData[ARow].Agressive);
  Self.edtBuffDebuff.Text := IntToStr(SkillData[ARow].BuffDebuff);
  Self.edtAttribute.Text := IntToStr(SkillData[ARow].Attribute);
  Self.edtDamage.Text := IntToStr(SkillData[ARow].Damage);
  Self.edtAdicionalDamage.Text := IntToStr(SkillData[ARow].Adicional);
  Self.edtDuration.Text := IntToStr(SkillData[ARow].Duration);
  Self.edtCastTime.Text := IntToStr(SkillData[ARow].CastTime);
  Self.edtTargetAnimation.Text := IntToStr(SkillData[ARow].TargetAnimation);

  Self.edtEff1Index.Text := IntToStr(SkillData[ARow].EF[0]);
  Self.edtEff2Index.Text := IntToStr(SkillData[ARow].EF[1]);
  Self.edtEff3Index.Text := IntToStr(SkillData[ARow].EF[2]);
  Self.edtEff4Index.Text := IntToStr(SkillData[ARow].EF[3]);

  Self.edtEff1Value.Text := IntToStr(SkillData[ARow].EFV[0]);
  Self.edtEff2Value.Text := IntToStr(SkillData[ARow].EFV[1]);
  Self.edtEff3Value.Text := IntToStr(SkillData[ARow].EFV[2]);
  Self.edtEff4Value.Text := IntToStr(SkillData[ARow].EFV[3]);

  Self.edtEffect1Name.Text := String(ItemEff[SkillData[ARow].EF[0]].EffName);
  Self.edtEffect2Name.Text := String(ItemEff[SkillData[ARow].EF[1]].EffName);
  Self.edtEffect3Name.Text := String(ItemEff[SkillData[ARow].EF[2]].EffName);
  Self.edtEffect4Name.Text := String(ItemEff[SkillData[ARow].EF[3]].EffName);

  Self.memEffectDesc.Lines.Clear;

  for I := 0 to 3 do
  begin
    Desc := '';
    if(SkillData[ARow].EFV[i] = 0) then
      continue;
    Desc := Format(String(EffDesc[SkillData[ARow].EF[i]].Desc),
      [SkillData[ARow].EFV[i]]);
    Self.memEffectDesc.Lines.Add(Desc);
  end;


end;

end.
