unit uClientes;

interface

uses System.SysUtils,uDM;

type
  TPessoa = class
  private
    FTipoPessoa: String;
    FFantasia: String;
    FBairro: String;
    FCodCli: Integer;
    FUF: String;
    FNomeRazaoSocial: String;
    FCEP: String;
    FCPFCNPJ: String;
    FNumero: String;
    FCidade: String;
    FEndereco: String;
    procedure SetBairro(const Value: String);
    procedure SetCEP(const Value: String);
    procedure SetCidade(const Value: String);
    procedure SetCodCli(const Value: Integer);
    procedure SetCPFCNPJ(const Value: String);
    procedure SetEndereco(const Value: String);
    procedure SetFantasia(const Value: String);
    procedure SetNomeRazaoSocial(const Value: String);
    procedure SetNumero(const Value: String);
    procedure SetTipoPessoa(const Value: String);
    procedure SetUF(const Value: String);
  public
    property CodCli: Integer read FCodCli write SetCodCli;
    property TipoPessoa: String read FTipoPessoa write SetTipoPessoa;
    property CPFCNPJ: String read FCPFCNPJ write SetCPFCNPJ;
    property NomeRazaoSocial: String read FNomeRazaoSocial write SetNomeRazaoSocial;
    property Fantasia: String read FFantasia write SetFantasia;
    property Endereco: String read FEndereco write SetEndereco;
    property Bairro: String read FBairro write SetBairro;
    property Cidade: String read FCidade write SetCidade;
    property UF: String read FUF write SetUF;
    property CEP: String read FCEP write SetCEP;
    property Numero: String read FNumero write SetNumero;
  end;

  TClientes = class
  private
  public
    Pessoa: TPessoa;
    function pesquisar(pTransacao: TTransacao): TQuery;
    function Salvar: boolean;
    Constructor Create;
    Destructor Destroy; override;
  end;

implementation

{ TClientes }

constructor TClientes.Create;
begin
  Pessoa := TPessoa.Create;
end;

destructor TClientes.Destroy;
begin
  Pessoa.Free;
  inherited;
end;

function TClientes.pesquisar(pTransacao: TTransacao): TQuery;
begin
  Result := DM.GetQuery(pTransacao);
  Result.SQL.Add('select * from clientes');
  Result.Open;
end;

function TClientes.Salvar: boolean;
var
  vTransacao: TTransacao;
  vQuery: TQuery;
begin
  vTransacao := DM.GetTransaction;
  vQuery := DM.GetQuery(vTransacao);
  vQuery.SQL.Add('INSERT INTO clientes');
  vQuery.SQL.Add('  (');
  vQuery.SQL.Add('    cod_cliente');
  vQuery.SQL.Add('   ,pessoa');
  vQuery.SQL.Add('   ,cpf_cnpj');
  vQuery.SQL.Add('   ,nome_razao_social');
  vQuery.SQL.Add('   ,fantasia');
  vQuery.SQL.Add('   ,endereco');
  vQuery.SQL.Add('  )');
  vQuery.SQL.Add('VALUES');
  vQuery.SQL.Add('  (');
  vQuery.SQL.Add('    GEN_ID (GEN_CODIGO_CLIENTE, 1)');
  vQuery.SQL.Add('  , ' + QuotedStr(Pessoa.TipoPessoa));
  vQuery.SQL.Add('  , ' + QuotedStr(Pessoa.CPFCNPJ));
  vQuery.SQL.Add('  , ' + QuotedStr(Pessoa.NomeRazaoSocial));
  vQuery.SQL.Add('  , ' + QuotedStr(Pessoa.Fantasia));
  vQuery.SQL.Add('  , ' + QuotedStr(Pessoa.Endereco));
  vQuery.SQL.Add('  )');

  vTransacao.StartTransaction;
  vQuery.ExecSQL;
  vTransacao.Commit;

  vQuery.Free;
  vTransacao.Free;

  Result := true;
end;

{ TPessoa }

procedure TPessoa.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TPessoa.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TPessoa.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TPessoa.SetCodCli(const Value: Integer);
begin
  FCodCli := Value;
end;

procedure TPessoa.SetCPFCNPJ(const Value: String);
begin
  FCPFCNPJ := Value;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetFantasia(const Value: String);
begin
  FFantasia := Value;
end;

procedure TPessoa.SetNomeRazaoSocial(const Value: String);
begin
  FNomeRazaoSocial := Value;
end;

procedure TPessoa.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TPessoa.SetTipoPessoa(const Value: String);
begin
  FTipoPessoa := Value;
end;

procedure TPessoa.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
