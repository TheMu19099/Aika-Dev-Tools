program ItemListEditor;

{$WARN SYMBOL_DEPRECATED OFF}

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  Functions in 'Lib\Functions.pas',
  MiscData in 'Lib\MiscData.pas',
  GlobalDefs in 'GlobalDefs.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
