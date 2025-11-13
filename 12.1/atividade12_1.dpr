program atividade12_1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  frase, palavra1, palavra2, palavra3: string;

function getFirstWord(var phrase: string): string ;
begin
  Result:= copy(phrase,1, pos(' ', phrase) -1);
  delete(phrase,1, pos(' ', phrase));
end;

begin
  try
    frase:= 'Hello World Delphi';
    palavra1 := getFirstWord(frase);
    palavra2 := getFirstWord(frase);
    palavra3 := frase;
    writeln(palavra1 + ' ' + palavra3 + ' ' + palavra2);
    readln(frase);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
