unit MiscData;

interface

uses
  Windows;

type
  TItemFromList = packed record
    Name: Array [0 .. 63] of AnsiChar; // Nome Portugues
    NameEnglish: Array [0 .. 63] of AnsiChar; // Nome original
    Descrition: Array [0 .. 127] of AnsiChar; // Descrição

    CanAgroup: Boolean;
    MaxValue: Byte;
    ItemType: WORD;
    UnkValues: ARRAY [0 .. 7] OF BYTE;
    UseEffect: WORD;
    Unk_other: ARRAY [0 .. 5] OF BYTE;

    DelayUse, // delay ao usar item consumivel
    PriceHonor, // valor
    PriceMedal, // valor
    PriceGold, // valor
    SellPrince, Null_0: DWORD;

    Classe: WORD; // dword
    Null_1: Array [0 .. 5] of BYTE;
    MeshID: WORD;

    Null_00: Boolean;
    BonusEquip: LongInt;
    Null_3: ARRAY [0 .. 4] OF BYTE;

    IconID, Unk_1, Conjunto: WORD;
    Null_4: WORD;
    Expires: Boolean; // se  expira ou não aqui não é a data
    Unk_Bool: BYTE;

    Level: WORD;
    Null_001: DWORD;
    Duration: DWORD;
    Nothing_2: ARRAY [0 .. 17] OF BYTE;

    ATKFis, DefFis, MagATK, DefMag: WORD;

    Null0: Array [0 .. 5] OF BYTE;
    HP, MP: WORD; //
    Null001: Array [0 .. 13] OF BYTE;
    TypeItem: BYTE; // Se é raro...normal....  [0~~7]
    Null01: WORD;
    TypeTrade: BYTE; // [0~~2] 1 N Trocavel, 2 Negociação revertida
    Null02: Array [0 .. 11] OF BYTE;
    Durabilidade: BYTE;
    Null_5: ARRAY [0 .. 4] OF BYTE;

    EF, EFV: Array [0 .. 2] of WORD;
    Change, // Mudança de aparencia
    Reduction, // se ja foi reduzido
    Fortification: Boolean; //
    Rank: BYTE;
    Null, MaxLvl, Null3: DWORD;
    TypePriceItem: WORD; // se for cash por exemplo
    TypePriceItemValue: WORD;
    Null4: Array [0 .. 15] of BYTE;
    CanSealed: WordBool;
    Null5: WORD;
  end;

type
  TItemList = ARRAY OF TItemFromList;

implementation

end.
