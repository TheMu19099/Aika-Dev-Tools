unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  op_t = packed record
    hi, lo: Uint8;
  end;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function NormalizeOpcode(OldOp: Uint16): Uint16;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.Text := '0x' + IntToHex(Self.NormalizeOpcode(StrToInt(Edit1.Text)));
end;

function TForm1.NormalizeOpcode(OldOp: Uint16): Uint16;
var
  Opcode: op_t;
  Op: Uint16;
begin
  Move(OldOp, Opcode, sizeof(op_t));
  Opcode.lo := ((Opcode.lo shr 4) and $F) + ((Opcode.lo shr 0) and $F);
  Move(Opcode, Op, sizeof(Uint16));
  Result := Op;
end;

end.
