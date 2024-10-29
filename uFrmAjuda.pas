unit uFrmAjuda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, vcl.Themes;

type
  TfrmAjuda = class(TForm)
    cmbTemas: TComboBox;
    btnTrocar: TButton;
    procedure btnTrocarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAjuda: TfrmAjuda;

implementation

{$R *.dfm}

procedure TfrmAjuda.btnTrocarClick(Sender: TObject);
begin
  TStyleManager.TrySetStyle(cmbTemas.Text);
end;

end.
