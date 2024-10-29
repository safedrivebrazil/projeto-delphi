object frmAjuda: TfrmAjuda
  Left = 0
  Top = 0
  Caption = 'Ajuda'
  ClientHeight = 90
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object cmbTemas: TComboBox
    Left = 8
    Top = 24
    Width = 185
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = 'Windows'
    Items.Strings = (
      'Windows'
      'Auric'
      'Aqua Light Slate')
  end
  object btnTrocar: TButton
    Left = 199
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Trocar'
    TabOrder = 1
    OnClick = btnTrocarClick
  end
end
