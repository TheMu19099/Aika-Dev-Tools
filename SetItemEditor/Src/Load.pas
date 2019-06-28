unit Load;

interface

uses
  Windows, SysUtils, Classes;

type
  TLoad = class(TObject)
    class procedure InitSetItem();
    class procedure InitEffects();

    class function SaveSetItem(): Boolean;
  end;

implementation

uses
  FileData, MainForm;

class procedure TLoad.InitSetItem;
var
  f: File of TSetItem;
  local: string;
begin
  local := GetCurrentDir + '\Misc\SetItem.bin';

  if (FileExists(local)) then
  begin
    try
      AssignFile(f, local);
      Reset(f);
      Read(f, Form1.SetItem);
      CloseFile(f);
      //MessageBox(0, 'SetItem.bin carregado com sucesso.', 'Success', 0);
    except
      on E: Exception do
      begin
        MessageBox(0,'Não foi possível ler o SetItem.', 'Error', 0);
        CloseFile(f);
      end;
    end;
  end
  else
    MessageBox(0, 'Não foi possível encontrar o arquivo em \Misc\SetItem.bin.',
      'Error', 0);
end;

class procedure TLoad.InitEffects;
var
  f: File of TEffects;
  local: string;
begin
  local := GetCurrentDir + '\Misc\ItemEffect.bin';

  if (FileExists(local)) then
  begin
    try
      AssignFile(f, local);
      Reset(f);
      Read(f, Form1.Effects);
      CloseFile(f);
      //MessageBox(0, 'ItemEffect.bin carregado com sucesso.', 'Success', 0);
    except
      on E: Exception do
      begin
        MessageBox(0,'Não foi possível ler o ItemEffect.', 'Error', 0);
        CloseFile(f);
      end;
    end;
  end
  else
    MessageBox(0, 'Não foi possível encontrar o arquivo em \Misc\ItemEffect.bin.',
      'Error', 0);

end;

class function TLoad.SaveSetItem: Boolean;
var
  Buffer: Array of Byte;
  F: TFileStream;
  Local: string;
begin
  Result := False;

  local := GetCurrentDir + '\Misc\SetItem.bin';

  if not(FileExists(local)) then
  begin
    MessageBox(0, 'O arquivo não existe pra ser salvo.', 'File Error', MB_ICONERROR);
    Exit;
  end;

  F := TFileStream.Create(Local, fmOpenWrite);

  SetLength(Buffer, F.Size);

  Move(Form1.SetItem[0], Buffer[0], F.Size);

  F.WriteBuffer(Buffer[0], F.Size);

  F.Free;

  Result := True;

end;

end.
