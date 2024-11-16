unit ufrmListarClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseGrid, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, uDM, System.Actions, Vcl.ActnList;

type
  TfrmListarClientes = class(TfrmBaseGrid)
    procedure acIncluirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FTransacao: TTransacao;
    FQuery: TQuery;
    procedure Carregar;
  public
    { Public declarations }
  end;

var
  frmListarClientes: TfrmListarClientes;

implementation

{$R *.dfm}

uses uClientes, ufrmCadCliente;

procedure TfrmListarClientes.acIncluirExecute(Sender: TObject);
begin
  inherited;
  frmCadCliente := TfrmCadCliente.Create(application);
  if frmCadCliente.ShowModal = mrOk then
  begin
    Carregar;
  end;
  frmCadCliente.Free;
end;

procedure TfrmListarClientes.Carregar;
var
  vClientes: TClientes;
begin
  vClientes := TClientes.Create;
  if assigned(FTransacao) then
    DM.FreeTransaction(FTransacao);
  if assigned(FQuery) then
    DM.FreeQuery(FQuery);

  FTransacao := DM.GetTransaction;
  FTransacao.StartTransaction;
  FQuery := vClientes.pesquisar(FTransacao);
  dsdados.DataSet := FQuery;
  vClientes.Free;
end;

procedure TfrmListarClientes.FormCreate(Sender: TObject);
begin
  inherited;
  Carregar;
end;

procedure TfrmListarClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  if assigned(FTransacao) then
    DM.FreeTransaction(FTransacao);
  if assigned(FQuery) then
    DM.FreeQuery(FQuery);
end;

end.
