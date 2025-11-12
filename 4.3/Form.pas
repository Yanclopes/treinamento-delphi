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
begin
  ShowMessage('Soma: ' + FloatToStr(StrToFloat(edtA.Text) + StrToFloat(edtB.Text) + StrToFloat(edtC.Text)) + sLineBreak +
              'Produto: ' + FloatToStr(StrToFloat(edtA.Text) * StrToFloat(edtB.Text) * StrToFloat(edtC.Text))
  );
end;

procedure Tfrm.edtKeyPress(Sender: TObject; var Key: Char);
var
  TextoAtual: string;
begin
  TextoAtual := (Sender as TEdit).Text;
  if NOT CharInSet(Key, ['0'..'9', #8]) then
    if Key = FormatSettings.DecimalSeparator then
      begin
        if Pos(FormatSettings.DecimalSeparator, TextoAtual) > 0 then
          Key := #0;
      end
    else
        Key := #0;
end;

end.
