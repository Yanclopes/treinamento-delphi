unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edtM: TEdit;
    edtN: TEdit;
    btn: TButton;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

procedure Tfrm.btnClick(Sender: TObject);
var
  n, m: Integer;
begin
  if not TryStrToInt(edtN.Text, n) then
  begin
    ShowMessage('O valor de "n" � inv�lido.');
    Exit;
  end;

  if not TryStrToInt(edtM.Text, m) then
  begin
    ShowMessage('O valor de "m" � inv�lido.');
    Exit;
  end;

  if m = 0 then
    ShowMessage('Erro: "m" n�o pode ser zero.')
  else if (n mod m) = 0 then
    ShowMessage('Resultado (n/m): ' + FloatToStr(n / m))
  else
    ShowMessage('n cannot be divided by m');
end;

end.
