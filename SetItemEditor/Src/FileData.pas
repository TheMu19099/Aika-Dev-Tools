unit FileData;

interface

type
  T_SetItem = packed record
    Name: ARRAY [0 .. 63] OF AnsiChar;
    NameEnglish: ARRAY [0 .. 63] OF AnsiChar;

    Unk_1, // 0x5
    Unk_2: WORD; // 0x3B
    Equips: ARRAY [0 .. 11] OF WORD;
    EffSlot: ARRAY [0 .. 9] OF WORD;
    Unk_3: ARRAY [0 .. 15] OF BYTE;
    EF, EFV: ARRAY [0 .. 5] OF WORD;
  end;

type
  TSetItem = Array [0 .. 800] OF T_SetItem;

type
  TEff = packed record
    Name: ARRAY [0 .. 67] OF AnsiChar;
  end;

type
  TEffects = Array [0..394] of TEff;

implementation

end.
