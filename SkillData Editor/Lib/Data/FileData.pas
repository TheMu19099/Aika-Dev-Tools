unit FileData;

interface

uses
  Windows, SysUtils;

type
  T_SkillData = packed record
    Index, MinLevel, Null_3, Level, Classification: DWORD;

    NameEnglish: Array [0 .. 63] of AnsiChar;
    Name: Array [0 .. 63] of AnsiChar;

    SkillPoints: DWORD;
    LearnCosts: DWORD;
    Classe: DWORD;

    Unk_0: ARRAY [0 .. 11] OF BYTE;

    MP: DWORD;
    Unk_1: DWORD;
    PreCooldown: DWORD;
    Cooldown: DWORD; { Em milisegundos }
    CooldownType: DWORD;
    TargetType: DWORD;
    UniqueType: DWORD;
    MaxTargets: DWORD;
    Unknown1: DWORD;
    Range: DWORD;
    DamageRange: DWORD;
    SuccessRate: DWORD;
    Agressive: DWORD;
    BuffDebuff: DWORD;
    Attribute: LongInt;
    Unk_2: ARRAY [0 .. 15] OF BYTE;
    Damage: DWORD;
    Adicional: DWORD;
    Unk_4: DWORD;

    EF, EFV: Array [0 .. 3] of DWORD;

    Duration: DWORD; { Em segundos }

    Unk_5: ARRAY [0 .. 23] OF BYTE;
    CastTime: DWORD; { Em milisegundos }
    Unk_6: ARRAY [0 .. 23] OF BYTE;
    TargetAnimation: DWORD;
    Unk_7: ARRAY [0 .. 75] OF BYTE;
    Description: ARRAY [0 .. 287] OF AnsiChar;
  end;

type
  TSkillData = ARRAY [0 .. 11998] OF T_SkillData;

type
  T_ItemEff = packed record
    EffName: Array [0..67] of AnsiChar;
  end;

type
  TItemEff = Array [0..393] of T_ItemEff;

type
  T_EffDesc = packed record
    Desc: Array [0..95] of AnsiChar;
  end;

type
  TEffDesc = Array [0..393] of T_EffDesc;

implementation

end.
