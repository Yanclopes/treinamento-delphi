unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    lbl: TLabel;
    edt: TEdit;
    btn: TButton;
    procedure clickBtn(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm : Tfrm;

implementation

{$R *.dfm}
procedure Tfrm.clickBtn(Sender: TObject);
begin
  lbl.Caption := edt.Text;
  edt.Clear;
end;

end.

