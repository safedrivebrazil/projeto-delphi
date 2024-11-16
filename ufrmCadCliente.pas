unit ufrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCad, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadCliente = class(TfrmBaseCad)
    lblCodigo: TLabel;
    edtNomeRazaoSocial: TEdit;
    rdgTipoPessoa: TRadioGroup;
    lblNome: TLabel;
    lblCPFCNPJ: TLabel;
    edtCpfCnpj: TEdit;
    Label1: TLabel;
    edtEndereco: TEdit;
    lblBairro: TLabel;
    edtBairro: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    lblNumero: TLabel;
    edtNumero: TEdit;
    lblUF: TLabel;
    edtUF: TEdit;
    procedure acOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses uClientes;

procedure TfrmCadCliente.acOkExecute(Sender: TObject);
var
  vCliente:TClientes;
begin
  inherited;
  if trim(edtNomeRazaoSocial.Text) <> '' then
  begin
    vCliente:=TClientes.Create;
    vCliente.Pessoa.TipoPessoa:='F';

    if rdgTipoPessoa.ItemIndex>0 then
      vCliente.Pessoa.TipoPessoa:='J';
    vCliente.Pessoa.CPFCNPJ:=edtCpfCnpj.Text;
    vCliente.Pessoa.NomeRazaoSocial:=edtNomeRazaoSocial.Text;
    vCliente.Pessoa.Endereco:=edtEndereco.Text;
    vCliente.Pessoa.Bairro:=edtBairro.Text;
    vCliente.Pessoa.Cidade:=edtCidade.Text;
    vCliente.Pessoa.UF:=edtUF.Text;
    vCliente.Pessoa.Numero:=edtNumero.Text;
    vCliente.Salvar;
    vCliente.Free;
    ModalResult:=mrOk;
  end;
end;

end.
