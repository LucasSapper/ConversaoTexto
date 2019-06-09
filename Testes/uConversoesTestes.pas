unit uConversoesTestes;

interface

Uses
  TestFramework, uConversoes;

type
  TConversoesTestes = class(TTestCase)

  private
    FConverteTexto: TConverteTexto;
    FConverteInvertido : TConverteInvertido;
    FConvertePrimeiraMaiuscula : TConvertePrimeiraMaiuscula;
    FConverteOrdenado : TConverteOrdenado;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSetTextoError;
    procedure TestSetTextoSuccess;

    procedure TestConverterInvertidoError;
    procedure TestConverterInvertidoSuccess;

    procedure TestConvertePrimeiraMaiusculaError;
    procedure TestConvertePrimeiraMaiusculaSuccess;

    procedure TestConverteOrdenadoError;
    procedure TestConverteOrdenadoSuccess;
  end;

implementation

procedure TConversoesTestes.SetUp;
begin

end;

procedure TConversoesTestes.TearDown;
begin

end;

procedure TConversoesTestes.TestSetTextoError;
var
  obj : TConverteTexto;
begin
  obj := TConverteTexto.Create;

  CheckEqualsString('Teste',obj.Texto,'ERRO');
end;

procedure TConversoesTestes.TestSetTextoSuccess;
var
  obj : TConverteTexto;
begin
  obj := TConverteTexto.Create;

  obj.Texto := 'Teste';
end;

procedure TConversoesTestes.TestConverterInvertidoError;
var
  obj : TConverteTexto;
begin
  obj := TConverteInvertido.Create;

  CheckEqualsString('etset',obj.Converter(''),'ERRO');
end;

procedure TConversoesTestes.TestConverterInvertidoSuccess;
var
  obj : TConverteInvertido;
begin
  obj := TConverteInvertido.Create;

  CheckEqualsString('etset',obj.Converter('teste'),'ERRO');
end;

procedure TConversoesTestes.TestConvertePrimeiraMaiusculaError;
var
  obj : TConvertePrimeiraMaiuscula;
begin
  obj := TConvertePrimeiraMaiuscula.Create;

  CheckEqualsString('Teste',obj.Converter(''),'ERRO');
end;

procedure TConversoesTestes.TestConvertePrimeiraMaiusculaSuccess;
var
  obj : TConvertePrimeiraMaiuscula;
begin
  obj := TConvertePrimeiraMaiuscula.Create;

  CheckEqualsString('Teste',obj.Converter('teste'),'ERRO');
end;

procedure TConversoesTestes.TestConverteOrdenadoError;
var
  obj : TConverteOrdenado;
begin
  obj := TConverteOrdenado.Create;

  CheckEqualsString('abc',obj.Converter(''),'ERRO');
end;

procedure TConversoesTestes.TestConverteOrdenadoSuccess;
var
  obj : TConverteOrdenado;
begin
  obj := TConverteOrdenado.Create;

  CheckEqualsString('abc',obj.Converter('bca'),'ERRO');
end;

initialization
  RegisterTest(TConversoesTestes.Suite);

end.
