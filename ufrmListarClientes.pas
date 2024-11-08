unit ufrmListarClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseGrid, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, uDM;

type
  TfrmListarClientes = class(TfrmBaseGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTransacao: TTransacao;
    FQuery: TQuery;
  public
    { Public declarations }
  end;

var
  frmListarClientes: TfrmListarClientes;

implementation

{$R *.dfm}

uses uClientes;

procedure TfrmListarClientes.FormCreate(Sender: TObject);
var
  vClientes: TClientes;
begin
  inherited;
  vClientes:=TClientes.Create;
  FTransacao:=DM.GetTransaction;
  FTransacao.StartTransaction;
  FQuery:=vClientes.pesquisar(FTransacao);
  dsdados.DataSet:=FQuery;
  vClientes.Free;
end;

end.
