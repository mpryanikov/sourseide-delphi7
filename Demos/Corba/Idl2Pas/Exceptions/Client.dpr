program Client;

uses
  Forms,
  ClientMain in 'ClientMain.pas' {Form1},
  Bank_i in 'Bank_i.pas',
  Bank_c in 'Bank_c.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
