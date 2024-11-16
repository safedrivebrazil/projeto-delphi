object frmBaseCad: TfrmBaseCad
  Left = 0
  Top = 0
  Caption = 'frmBaseCad'
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
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 397
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 397
    ExplicitWidth = 624
    DesignSize = (
      628
      41)
    object btnCancelar: TButton
      Left = 464
      Top = 6
      Width = 75
      Height = 25
      Action = acCancelar
      Anchors = [akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 460
    end
    object btnOk: TButton
      Left = 545
      Top = 6
      Width = 75
      Height = 25
      Action = acOk
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 541
    end
  end
  object acGeral: TActionList
    Left = 512
    Top = 16
    object acCancelar: TAction
      Caption = '&Cancelar'
    end
    object acOk: TAction
      Caption = '&Ok'
    end
  end
end
