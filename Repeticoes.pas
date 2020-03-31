unit Repeticoes;

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
I : Integer; // Vari�vel I para incremento;
N : Integer; // Vari�vel N para convers�o do edtFor para Inteiro;
S : String; //vari�vel S para convers�o para String;
begin

      N := StrToInt(edtFor.Text);
//---- In�cio do la�o;
  for I := 0 to N do
    begin
      sleep(25);
      S := IntToStr(I); //Convers�o de _I inteiro para _S String;
      Application.ProcessMessages;
      memFor.Lines.Add(S); //---- Visualiza��o dos n�meros um por um;
      pgbFor.StepBy(1);
        if pgbFor.Position = 100 then
          begin
            pgbFor.Position :=0
          end;
    end;



end;


//-------------------- ESTRUTURA PARA WHILE ---------------------------------
procedure TForm1.btnLimparClick(Sender: TObject);
begin
  memFor.Lines.Clear;
  memWhile.Lines.Clear;
end;

procedure TForm1.btnWhileClick(Sender: TObject);
var
I : Integer; // Vari�vel I para incremento;
N : Integer; // Vari�vel N para convers�o do edtFor para Inteiro;
S : String; //vari�vel S para convers�o para String;_I : Integer;
_tamanhoLaco : Integer;
_count : Integer;

begin
  //I := StrToInt(edtWhile.Text); //Atribui��o de valor para _I;
  N := StrToInt(edtWhile.Text);  //Convers�o de etd String para _N Inteiro;
  I := 0;

//---- In�cio do la�o;


 while I <=  N  do
    begin
      sleep(25);
      S := IntToStr(I); //Convers�o de _I inteiro para _S String;
      memWhile.Lines.Add(S); // Visualiza��o dos n�meros um por um;
      INC(I); //Incremento de _I;
      Application.ProcessMessages;
      pgbWhile.StepBy (1);
        if pgbWhile.Position = 100 then
          begin
            pgbWhile.Position :=0
          end;
    end;
    end;

 {while not I > N do
  begin
  pgbWhile.StepBy (1);
  sleep(100);
  Application.ProcessMessages;
  INC(_count);
  Break; }



procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateTimeToStr(Now);
end;

end.
