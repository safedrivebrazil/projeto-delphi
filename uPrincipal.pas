unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mniCadastro: TMenuItem;
    mniClientes: TMenuItem;
    mniVendas: TMenuItem;
    pnlTop: TPanel;
    pnlCenter: TPanel;
    imagem: TImage;
    mniAjuda: TMenuItem;
    mniTema: TMenuItem;
    procedure mniClientesClick(Sender: TObject);
    procedure mniTemaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmAjuda, ufrmListarClientes;

procedure TfrmPrincipal.mniClientesClick(Sender: TObject);
begin
  frmListarClientes := TfrmListarClientes.Create(application);
  frmListarClientes.ShowModal;
  frmListarClientes.Free;
end;

procedure TfrmPrincipal.mniTemaClick(Sender: TObject);
begin
  frmAjuda := TfrmAjuda.Create(application);
  frmAjuda.ShowModal;
  frmAjuda.Free;
end;

end.
