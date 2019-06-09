unit uConversoes;

interface

uses
  uInterfaces, Classes, SysUtils, StrUtils, Dialogs, Rtti;

type
  EValorObrigatorio = class(Exception);

  TConverteTexto = class(TInterfacedObject, IConversao)
  private
    FTexto : String;
    procedure SetTexto(const Value : string);
  public
    property Texto : String read FTexto write SetTexto;
    function Converter(Texto : String) : String; virtual; abstract;
  end;


  TConverteInvertido = class(TConverteTexto)
  public
    function Converter(Texto : String) : String; override;
  end;


  TConvertePrimeiraMaiuscula = class(TConverteTexto)
  public
    function Converter(Texto : String) : String; override;
  end;


  TConverteOrdenado = class(TConverteTexto)
  public
    function Converter(Texto : String) : String; override;
  end;


implementation

procedure TConverteTexto.SetTexto(const Value: string);
begin
  try
    if Value = EmptyStr then
      raise EValorObrigatorio.Create('Necessário preencher o campo texto!')
    else
      FTexto := Value;

  except
    On E:EValorObrigatorio do
      ShowMessage(E.Message);
  end;
end;

function TConverteInvertido.Converter(Texto : String) : String;
begin
 Result := ReverseString(Texto);
end;

function TConvertePrimeiraMaiuscula.Converter(Texto : String) : String;
var
  i: integer;
  espaco: boolean;
begin
  Texto := LowerCase(Trim(Texto));

  for i := 1 to Length(Texto) do
  begin
    if i = 1 then
      Texto[i] := UpCase(Texto[i])
    else
    begin
      if i <> Length(Texto) then
      begin
        espaco := (Texto[i] = ' ');

        if espaco then
          Texto[i+1] := UpCase(Texto[i+1]);
      end;
    end;
  end;

  Result := Texto;
end;

function TConverteOrdenado.Converter(Texto : String) : String;
var
  i : integer;

  ListaTexto : TStringList;
begin
  ListaTexto := TStringList.Create;

  try
    Texto := StringReplace(Trim(Texto), ' ', EmptyStr, [rfReplaceAll]);

    for i:=1 to length(Texto) do
    begin
      ListaTexto.Add(Texto[i]);
    end;

    ListaTexto.Sort;

    Texto := '';

    for i:=0 to ListaTexto.Count - 1 do
    begin
      Texto := Texto + ListaTexto[i];
    end;

    Result := Texto;

  finally
   FreeAndNil(ListaTexto);
  end;
end;

end.
