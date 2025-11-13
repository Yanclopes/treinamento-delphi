unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    lblStatus: TLabel;
    btnReiniciar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BotaoTabuleiroClick(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
  private
    FJogadorAtual: Char;
    FContadorJogadas: Integer;
    procedure AlternarJogador;
    function VerificarVencedor: Boolean;
    procedure ReiniciarJogo;
  public
    { Public declarations }
  end;

var
  frm: TForm;

implementation

{$R *.dfm}

procedure Tfrm.FormCreate(Sender: TObject);
begin
  Button1.OnClick := BotaoTabuleiroClick;
  Button2.OnClick := BotaoTabuleiroClick;
  Button3.OnClick := BotaoTabuleiroClick;
  Button4.OnClick := BotaoTabuleiroClick;
  Button5.OnClick := BotaoTabuleiroClick;
  Button6.OnClick := BotaoTabuleiroClick;
  Button7.OnClick := BotaoTabuleiroClick;
  Button8.OnClick := BotaoTabuleiroClick;
  Button9.OnClick := BotaoTabuleiroClick;

  ReiniciarJogo;
end;

procedure Tfrm.ReiniciarJogo;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TButton) and (TButton(Components[i]) <> btnReiniciar) then
    begin
      TButton(Components[i]).Caption := '';
      TButton(Components[i]).Enabled := True;
    end;
  end;

  FJogadorAtual := 'X';
  FContadorJogadas := 0;
  lblStatus.Caption := 'Vez do Jogador: X';
end;

procedure Tfrm.btnReiniciarClick(Sender: TObject);
begin
  ReiniciarJogo;
end;

procedure Tfrm.AlternarJogador;
begin
  FContadorJogadas := FContadorJogadas + 1;

  if FJogadorAtual = 'X' then
    FJogadorAtual := 'O'
  else
    FJogadorAtual := 'X';

  lblStatus.Caption := 'Vez do Jogador: ' + FJogadorAtual;
end;

procedure Tfrm.BotaoTabuleiroClick(Sender: TObject);
var
  BotaoClicado: TButton;
begin
  BotaoClicado := (Sender as TButton);

  if BotaoClicado.Caption = '' then
  begin
    BotaoClicado.Caption := FJogadorAtual;
    BotaoClicado.Enabled := False;

    if VerificarVencedor then
    begin
      lblStatus.Caption := 'O JOGADOR ' + FJogadorAtual + ' VENCEU!';
      ReiniciarJogo;
    end
    else if FContadorJogadas = 8 then
    begin
      lblStatus.Caption := 'DEU EMPATE!';
      ReiniciarJogo;
    end
    else
    begin
      AlternarJogador;
    end;
  end;
end;

function Tfrm.VerificarVencedor: Boolean;
begin
  Result := False;

  if (Button1.Caption = FJogadorAtual) and (Button2.Caption = FJogadorAtual) and (Button3.Caption = FJogadorAtual) then Result := True;
  if (Button4.Caption = FJogadorAtual) and (Button5.Caption = FJogadorAtual) and (Button6.Caption = FJogadorAtual) then Result := True;
  if (Button7.Caption = FJogadorAtual) and (Button8.Caption = FJogadorAtual) and (Button9.Caption = FJogadorAtual) then Result := True;

  if (Button1.Caption = FJogadorAtual) and (Button4.Caption = FJogadorAtual) and (Button7.Caption = FJogadorAtual) then Result := True;
  if (Button2.Caption = FJogadorAtual) and (Button5.Caption = FJogadorAtual) and (Button8.Caption = FJogadorAtual) then Result := True;
  if (Button3.Caption = FJogadorAtual) and (Button6.Caption = FJogadorAtual) and (Button9.Caption = FJogadorAtual) then Result := True;

  if (Button1.Caption = FJogadorAtual) and (Button5.Caption = FJogadorAtual) and (Button9.Caption = FJogadorAtual) then Result := True;
  if (Button3.Caption = FJogadorAtual) and (Button5.Caption = FJogadorAtual) and (Button7.Caption = FJogadorAtual) then Result := True;
end;

end.
