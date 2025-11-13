unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm = class(TForm)
    lbled: TLabeledEdit;
    btn: TButton;
    edtInit: TEdit;
    edtResult: TEdit;
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
  template: string;
begin
  template:= edtInit.Text;
  Insert(
    lbled.Text,
    template,
    Pos('(', template) + 1
    );
  edtResult.Text:= template;
end;

end.
