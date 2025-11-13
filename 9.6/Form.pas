unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math; 

type
  Tfrm = class(TForm)
    lblAx: TLabel;
    edtAx: TEdit;
    lblAy: TLabel;
    edtAy: TEdit;
    lblBx: TLabel;
    edtBx: TEdit;
    lblBy: TLabel;
    edtBy: TEdit;
    lblCx: TLabel;
    edtCx: TEdit;
    lblCy: TLabel;
    edtCy: TEdit;
    btnCalcular: TButton;
    memoResultado: TMemo;
    procedure btnCalcularClick(Sender: TObject); 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

type
  TMeuPonto = record
    x: Double;
    y: Double;
  end;

function CalcularDistancia(P1, P2: TMeuPonto): Double;
begin
  Result := Sqrt(Sqr(P2.x - P1.x) + Sqr(P2.y - P1.y));
end;

function CalcularArea(A, B, C: TMeuPonto): Double;
begin
  Result := 0.5 * Abs(A.x * (B.y - C.y) + B.x * (C.y - A.y) + C.x * (A.y - B.y));
end;

function CalcularAngulo(ladoOposto, ladoAdj1, ladoAdj2: Double): Double;
var
  cosAngulo, radianos: Double;
begin
  cosAngulo := (Sqr(ladoAdj1) + Sqr(ladoAdj2) - Sqr(ladoOposto)) / (2 * ladoAdj1 * ladoAdj2);
  cosAngulo := EnsureRange(cosAngulo, -1.0, 1.0);
  radianos := ArcCos(cosAngulo);
  Result := RadToDeg(radianos);
end;

function CalcularAltura(AreaTriangulo: Double; ladoBase: Double): Double;
begin
  Result := (2 * AreaTriangulo) / ladoBase;
end;

procedure Tfrm.btnCalcularClick(Sender: TObject);
var
  A, B, C: TMeuPonto;
  ladoAB, ladoBC, ladoCA: Double;
  area, perimetro: Double;
  alturaA, alturaB, alturaC: Double;
  anguloABC, anguloBCA, anguloCAB: Double;
  const Epsilon = 1E-9;
begin
  memoResultado.Clear;

  try
    A.x := StrToFloat(edtAx.Text);
    A.y := StrToFloat(edtAy.Text);
    B.x := StrToFloat(edtBx.Text);
    B.y := StrToFloat(edtBy.Text);
    C.x := StrToFloat(edtCx.Text);
    C.y := StrToFloat(edtCy.Text);
    area := CalcularArea(A, B, C);

    if area < Epsilon then
    begin
      memoResultado.Lines.Add('O triângulo não pode ser criado (pontos colineares).');
    end
    else
    begin
      ladoAB := CalcularDistancia(A, B);
      ladoBC := CalcularDistancia(B, C);
      ladoCA := CalcularDistancia(C, A);
      perimetro := ladoAB + ladoBC + ladoCA;

      anguloBCA := CalcularAngulo(ladoAB, ladoBC, ladoCA);
      anguloCAB := CalcularAngulo(ladoBC, ladoCA, ladoAB); 
      anguloABC := CalcularAngulo(ladoCA, ladoAB, ladoBC); 

      alturaA := CalcularAltura(area, ladoBC);
      alturaB := CalcularAltura(area, ladoCA);
      alturaC := CalcularAltura(area, ladoAB);


      memoResultado.Lines.Add('Triângulo válido. Resultados:');
      memoResultado.Lines.Add('-----------------------------');

      memoResultado.Lines.Add('--- Lados ---');
      memoResultado.Lines.Add('Lado AB: ' + FormatFloat('0.00', ladoAB));
      memoResultado.Lines.Add('Lado BC: ' + FormatFloat('0.00', ladoBC));
      memoResultado.Lines.Add('Lado CA: ' + FormatFloat('0.00', ladoCA));
      memoResultado.Lines.Add('');

      memoResultado.Lines.Add('--- Ângulos (em graus) ---');
      memoResultado.Lines.Add('Ângulo CAB (em A): ' + FormatFloat('0.00', anguloCAB) + '°');
      memoResultado.Lines.Add('Ângulo ABC (em B): ' + FormatFloat('0.00', anguloABC) + '°');
      memoResultado.Lines.Add('Ângulo BCA (em C): ' + FormatFloat('0.00', anguloBCA) + '°');
      memoResultado.Lines.Add('');

      memoResultado.Lines.Add('--- Alturas ---');
      memoResultado.Lines.Add('Altura de A (rel. BC): ' + FormatFloat('0.00', alturaA));
      memoResultado.Lines.Add('Altura de B (rel. CA): ' + FormatFloat('0.00', alturaB));
      memoResultado.Lines.Add('Altura de C (rel. AB): ' + FormatFloat('0.00', alturaC));
      memoResultado.Lines.Add('');

      memoResultado.Lines.Add('--- Totais ---');
      memoResultado.Lines.Add('Perímetro: ' + FormatFloat('0.00', perimetro));
      memoResultado.Lines.Add('Área: ' + FormatFloat('0.00', area));
    end;

  except
    on E: EConvertError do
    begin
      memoResultado.Lines.Add('Erro: Por favor, insira apenas números válidos nas coordenadas.');
    end;
    on E: Exception do
    begin
      memoResultado.Lines.Add('Ocorreu um erro: ' + E.Message);
    end;
  end;
end;

end.