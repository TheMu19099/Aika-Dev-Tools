unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    OpenFiles: TOpenDialog;
    btnOpenFile: TButton;
    edtPath: TEdit;
    btnEncrypt: TButton;
    btnDecrypt: TButton;
    ListBox1: TListBox;
    procedure btnOpenFileClick(Sender: TObject);
    procedure btnEncryptClick(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Path: String;

implementation

uses
  StrUtils, Functions;

{$R *.dfm}

procedure TForm1.btnOpenFileClick(Sender: TObject);
begin
  OpenFiles.Execute(0);

  if (OpenFiles.FileName <> '') then
  begin
    edtPath.Text := OpenFiles.FileName;
    Path := OpenFiles.FileName;
  end;
end;

procedure TForm1.btnDecryptClick(Sender: TObject);
begin
  if (Pos('ItemList', Path) <> 0) then // key 1
  begin
    TFunctions.DecryptFileKey1(Path, 'ItemList');
  end;

  if (Pos('PI', Path) <> 0) then // key 1
  begin
   TFunctions.DecryptFileKey1(Path, 'PI');
  end;

  if (Pos('SetItem', Path) <> 0) then // key 1
  begin
    TFunctions.DecryptFileKey1(Path, 'SetItem');
  end;

  if(Pos('ActionText', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'ActionText');
  end;

  if(Pos('SkillData', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'SkillData');
  end;

  if(Pos('BW', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'BW');
  end;

  if(Pos('Dialog', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Dialog');
  end;

  if(Pos('Easing', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Easing');
  end;

  if(Pos('MakeItems', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'MakeItems');
  end;

  if(Pos('Quest', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Quest');
  end;

  if(Pos('Recipe', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Recipe');
  end;

  if(Pos('RecipeRate', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'RecipeRate');
  end;

  if(Pos('Reinforce', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Reinforce');
  end;

  if(Pos('Reinforce2', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Reinforce2');
  end;

  if(Pos('Reinforce3', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Reinforce3');
  end;

  if(Pos('ReinforceA01', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'ReinforceA01');
  end;

  if(Pos('ReinforceW01', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'ReinforceW01');
  end;

  if(Pos('Siege01', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Siege01');
  end;

  if(Pos('Siege02', Path) <> 0) then //key 2
  begin
    TFunctions.DecryptFileKey2(Path, 'Siege02');
  end;
end;

procedure TForm1.btnEncryptClick(Sender: TObject);
begin
  if (Pos('ItemList', Path) <> 0) then // key 1
  begin
    TFunctions.EncryptFileKey1(Path, 'ItemList');
  end;

  if (Pos('PI', Path) <> 0) then // key 1
  begin
    TFunctions.EncryptFileKey1(Path, 'PI');
  end;

  if (Pos('SetItem', Path) <> 0) then // key 1
  begin
    TFunctions.EncryptFileKey1(Path, 'SetItem');
  end;

  if(Pos('ActionText', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'ActionText');
  end;

  if(Pos('SkillData', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'SkillData');
  end;

  if(Pos('BW', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'BW');
  end;

  if(Pos('Dialog', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Dialog');
  end;

  if(Pos('Easing', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Easing');
  end;

  if(Pos('MakeItems', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'MakeItems');
  end;

  if(Pos('Quest', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Quest');
  end;

  if(Pos('Recipe', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Recipe');
  end;

  if(Pos('RecipeRate', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'RecipeRate');
  end;

  if(Pos('Reinforce', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Reinforce');
  end;

  if(Pos('Reinforce2', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Reinforce2');
  end;

  if(Pos('Reinforce3', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Reinforce3');
  end;

  if(Pos('ReinforceA01', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'ReinforceA01');
  end;

  if(Pos('ReinforceW01', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'ReinforceW01');
  end;

  if(Pos('Siege01', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Siege01');
  end;

  if(Pos('Siege02', Path) <> 0) then //key 2
  begin
    TFunctions.EncryptFileKey2(Path, 'Siege02');
  end;
end;

end.
