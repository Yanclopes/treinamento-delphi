unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edt: TEdit;
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
  vValue, vN: Integer;
begin
  if not TryStrToInt(Trim(edt.Text), vValue) then
  begin
    ShowMessage('Verifique o valor e tente novamente!');
    Exit();
  end;

  vN:= 10 + ((vValue - 1) div 2);

  if vValue mod 2 = 0 then
    ShowMessage('Numero: ' + IntToStr(vN - ((vN div 10) * 10 )))
  else
    ShowMessage('Numero: ' + IntToStr(vN div 10));
end;

end.
