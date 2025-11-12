unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm = class(TForm)
    lbl: TLabel;
    btnDesativar: TButton;
    btnAtivar: TButton;
    procedure clickBtnAtivar(Sender: TObject);
    procedure clickBtnDesativar(Sender: TObject);  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

procedure Tfrm.clickBtnAtivar(Sender: TObject);
begin
  lbl.Enabled := True;
  lbl.Color := clGreen;
  btnAtivar.Enabled := False;
  btnDesativar.Enabled := True;
end;

procedure Tfrm.clickBtnDesativar(Sender: TObject);
begin
  lbl.Enabled := False;
  lbl.Color := clRed;
  btnDesativar.Enabled := False;
  btnAtivar.Enabled := True;
end;

end.


