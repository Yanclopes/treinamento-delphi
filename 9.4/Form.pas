unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm = class(TForm)
    lbledtA: TLabeledEdit;
    lbledtB: TLabeledEdit;
    lbledtC: TLabeledEdit;
    btn: TButton;
    procedure btnClick(Sender: TObject);
  private
    function min(pA, pB, pC: Integer): integer;
    function max(pA, pB, pC: Integer): integer;
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
  vA, vB, vC: Integer;
begin
  vA := StrToInt(lbledtA.Text);
  vB := StrToInt(lbledtB.Text);
  vC := StrToInt(lbledtC.Text);

  ShowMessage(FloatToStr((max(vA, vB, vC) - min(vA, vB, vC))/(2 + (max(vA, vB, vC) * min(vA, vB, vC)))));
end;

function Tfrm.max(pA, pB, pC: Integer): integer;
var
  value: Integer;
begin
  Result:= pA;
  for value in [pB, pC] do
    if Result < value then
      Result:= value;
end;

function Tfrm.min(pA, pB, pC: Integer): integer;
var
  value: Integer;
begin
  Result:= pA;
  for value in [pB, pC] do
    if Result > value then
      Result:= value;
end;
end.
