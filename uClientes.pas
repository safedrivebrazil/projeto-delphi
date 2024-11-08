unit uClientes;

interface

uses uDM;

type
  TClientes = class
  private
  public
    function pesquisar(pTransacao: TTransacao): TQuery;
  end;

implementation

{ TClientes }

function TClientes.pesquisar(pTransacao: TTransacao): TQuery;
begin
  Result:=DM.GetQuery(pTransacao);
  Result.SQL.Add('select * from clientes');
  Result.Open;
end;

end.
