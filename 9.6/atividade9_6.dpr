program atividade9_6;

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
