unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    btn: TButton;
    edtA: TEdit;
    edtB: TEdit;
    lbl: TLabel;
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
  vA, vB: Integer;
begin
  if (not TryStrToInt(edtA.Text, vA)) or (not TryStrToInt(edtB.Text, vB)) then
    ShowMessage('Verifique os valores e tente novamente!');

  if vA > vB then
    btn.Caption := 'True'
  else
    btn.Caption := 'False'
end;

end.
