object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Repeti'#231#245'es'
  ClientHeight = 489
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 468
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object pnlRepeticao: TPanel
    Left = 32
    Top = 43
    Width = 241
    Height = 390
    TabOrder = 0
    object btnWhile: TButton
      Left = 16
      Top = 17
      Width = 97
      Height = 25
      Caption = 'While'
      TabOrder = 0
      OnClick = btnWhileClick
    end
    object btnFor: TButton
      Left = 129
      Top = 17
      Width = 91
      Height = 25
      Caption = 'For'
      TabOrder = 1
      OnClick = btnForClick
    end
    object edtWhile: TEdit
      Left = 16
      Top = 48
      Width = 97
      Height = 21
      TabOrder = 2
    end
    object edtFor: TEdit
      Left = 129
      Top = 48
      Width = 91
      Height = 21
      TabOrder = 3
    end
    object memWhile: TMemo
      Left = 16
      Top = 75
      Width = 97
      Height = 272
      Lines.Strings = (
        'memWhile')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
      OnClick = btnWhileClick
    end
    object memFor: TMemo
      Left = 129
      Top = 75
      Width = 93
      Height = 272
      Lines.Strings = (
        'memFor')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object btnLimpar: TButton
      Left = 16
      Top = 353
      Width = 209
      Height = 25
      Caption = 'Limpar'
      TabOrder = 6
      OnClick = btnLimparClick
    end
  end
  object pgbFor: TProgressBar
    Left = 32
    Top = 439
    Width = 241
    Height = 17
    TabOrder = 1
  end
  object pgbWhile: TProgressBar
    Tag = 2
    Left = 32
    Top = 20
    Width = 241
    Height = 17
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Top = 392
  end
end
