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
    edtD: TEdit;
    btn: TButton;
    procedure btnClick(Sender: TObject);
  private
    procedure switch(var pA, pB: Integer);
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
  vA, vB, vC, vD: Integer;
begin
  if (not TryStrToInt(edtA.Text, vA)) or (not TryStrToInt(edtB.Text, vB) or (not TryStrToInt(edtC.Text, vC)) or (not TryStrToInt(edtD.Text, vD))) then
  begin
    ShowMessage('Verifique os valores e tente novamente!');
    Exit;
  end;
  switch(vA, vB);
  switch(vC, vD);

  edtA.Text := IntToStr(vA);
  edtB.Text := IntToStr(vB);
  edtC.Text := IntToStr(vC);
  edtD.Text := IntToStr(vD);
end;

procedure Tfrm.switch(var pA, pB: Integer);
var
  vTemp: Integer;
begin
  vTemp:= pA;
  pA:= pB;
  pb:= vTemp;
end;

end.
