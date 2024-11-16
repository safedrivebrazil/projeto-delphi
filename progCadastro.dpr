program progCadastro;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uFrmBaseGrid in 'uFrmBaseGrid.pas' {frmBaseGrid},
  ufrmBaseCad in 'ufrmBaseCad.pas' {frmBaseCad},
  Vcl.Themes,
  Vcl.Styles,
  uFrmAjuda in 'uFrmAjuda.pas' {frmAjuda},
  funcoes in 'comum\funcoes.pas',
  uDM in 'dados\uDM.pas' {DM: TDataModule},
  ufrmListarClientes in 'ufrmListarClientes.pas' {frmListarClientes},
  uClientes in 'uClientes.pas',
  ufrmCadCliente in 'ufrmCadCliente.pas' {frmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
