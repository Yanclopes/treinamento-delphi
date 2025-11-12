unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

const
  RAIO_TERRA = 6350000;

type
  Tfrm = class(TForm)
    lbl: TLabel;
    edt: TEdit;
    btn: TButton;
    procedure edtKeyPress(Sender: TObject; var Key: Char);
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
  height : Double;
begin
  if TryStrToFloat(edt.Text, height) then
    ShowMessage('Distancia: ' + FloatToStr(SQRT(height*(2 * RAIO_TERRA + height) )))
  else
    ShowMessage('Informe um numero valido');
end;

procedure Tfrm.edtKeyPress(Sender: TObject; var Key: Char);
var
  TextoAtual: string;
begin
  TextoAtual := (Sender as TEdit).Text;
  if NOT CharInSet(Key, ['0'..'9', #8]) then
  begin
    if Key = FormatSettings.DecimalSeparator then
      begin
        if Pos(FormatSettings.DecimalSeparator, TextoAtual) > 0 then
        begin
          Key := #0;
        end;
      end
    else
      begin
        Key := #0;
      end;
  end;
end;

end.
