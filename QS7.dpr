program QS7;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Classes,
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas';

{$R *.RES}

const
  cSaida = '%d %s de %s';

var
        s: string;
        maquina: TMaquina;
        list: TList;
        i: Integer;
        troco: TTroco;
begin
        maquina := TMaquina.Create;
        list := maquina.MontarTroco(125.15);
        for i := 0 to list.Count - 1 do
        begin
                troco := TTroco(list[i]);
                Writeln(Format(cSaida, [troco.Quantidade, RetornaTipo(troco.Tipo), FormatFloat('0.##', CValorCedula[troco.Tipo])]));
        end;
        ReadLn(s);
end.

