program ConversaoTexto;

uses
  Vcl.Forms,
  uInterfaces in 'Classes\uInterfaces.pas',
  uConversoes in 'Classes\uConversoes.pas',
  uRealizarConversoes in 'Classes\uRealizarConversoes.pas' {$R *.res},
  TestFrameWork,
  GuiTestRunner,
  uConversoesTestes in 'Testes\uConversoesTestes.pas',
  uConversaoTexto in 'Formulario\uConversaoTexto.pas' {FrConversaoTexto};

{$R *.res}

begin
  Application.Initialize;
  //GUITestRunner.RunRegisteredTests;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrConversaoTexto, FrConversaoTexto);
  Application.Run;
end.
