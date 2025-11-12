unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  Tfrm = class(TForm)
    lbl: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    procedure calc();
    function subCalc(pValue: Integer): Double;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent);
    { Public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

constructor Tfrm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  calc();
end;

procedure Tfrm.FormCreate(Sender: TObject);
begin
  calc();
end;
procedure Tfrm.calc();
var
  Resultado: Double;
begin
  lbl.Caption := FloatToStr( subCalc(6) + subCalc(13) + subCalc(21));
end;

function Tfrm.subCalc(pValue: Integer): Double;
begin
  Result:= (Sqrt(pValue) + pValue) / 2
end;

end.
