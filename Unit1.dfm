object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = txtNome
  Caption = 'Form1'
  ClientHeight = 312
  ClientWidth = 443
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
    Left = 24
    Top = 16
    Width = 393
    Height = 89
    TabOrder = 0
    object Label1: TLabel
      Left = 63
      Top = 19
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 32
      Top = 59
      Width = 59
      Height = 13
      Caption = 'Nascimento:'
    end
    object txtNome: TEdit
      Left = 100
      Top = 16
      Width = 261
      Height = 21
      TabOrder = 0
    end
    object maskData: TMaskEdit
      Left = 100
      Top = 56
      Width = 61
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object Button1: TButton
      Left = 186
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object btLimpar: TButton
      Left = 283
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 3
      OnClick = btLimparClick
    end
  end
  object Panel2: TPanel
    Left = 24
    Top = 120
    Width = 393
    Height = 177
    Caption = 'Panel2'
    TabOrder = 1
    object Nome: TMemo
      Left = 16
      Top = 16
      Width = 209
      Height = 145
      Lines.Strings = (
        'Nome')
      TabOrder = 0
    end
    object Nascimento: TMemo
      Left = 231
      Top = 16
      Width = 146
      Height = 145
      Lines.Strings = (
        'Nascimento')
      TabOrder = 1
    end
  end
end
