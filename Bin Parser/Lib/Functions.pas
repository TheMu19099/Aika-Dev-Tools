unit Functions;

interface

uses
  Windows, SysUtils, StrUtils, Classes, Dialogs;

Type
  TByteArr = array of byte;
  TByteArray = array of byte;

type
  TFunctions = class(TObject)
    class function DecryptFileKey1(FilePath: String; FileName: String): Boolean;
    class function DecryptFileKey2(FilePath: String; FileName: String): Boolean;
    class function EncryptFileKey1(FilePath: String; FileName: String): Boolean;
    class function EncryptFileKey2(FilePath: String; FileName: String): Boolean;

    class function StrToArray(const Hexstr: String): TByteArr;
    class function CountStr(Str: String): Integer;
    class function BinToAscii(const bin: array of byte): AnsiString;
  end;

implementation

{ TFunctions }

class function TFunctions.DecryptFileKey1(FilePath: String; FileName: String): Boolean;
var
  f: TFileStream;
  buffer: array of byte;
  j, size: Integer;

  Key1: string;
  cipherTable: TByteArr;
  cipherLength: Integer;
  par: Boolean;
  sign: Integer;
  MyFile: TFileStream;
  MyFileName: String;
begin
  sign := 1;
  Key1 := 'BEC6C0CCC5DB20B8AEBDBAC6AE20C0CEC4DAB5F920B7E7C6BEC0D4B4CFB4D92E20B7EAB7E720B6F6B6F32E2E2E20C0B82E2E2E20C1A4B8BB20C1A4B8BB20B1CDC2FAB4D92E20B1D7B7A1B5B520C7D8BEDFC7CFB4CF20BEEEC2BF20BCF620BEF8C1D22E2E2E20';

  if not(FileExists(FilePath)) then
  begin
    MessageBox(0, 'File not found.', 'File Error', 0);
  end;

  f := TFileStream.Create(FilePath, fmOpenRead);
  size := f.size;
  SetLength(buffer, size);
  f.Read(buffer[0], size);
  f.Free;

  if (size mod 2) = 0 then
    par := true
  else
    par := False;

  cipherLength := CountStr(Key1);
  cipherTable := StrToArray(Key1);

  j := 0;
  while j < size - 1 do
  begin
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    if not par then
    begin
      buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
      inc(j);
    end;
  end;

  MyFileName := GetCurrentDir + '\decr_' + FileName + '.bin';
  MyFile := TFileStream.Create(MyFileName, fmCreate);
  MyFile.Write(buffer[0], size);
  MyFile.Free;

  MessageBox(0, 'File decrypted successfully!', 'Success', 0);

  Result := True;
end;

class function TFunctions.DecryptFileKey2(FilePath: String; FileName: String): Boolean;
var
  f: TFileStream;
  buffer: array of byte;
  j, size: Integer;

  Key2: string;
  cipherTable: TByteArr;
  cipherLength: Integer;
  par: Boolean;
  sign: Integer;
  MyFile: TFileStream;
  MyFileName: String;
begin
  sign := 1;
  Key2 := 'C0CCB0C520C0D0C1F620B8B6BCBCBFE42E20C0D0C0B8B8E920B3AABBDBBBE7B6F7B5CBB4CFB4D92E20C1A6B9DF20C0FDB4EB20C0D0C1F6B8BBB0ED20C2F8C7D120BBE7B6F7B5EEB7CE20BBE7BCBCBFE42E20BEC6BCCCC1D23F20C1C1C0BABCBCBBF3B8B8B5ECBDC3B4D92E';

  if not(FileExists(FilePath)) then
  begin
    MessageBox(0, 'File not found.', 'File Error', 0);
  end;

  f := TFileStream.Create(FilePath, fmOpenRead);
  size := f.size;
  SetLength(buffer, size);
  f.Read(buffer[0], size);
  f.Free;

  if (size mod 2) = 0 then
    par := true
  else
    par := False;

  cipherLength := CountStr(Key2);
  cipherTable := StrToArray(Key2);

  j := 0;
  while j < size - 1 do
  begin
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    if not par then
    begin
      buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
      inc(j);
    end;
  end;

  MyFileName := GetCurrentDir + '\decr_' + FileName + '.bin';
  MyFile := TFileStream.Create(MyFileName, fmCreate);
  MyFile.Write(buffer[0], size);
  MyFile.Free;

  MessageBox(0, 'File decrypted successfully!', 'Success', 0);

  Result := True;
end;

class function TFunctions.EncryptFileKey1(FilePath: String; FileName: String): Boolean;
var
  f: TFileStream;
  buffer: array of byte;
  j, size: Integer;

  Key1: string;
  cipherTable: TByteArr;
  cipherLength: Integer;
  par: Boolean;
  sign: Integer;
  MyFile: TFileStream;
  MyFileName: String;
begin
  sign := -1;
  Key1 := 'BEC6C0CCC5DB20B8AEBDBAC6AE20C0CEC4DAB5F920B7E7C6BEC0D4B4CFB4D92E20B7EAB7E720B6F6B6F32E2E2E20C0B82E2E2E20C1A4B8BB20C1A4B8BB20B1CDC2FAB4D92E20B1D7B7A1B5B520C7D8BEDFC7CFB4CF20BEEEC2BF20BCF620BEF8C1D22E2E2E20';

  if not(FileExists(FilePath)) then
  begin
    MessageBox(0, 'File not found.', 'File Error', 0);
  end;

  f := TFileStream.Create(FilePath, fmOpenRead);
  size := f.size;
  SetLength(buffer, size);
  f.Read(buffer[0], size);
  f.Free;

  if (size mod 2) = 0 then
    par := true
  else
    par := False;

  cipherLength := CountStr(Key1);
  cipherTable := StrToArray(Key1);

  j := 0;
  while j < size - 1 do
  begin
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    if not par then
    begin
      buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
      inc(j);
    end;
  end;

  MyFileName := GetCurrentDir + '\encr_' + FileName + '.bin';
  MyFile := TFileStream.Create(MyFileName, fmCreate);
  MyFile.Write(buffer[0], size);
  MyFile.Free;

  MessageBox(0, 'File encrypted successfully!', 'Success', 0);

  Result := True;
end;

class function TFunctions.EncryptFileKey2(FilePath: String; FileName: String): Boolean;
var
  f: TFileStream;
  buffer: array of byte;
  j, size: Integer;

  Key2: string;
  cipherTable: TByteArr;
  cipherLength: Integer;
  par: Boolean;
  sign: Integer;
  MyFile: TFileStream;
  MyFileName: String;
begin
  sign := -1;
  Key2 := 'C0CCB0C520C0D0C1F620B8B6BCBCBFE42E20C0D0C0B8B8E920B3AABBDBBBE7B6F7B5CBB4CFB4D92E20C1A6B9DF20C0FDB4EB20C0D0C1F6B8BBB0ED20C2F8C7D120BBE7B6F7B5EEB7CE20BBE7BCBCBFE42E20BEC6BCCCC1D23F20C1C1C0BABCBCBBF3B8B8B5ECBDC3B4D92E';

  if not(FileExists(FilePath)) then
  begin
    MessageBox(0, 'File not found.', 'File Error', 0);
  end;

  f := TFileStream.Create(FilePath, fmOpenRead);
  size := f.size;
  SetLength(buffer, size);
  f.Read(buffer[0], size);
  f.Free;

  if (size mod 2) = 0 then
    par := true
  else
    par := False;

  cipherLength := CountStr(Key2);
  cipherTable := StrToArray(Key2);

  j := 0;
  while j < size - 1 do
  begin
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
    inc(j);
    if not par then
    begin
      buffer[j] := buffer[j] - sign * (cipherTable[j mod cipherLength] + j);
      inc(j);
    end;
  end;

  MyFileName := GetCurrentDir + '\encr_' + FileName + '.bin';
  MyFile := TFileStream.Create(MyFileName, fmCreate);
  MyFile.Write(buffer[0], size);
  MyFile.Free;

  MessageBox(0, 'File encrypted successfully!', 'Success', 0);

  Result := True;
end;

class function TFunctions.StrToArray(const Hexstr: String): TByteArr;
var
  I: Integer;
begin
  if Length(Hexstr) > 1 then
  begin
    SetLength(Result, Length(Hexstr) div 2);
    for I := 0 to (Length(Hexstr) div 2 - 1) do
      Result[I] := StrToInt('$' + Copy(Hexstr, (I * 2) + 1, 2));
  end
end;

class function TFunctions.CountStr(Str: String): Integer;
begin
  Result := Length(Str) div 2;
end;

class function TFunctions.BinToAscii(const bin: array of byte): AnsiString;
var
  I: Integer;
begin
  SetLength(Result, Length(bin));
  for I := 0 to Length(bin) - 1 do
    Result[1 + I] := AnsiChar(bin[I]);
end;

end.
