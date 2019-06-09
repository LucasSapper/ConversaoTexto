object FrConversaoTexto: TFrConversaoTexto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Convers'#227'o de Texto'
  ClientHeight = 213
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 213
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 71
      Height = 13
      Caption = 'Texto Original:'
    end
    object Label2: TLabel
      Left = 422
      Top = 16
      Width = 88
      Height = 13
      Caption = 'Texto Convertido:'
    end
    object ME_Original: TMemo
      Left = 9
      Top = 30
      Width = 216
      Height = 171
      TabOrder = 0
    end
    object RG_Opcoes: TRadioGroup
      Left = 231
      Top = 26
      Width = 185
      Height = 144
      Caption = 'Op'#231#245'es de Convers'#227'o'
      Items.Strings = (
        'Invertido'
        'Primeira Mai'#250'scula'
        'Ordem Alfab'#225'tica')
      TabOrder = 1
    end
    object ME_Convertido: TMemo
      Left = 422
      Top = 30
      Width = 216
      Height = 171
      TabOrder = 2
    end
    object BB_Converter: TButton
      Left = 231
      Top = 176
      Width = 185
      Height = 25
      Caption = 'Converter'
      TabOrder = 3
      OnClick = BB_ConverterClick
    end
  end
end
