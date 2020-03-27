object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 161
  ClientWidth = 302
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
    Width = 305
    Height = 161
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 174
      Top = 35
      Width = 8
      Height = 13
      Caption = '='
    end
    object Label2: TLabel
      Left = 14
      Top = 140
      Width = 218
      Height = 13
      Caption = 'Obs: Um n'#250'mero n'#227'o pode ser divis'#237'vel por 0.'
      Color = clSilver
      ParentColor = False
    end
    object val1: TEdit
      Left = 16
      Top = 32
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object val2: TEdit
      Left = 95
      Top = 32
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object result: TEdit
      Left = 192
      Top = 32
      Width = 93
      Height = 21
      TabOrder = 2
    end
    object soma: TButton
      Left = 14
      Top = 69
      Width = 51
      Height = 25
      Caption = '+'
      TabOrder = 3
      OnClick = somaClick
    end
    object sub: TButton
      Left = 71
      Top = 69
      Width = 49
      Height = 25
      Caption = '-'
      TabOrder = 4
      OnClick = subClick
    end
    object divisao: TButton
      Left = 126
      Top = 69
      Width = 49
      Height = 25
      Caption = '/'
      TabOrder = 5
      OnClick = divisaoClick
    end
    object multiplica: TButton
      Left = 181
      Top = 69
      Width = 49
      Height = 25
      Caption = '*'
      TabOrder = 6
      OnClick = multiplicaClick
    end
    object rest: TButton
      Left = 236
      Top = 69
      Width = 49
      Height = 25
      Caption = 'Resto'
      TabOrder = 7
      OnClick = restClick
    end
  end
end
