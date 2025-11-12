unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edtA: TEdit;
    edtB: TEdit;
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
  vA, vB, vMedia: Double;
begin
  if (not TryStrToFloat(edtA.Text, vA)) or (not TryStrToFloat(edtB.Text, vB)) then
  begin
    ShowMessage('Verifique os valores e tente novamente');
    Exit;
  end;

  vMedia:= (vA + vB) / 2;

  if vA > vB then
  begin
    edtA.Text := FloatToStr(vA * 3);
    edtB.Text := FloatToStr(vMedia);
  end
  else
  begin
    edtB.Text := FloatToStr(vB * 3);
    edtA.Text := FloatToStr(vMedia);
  end;
end;

end.
