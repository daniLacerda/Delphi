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
I : Integer; // Variável I para incremento;
N : Integer; // Variável N para conversão do edtFor para Inteiro;
S : String; //variável S para conversão para String;
begin

      N := StrToInt(edtFor.Text);
//---- Início do laço;
  for I := 0 to N do
    begin
      sleep(25);
      S := IntToStr(I); //Conversão de _I inteiro para _S String;
      Application.ProcessMessages;
      memFor.Lines.Add(S); //---- Visualização dos números um por um;
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
I : Integer; // Variável I para incremento;
N : Integer; // Variável N para conversão do edtFor para Inteiro;
S : String; //variável S para conversão para String;_I : Integer;
_tamanhoLaco : Integer;
_count : Integer;

begin
  //I := StrToInt(edtWhile.Text); //Atribuição de valor para _I;
  N := StrToInt(edtWhile.Text);  //Conversão de etd String para _N Inteiro;
  I := 0;

//---- Início do laço;


 while I <=  N  do
    begin
      sleep(25);
      S := IntToStr(I); //Conversão de _I inteiro para _S String;
      memWhile.Lines.Add(S); // Visualização dos números um por um;
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
