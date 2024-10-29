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
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 192
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 401
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 407
    DesignSize = (
      628
      41)
    object btnCancelar: TButton
      Left = 472
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 0
    end
    object btnOk: TButton
      Left = 553
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Ok'
      TabOrder = 1
    end
  end
end
