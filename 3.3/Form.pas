unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edt: TEdit;
    cbx: TComboBox;
    btn: TButton;
    procedure edtKeyPress(Sender: TObject; var Key: Char);
    procedure click(Sender: TObject);
  private
    function calc(value: Double; option: Integer): Double;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

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

procedure Tfrm.click(Sender: TObject);
var
  value: Double;
  option: Integer;
begin
  if TryStrToFloat(edt.Text, value) then
  begin
    option := cbx.ItemIndex;
    if option < 0 then
    begin
      ShowMessage('Por favor, selecione uma opção de conversão.');
      cbx.SetFocus;
      Exit;
    end;
    ShowMessage('Resultado: ' + FloatToStr(calc(value, option)));
  end
  else
  begin
    ShowMessage('O valor "' + edt.Text + '" não é um número válido.');
    edt.SetFocus;
  end;
end;

function Tfrm.calc(value: Double; option: Integer): Double;
begin
  case option of
    0: Result := value / 3.6;
    1: Result := value * 3.6;
  else
    Result := 0;
  end;
end;

end.
