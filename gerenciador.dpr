program gerenciador;

uses
  Forms,
  process in 'process.pas' {frm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm, frm);
  Application.Run;
end.
