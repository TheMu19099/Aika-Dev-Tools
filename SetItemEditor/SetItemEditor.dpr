program SetItemEditor;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  FileData in 'Src\FileData.pas',
  Load in 'Src\Load.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
