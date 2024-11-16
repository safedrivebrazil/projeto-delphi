inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  ClientWidth = 628
  ExplicitTop = -22
  ExplicitHeight = 473
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 628
    ExplicitLeft = 24
    ExplicitTop = 24
    ExplicitWidth = 628
    object lblCodigo: TLabel
      Left = 48
      Top = 16
      Width = 6
      Height = 15
      Caption = '0'
    end
    object lblNome: TLabel
      Left = 32
      Top = 81
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object lblCPFCNPJ: TLabel
      Left = 32
      Top = 130
      Width = 24
      Height = 15
      Caption = 'CPF:'
    end
    object Label1: TLabel
      Left = 32
      Top = 179
      Width = 52
      Height = 15
      Caption = 'Endere'#231'o:'
    end
    object lblBairro: TLabel
      Left = 32
      Top = 228
      Width = 34
      Height = 15
      Caption = 'Bairro:'
    end
    object lblCidade: TLabel
      Left = 32
      Top = 277
      Width = 40
      Height = 15
      Caption = 'Cidade:'
    end
    object lblNumero: TLabel
      Left = 444
      Top = 179
      Width = 47
      Height = 15
      Caption = 'N'#250'mero:'
    end
    object lblUF: TLabel
      Left = 444
      Top = 277
      Width = 17
      Height = 15
      Caption = 'UF:'
    end
    object edtNomeRazaoSocial: TEdit
      Left = 32
      Top = 99
      Width = 513
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object rdgTipoPessoa: TRadioGroup
      Left = 32
      Top = 29
      Width = 185
      Height = 30
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      ShowFrame = False
      TabOrder = 0
    end
    object edtCpfCnpj: TEdit
      Left = 32
      Top = 148
      Width = 249
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object edtEndereco: TEdit
      Left = 32
      Top = 197
      Width = 393
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object edtBairro: TEdit
      Left = 32
      Top = 246
      Width = 513
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object edtCidade: TEdit
      Left = 32
      Top = 296
      Width = 393
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object edtNumero: TEdit
      Left = 444
      Top = 199
      Width = 101
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object edtUF: TEdit
      Left = 444
      Top = 298
      Width = 101
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 7
    end
  end
  inherited pnlBottom: TPanel
    Width = 628
    ExplicitTop = 393
    DesignSize = (
      628
      41)
    inherited btnCancelar: TButton
      Left = 460
    end
    inherited btnOk: TButton
      Left = 541
    end
  end
  inherited acGeral: TActionList
    inherited acOk: TAction
      OnExecute = acOkExecute
    end
  end
end
