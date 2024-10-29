unit ufrmBaseCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmBaseCad = class(TForm)
    pnlCentral: TPanel;
    pnlBottom: TPanel;
    btnCancelar: TButton;
    btnOk: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseCad: TfrmBaseCad;

implementation

{$R *.dfm}

end.
