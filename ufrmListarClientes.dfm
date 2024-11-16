inherited frmListarClientes: TfrmListarClientes
  Caption = 'frmListarClientes'
  ClientWidth = 628
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitHeight = 473
  TextHeight = 15
  inherited pnlBottom: TPanel
    Width = 628
    ExplicitTop = 393
    inherited btnFechar: TButton
      ExplicitLeft = 529
    end
    inherited btnEditar: TButton
      ExplicitLeft = 448
    end
    inherited btnExcluir: TButton
      ExplicitLeft = 367
    end
    inherited btnQuatro: TButton
      ExplicitLeft = 286
    end
  end
  inherited pnlCentral: TPanel
    Width = 628
    ExplicitHeight = 393
    inherited Grid: TDBGrid
      Height = 397
    end
  end
  inherited acGeral: TActionList
    inherited acIncluir: TAction
      OnExecute = acIncluirExecute
    end
  end
end
