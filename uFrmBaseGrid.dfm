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
  TextHeight = 15
  object pnlBottom: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 185
    DesignSize = (
      628
      41)
    object btnFechar: TButton
      Left = 553
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      TabOrder = 0
    end
    object btnEditar: TButton
      Left = 472
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Editar'
      TabOrder = 1
    end
    object btnExcluir: TButton
      Left = 391
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'E&xcluir'
      TabOrder = 2
    end
    object btnQuatro: TButton
      Left = 310
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Button1'
      TabOrder = 3
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
    ExplicitLeft = 192
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Grid: TDBGrid
      Left = 0
      Top = 0
      Width = 628
      Height = 401
      Align = alClient
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
end
