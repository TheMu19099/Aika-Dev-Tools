unit Functions;

interface

uses
  Windows, SysUtils, MiscData, GlobalDefs, MainForm, Generics.Collections,
  Classes;

type
  TFunctions = class(TObject)
    class function InitItemList(): Boolean;
    class function ImportToItems(): Boolean;
    class function SaveItemList(): Boolean;
  end;

var
  Form1: TForm1;

implementation

class function TFunctions.ImportToItems: Boolean;
var
  I: DWORD;
begin
  for I := 0 to MAX_ITENS do
  begin
    Form1.Items.Cells[0, I] := I.ToString();
    Form1.Items.Cells[1, I] := String(ItemList[I].Name);

    Form1.cbSearchItens.Items.Add(String(ItemList[I].Name));
  end;

  Result := True;
end;

class function TFunctions.InitItemList(): Boolean;
var
  F: TFileStream;
  Local: string;
  ListLength: Word;
begin
  local := GetCurrentDir + '\Misc\ItemList.bin';

  if (FileExists(local)) then
  begin
    F := TFileStream.Create(local, fmOpenRead);

    try
      F.Position := 0;

      ListLength := Trunc(F.Size / SizeOf(TItemFromList));

      SetLength(ItemList, ListLength);

      F.ReadBuffer(ItemList[0], F.Size);
      F.Free;
    except
      on E: Exception do
      begin
{$WARNINGS OFF}
        MessageBox(0, PWideChar(AnsiString(E.ClassName + ': ' + E.Message)),
          'Error on ItemList Read function', MB_ICONERROR);
{$WARNINGS ON}
      end;
    end;
  end
  else
  begin
    MessageBox(0, 'File ItemList.bin does not found on .\Misc\ItemList.bin',
      'File Error', MB_ICONERROR);
  end;

  Result := True;
end;

class function TFunctions.SaveItemList: Boolean;
var
  Buffer: Array of Byte;
  F: TFileStream;
  Local: string;
begin
  Result := False;

  local := GetCurrentDir + '\Misc\ItemList.bin';

  if not(FileExists(local)) then
  begin
    MessageBox(0, 'Error, file does not exists!', 'File Error', MB_ICONERROR);
    Exit;
  end;

  F := TFileStream.Create(Local, fmOpenWrite);

  SetLength(Buffer, F.Size);

  Move(ItemList[0], Buffer[0], F.Size);

  F.WriteBuffer(Buffer[0], F.Size);

  F.Free;

  Result := True;
end;

end.
