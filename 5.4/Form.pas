unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edt: TEdit;
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
  vValue, vA, vB, vC: Integer;
begin
  if not TryStrToInt(edt.Text, vValue) then
    ShowMessage('Verifique os valores e tente novamente!');

  vA:= Trunc(vValue / 100);
  vB:= Trunc((vValue - (vA * 100)) / 10);
  vC:= vValue - (vB * 10 + vA * 100);

  if (vA + vB) = vC then
    btn.Caption := 'True'
  else if (vA + vC) = vC then
    btn.Caption := 'True'
  else if (vB + vC) = vC then
    btn.Caption := 'True'
  else
    btn.Caption := 'False';
end;

end.
