program progCadastro;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadClientes in 'uCadClientes.pas' {frmCadClientes},
  uFrmBaseGrid in 'uFrmBaseGrid.pas' {frmBaseGrid},
  ufrmBaseCad in 'ufrmBaseCad.pas' {frmBaseCad},
  Vcl.Themes,
  Vcl.Styles,
  uFrmAjuda in 'uFrmAjuda.pas' {frmAjuda},
  funcoes in 'comum\funcoes.pas',
  uClientes in 'uClientes.pas',
  uDM in 'dados\uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
