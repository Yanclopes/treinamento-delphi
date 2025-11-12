program atividade2_3;

uses
  Forms,
  Form in 'Form.pas' {frm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm, frm);
  Application.Run;
end.
