unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edtA: TEdit;
    edtB: TEdit;
    edtC: TEdit;
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
  vMax, vMin, vA, vB, vC, i: Integer;
begin
  if (not TryStrToInt(edtA.Text, vA)) or (not TryStrToInt(edtB.Text, vB)) or (not TryStrToInt(edtC.Text, vC)) then
  begin
      ShowMessage('Verifique os valores e tente novamente!');
      Exit;
  end;

  vMax:= vA;
  vMin:= vA;

  for i in [vB, vC] do
  begin
    if i > vMax then
      vMax:= i;
    if i < vMin then
      vMin:= i;
  end;

  ShowMessage('Maior: ' + IntToStr(vMax) + sLineBreak +
              'Menor: ' + IntToStr(vMin)
  );
end;

end.
