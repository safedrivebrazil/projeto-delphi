program progCadastro;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadClientes in 'uCadClientes.pas' {frmCadClientes},
  uFrmBaseGrid in 'uFrmBaseGrid.pas' {frmBaseGrid},
  ufrmBaseCad in 'ufrmBaseCad.pas' {frmBaseCad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
