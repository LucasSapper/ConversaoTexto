unit uRealizarConversoes;

interface

uses
  uInterfaces;

type
  TRealizarConversoes = class(TInterfacedObject, IFactoryMethod)
    function TipoConversao(const Tipo: string): IConversao;
  end;

implementation

uses
  UConversoes;

function TRealizarConversoes.TipoConversao(const Tipo: string) : IConversao;
begin
  if Tipo = 'ConverteInvertido' then
    result := TConverteInvertido.Create
  else if Tipo = 'ConvertePrimeiraMaiuscula' then
    result := TConvertePrimeiraMaiuscula.Create
  else if Tipo = 'ConverteOrdenado' then
    result := TConverteOrdenado.Create;
end;

end.
