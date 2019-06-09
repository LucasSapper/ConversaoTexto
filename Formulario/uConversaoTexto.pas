unit uConversaoTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrConversaoTexto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ME_Original: TMemo;
    RG_Opcoes: TRadioGroup;
    Label2: TLabel;
    ME_Convertido: TMemo;
    BB_Converter: TButton;
    procedure BB_ConverterClick(Sender: TObject);

  private
    { Private declarations }
  public

    procedure Conversao;

  end;

var
  FrConversaoTexto: TFrConversaoTexto;

implementation

uses
  uInterfaces, uRealizarConversoes, uConversoes;

{$R *.dfm}

procedure TFrConversaoTexto.BB_ConverterClick(Sender: TObject);
begin
  Conversao;
end;

procedure TFrConversaoTexto.Conversao;
var
  RealizarConversoes : IFactoryMethod;
  TipoConversao : IConversao;
  obj : TConverteTexto;
begin

  if RG_Opcoes.ItemIndex <> -1 then
  begin
    RealizarConversoes := TRealizarConversoes.Create;

    if RG_Opcoes.ItemIndex = 0 then
      TipoConversao := RealizarConversoes.TipoConversao('ConverteInvertido')
    else if RG_Opcoes.ItemIndex = 1 then
      TipoConversao := RealizarConversoes.TipoConversao('ConvertePrimeiraMaiuscula')
    else if RG_Opcoes.ItemIndex = 2 then
      TipoConversao := RealizarConversoes.TipoConversao('ConverteOrdenado');

    obj := TConverteTexto.Create;
    obj.Texto := ME_Original.Text;

    ME_Convertido.Clear;
    ME_Convertido.Lines.Add(TipoConversao.Converter(obj.Texto));
  end
  else
    MessageDlg('Necessário selecionar o tipo de conversão.', mtInformation, [mbOK], 0);
end;

end.
