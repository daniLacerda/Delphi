unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    edtWhile: TEdit;
    btnWhile: TButton;
    Timer1: TTimer;
    memWhile: TMemo;
    edtFor: TEdit;
    btnFor: TButton;
    pnlRepeticao: TPanel;
    pgbFor: TProgressBar;
    pgbWhile: TProgressBar;
    memFor: TMemo;
    btnLimpar: TButton;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnForClick(Sender: TObject);
    procedure btnWhileClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//-------------------- ESTRUTURA PARA FOR ---------------------------------
procedure TForm1.btnForClick(Sender: TObject);
var
_I : Integer; // Vari�vel I para incremento;
_N : Integer; // Vari�vel N para convers�o do edtFor para Inteiro;
_S : String; //vari�vel S para convers�o para String;
begin

      _N := StrToInt(edtFor.Text);
//---- In�cio do la�o;
  for _I := 0 to _N do
  begin
      _S := IntToStr(_I); //Convers�o de _I inteiro para _S String;

     memFor.Lines.Add(_S); //---- Visualiza��o dos n�meros um por um;
     pgbFor.Position := StrToInt(edtFor.Text) //---- Progresso da barra;

  end;
end;


//-------------------- ESTRUTURA PARA FOR ---------------------------------
procedure TForm1.btnLimparClick(Sender: TObject);
begin
  memFor.Lines.Clear;
  memWhile.Lines.Clear;
end;

procedure TForm1.btnWhileClick(Sender: TObject);
var
_I : Integer; // Vari�vel I para incremento;
_N : Integer; // Vari�vel N para convers�o do edtFor para Inteiro;
_S : String; //vari�vel S para convers�o para String;_I : Integer;
begin
  _I := StrToInt(edtWhile.Text); //Atribui��o de valor para _I;
  _N := StrToInt(edtWhile.Text);  //Convers�o de etd String para _N Inteiro;

//---- In�cio do la�o;
  while _I <= _N do
  begin

    INC(_I); //Incremento de _I;
    _S := IntToStr(_I); //Convers�o de _I inteiro para _S String;

    memWhile.Lines.Add(_S); // Visualiza��o dos n�meros um por um;
    pgbWhile.Position := StrToInt(edtWhile.Text) // Progresso da barra;
  end;

end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateTimeToStr(Now);
end;

end.
