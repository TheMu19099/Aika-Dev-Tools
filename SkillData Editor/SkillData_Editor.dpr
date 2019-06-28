program SkillData_Editor;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  Functions in 'Lib\Functions\Functions.pas',
  Vcl.Themes,
  Vcl.Styles,
  FileData in 'Lib\Data\FileData.pas',
  GlobalDefs in 'Lib\Data\GlobalDefs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
