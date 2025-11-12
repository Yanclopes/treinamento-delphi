program atividade7_4;

uses
  Forms,
  Form in 'Form.pas' {frm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm, frm);
  Application.Run;
end.
