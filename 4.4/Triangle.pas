unit Triangle;

interface

uses
  SysUtils, Classes, Math; 

type
  TVertice = array[0..1] of Integer;
  TMatriz = array[0..2] of array[0..2] of Integer;

  TTriangle = class(TObject)
  private
    mtz: TMatriz;
  public
    constructor Create; 
    procedure setVertices(A: TVertice; B: TVertice; C: TVertice);
    function GetPerimetro: Double;
    function GetArea: Double;
  end;

implementation

constructor TTriangle.Create;
begin
  inherited Create; 
  mtz[0][2] := 1;
  mtz[1][2] := 1;
  mtz[2][2] := 1;
end;

procedure TTriangle.setVertices(A: TVertice; B: TVertice; C: TVertice);
begin
  mtz[0][0] := A[0]; // A[X]
  mtz[0][1] := A[1]; // A[Y]

  mtz[1][0] := B[0]; // B[X]
  mtz[1][1] := B[1]; // B[Y]

  mtz[2][0] := C[0]; // C[X]
  mtz[2][1] := C[1]; // C[Y]
end;

function TTriangle.GetPerimetro: Double;
var
  ladoAB, ladoBC, ladoCA: Double;

  function Distancia(Ax, Ay, Bx, By: Integer): Double;
  begin
    Result := Sqrt(Sqr(Bx - Ax) + Sqr(By - Ay));
  end;

begin
  ladoAB := Distancia(mtz[0][0], mtz[0][1], mtz[1][0], mtz[1][1]);
  ladoBC := Distancia(mtz[1][0], mtz[1][1], mtz[2][0], mtz[2][1]);
  ladoCA := Distancia(mtz[2][0], mtz[2][1], mtz[0][0], mtz[0][1]);

  Result := ladoAB + ladoBC + ladoCA;
end;

function TTriangle.GetArea: Double;
var
  Ax, Ay: Integer;
  Bx, By: Integer;
  Cx, Cy: Integer;
begin
  Ax := mtz[0][0];
  Ay := mtz[0][1];
  
  Bx := mtz[1][0];
  By := mtz[1][1];
  
  Cx := mtz[2][0];
  Cy := mtz[2][1];

  Result := 0.5 * Abs((Ax * (By - Cy)) + (Bx * (Cy - Ay)) + (Cx * (Ay - By)));
end;

end.