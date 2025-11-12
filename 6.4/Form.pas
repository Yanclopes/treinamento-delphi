unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    edtN: TEdit;
    edtA: TEdit;
    btn: TButton;
    procedure btnClick(Sender: TObject);
  private
    errors: integer;
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
  vA, vN: Integer;
begin
  if errors >= 10 then
  begin
    ShowMessage('voc� � burro?');
    errors:= 0;
    Exit;
  end;

  if (not TryStrToInt(edtA.Text, vA)) or (not TryStrToInt(edtN.Text, vN)) then
  begin
    ShowMessage('Verifique os valores e tente novamente!');
    Inc(errors);
    Exit;
  end;

  if vN mod 2 = 0 then
  begin
    if Trunc(vN / 2) mod 2 = 0 then
    begin
      ShowMessage('Par');
      Exit;
    end;
    ShowMessage('Impar');
    Exit;
  end;

  if ((vA mod 2) = 0) = ((vN div 2) mod 2 = 0) then
  begin
    ShowMessage('Par');
    Exit;
  end;
  ShowMessage('Impar');
  Exit;
end;

end.
