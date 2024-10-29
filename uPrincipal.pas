unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    procedure mniClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadClientes;

procedure TfrmPrincipal.mniClientesClick(Sender: TObject);
begin
  frmCadClientes:=TfrmCadClientes.Create(application);
  frmCadClientes.ShowModal;
  frmCadClientes.Free;
end;

end.
