unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Nome: TMemo;
    txtNome: TEdit;
    maskData: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Nascimento: TMemo;
    btLimpar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btLimparClick(Sender: TObject);
begin
  txtNome.Clear;
  maskData.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Nome.Lines.Add(txtNome.Text);
  Nascimento.Lines.Add(maskData.Text);

end;


end.
