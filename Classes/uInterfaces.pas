unit uInterfaces;

interface

type
  IConversao = Interface
    function Converter(Texto : String) : String;
  end;


  IFactoryMethod = interface
    function TipoConversao(const Tipo: string): IConversao;
  end;

implementation

end.
