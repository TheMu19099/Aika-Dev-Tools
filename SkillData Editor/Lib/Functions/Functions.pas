unit Functions;

interface

uses
  Windows, SysUtils, MainForm, Classes;

type
  TFunctions = class(TObject)
    { Init Skill Data Function }
    class function InitSkillData(): Boolean;
    class function InitEffName(): Boolean;
    class function InitEffDesc(): Boolean;
    class function ImportToSkills(): Boolean;
    class function ImportToEffects(): Boolean;
    class function SaveSkillData(): Boolean;
  end;

var
  Form1: TForm1;

implementation

uses
  FileData, GlobalDefs;

{ TFunctions }

class function TFunctions.InitSkillData(): Boolean;
var
  f: File of TSkillData;
  local: string;
begin
  Result := False;

  local := GetCurrentDir + '\Misc\SkillData.bin';

  if (FileExists(local)) then
  begin
    try
      AssignFile(f, local);
      Reset(f);
      Read(f, SkillData);
      CloseFile(f);

      MessageBox(0, 'SkillData succefuly read.', 'Success', MB_ICONINFORMATION);
    except
      MessageBox(0, 'Error at read the file ', 'Error at read.', MB_ICONERROR);
      Exit;
    end;
  end;

  Result := True;
end;

class function TFunctions.InitEffDesc: Boolean;
var
  f: File of TEffDesc;
  local: string;
begin
  Result := False;

  local := GetCurrentDir + '\Misc\EFDesc.bin';

  if (FileExists(local)) then
  begin
    try
      AssignFile(f, local);
      Reset(f);
      Read(f, EffDesc);
      CloseFile(f);

    except
      MessageBox(0, 'Error at read the file EFDesc.bin', 'Error at read.',
        MB_ICONERROR);
      Exit;
    end;
  end;

  Result := True;
end;

class function TFunctions.InitEffName: Boolean;
var
  f: File of TItemEff;
  local: string;
begin
  Result := False;

  local := GetCurrentDir + '\Misc\ItemEffect.bin';

  if (FileExists(local)) then
  begin
    try
      AssignFile(f, local);
      Reset(f);
      Read(f, ItemEff);
      CloseFile(f);

    except
      MessageBox(0, 'Error at read the file ItemEffect.bin', 'Error at read.',
        MB_ICONERROR);
      Exit;
    end;
  end;

  Result := True;
end;

class function TFunctions.ImportToSkills: Boolean;
var
  I: DWORD;
begin
  for I := 0 to MAX_ITENS do
  begin
    Form1.Skills.Cells[0, I] := I.ToString();
    Form1.Skills.Cells[1, I] := String(SkillData[I].Name);

    Form1.cbSearchSkills.Items.Add(String(SkillData[I].Name));
  end;

  Result := True;
end;

class function TFunctions.ImportToEffects: Boolean;
var
  I: WORD;
begin
  for I := 0 to 393 do
  begin
    Form1.lbEffs.Items.Add('[' + I.ToString + '] ' +
      String(ItemEff[I].EffName));
  end;

  Result := True;
end;

class function TFunctions.SaveSkillData: Boolean;
var
  Buffer: Array of Byte;
  F: TFileStream;
  Local: string;
begin
  Result := False;

  local := GetCurrentDir + '\Misc\SkillData.bin';

  if not(FileExists(local)) then
  begin
    MessageBox(0, 'Error, file does not exists!', 'File Error', MB_ICONERROR);
    Exit;
  end;

  F := TFileStream.Create(Local, fmOpenWrite);

  SetLength(Buffer, F.Size);

  Move(SkillData[0], Buffer[0], F.Size);

  F.WriteBuffer(Buffer[0], F.Size);

  F.Free;

  Result := True;

end;

end.
