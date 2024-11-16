object frmBaseGrid: TfrmBaseGrid
  Left = 0
  Top = 0
  Caption = 'frmBaseGrid'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object pnlBottom: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 397
    ExplicitWidth = 624
    DesignSize = (
      628
      41)
    object btnFechar: TButton
      Left = 541
      Top = 6
      Width = 75
      Height = 25
      Action = acFechar
      Anchors = [akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 537
    end
    object btnEditar: TButton
      Left = 460
      Top = 6
      Width = 75
      Height = 25
      Action = acEditar
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 456
    end
    object btnExcluir: TButton
      Left = 379
      Top = 6
      Width = 75
      Height = 25
      Action = acExcluir
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 375
    end
    object btnQuatro: TButton
      Left = 298
      Top = 6
      Width = 75
      Height = 25
      Action = acIncluir
      Anchors = [akTop, akRight]
      TabOrder = 3
      ExplicitLeft = 294
    end
  end
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 397
    object Grid: TDBGrid
      Left = 0
      Top = 0
      Width = 628
      Height = 401
      Align = alClient
      DataSource = dsDados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object dsDados: TDataSource
    Left = 472
    Top = 16
  end
  object acGeral: TActionList
    Left = 552
    Top = 16
    object acIncluir: TAction
      Caption = '&Incluir'
    end
    object acExcluir: TAction
      Caption = '&Excluir'
    end
    object acEditar: TAction
      Caption = 'E&ditar'
    end
    object acFechar: TAction
      Caption = '&Fechar'
    end
  end
end
