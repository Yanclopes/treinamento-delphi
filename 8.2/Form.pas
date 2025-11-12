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
    btnA: TButton;
    lblAreaA: TLabel;
    lblPerimetroA: TLabel;
    edtX: TEdit;
    edtY: TEdit;
    edtZ: TEdit;
    btnB: TButton;
    lblAreaB: TLabel;
    lblPerimetroB: TLabel;
    procedure btnAClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure getPerimetro(pA, pB, pC: Integer; var pPerimetro: Integer);
    procedure getArea(pA, pB, pC: Integer; var pArea: Double);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

procedure Tfrm.btnAClick(Sender: TObject);
var
  vA, vB, vC, vD, vPerimetro: Integer;
  vArea: Double;
begin
  if (not TryStrToInt(edtA.Text, vA)) or (not TryStrToInt(edtB.Text, vB) or (not TryStrToInt(edtC.Text, vC))) then
  begin
    ShowMessage('Verifique os valores e tente novamente!');
    Exit;
  end;
  getPerimetro(vA, vB, vC, vPerimetro);
  getArea(vA, vB, vC, vArea);
  lblPerimetroA.Caption := 'Perimetro: ' + IntToStr(vPerimetro);
  lblAreaA.Caption := 'Area: ' + FloatToStr(vArea);
end;

procedure Tfrm.btnBClick(Sender: TObject);
var
  vA, vB, vC, vD, vPerimetro: Integer;
  vArea: Double;
begin
  if (not TryStrToInt(edtX.Text, vA)) or (not TryStrToInt(edtY.Text, vB) or (not TryStrToInt(edtZ.Text, vC))) then
  begin
    ShowMessage('Verifique os valores e tente novamente!');
    Exit;
  end;
  getPerimetro(vA, vB, vC, vPerimetro);
  getArea(vA, vB, vC, vArea);
  lblPerimetroB.Caption := 'Perimetro: ' + IntToStr(vPerimetro);
  lblAreaB.Caption := 'Area: ' + FloatToStr(vArea);
end;

procedure Tfrm.getPerimetro(pA, pB, pC: Integer; var pPerimetro: Integer);
begin
  pPerimetro:= pA + pB + pC;
end;

procedure Tfrm.getArea(pA, pB, pC: Integer; var pArea: Double);
var
  vPerimetro: Integer;
  vSemiperimetro: Double;
begin
  getPerimetro(pA, pB, pC, vPerimetro);
  vSemiperimetro:= vPerimetro / 2;
  pArea:= Sqrt(vSemiperimetro * (vSemiperimetro - pA) * (vSemiperimetro - pB) * (vSemiperimetro - pC));
end;
end.
