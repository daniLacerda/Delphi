unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    val1: TEdit;
    val2: TEdit;
    result: TEdit;
    soma: TButton;
    Label1: TLabel;
    sub: TButton;
    divisao: TButton;
    multiplica: TButton;
    rest: TButton;
    Label2: TLabel;
    procedure somaClick(Sender: TObject);
    procedure subClick(Sender: TObject);
    procedure divisaoClick(Sender: TObject);
    procedure multiplicaClick(Sender: TObject);
    procedure restClick(Sender: TObject);
  private
    { Private declarations }

// ------- declaração das funções
    function somar(Value1, Value2 : Double) : Double;
    function subtrair(Value1, Value2 : Double) : Double;
    function dividir(Value1, Value2 : Double) : Double;
    function multiplicar(Value1, Value2 : Double) : Double;
    function resto(Value1, Value2 : Integer) : Integer;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

 // ------- implementação procedimento e função de RESTO de uma divisão
procedure TForm1.restClick(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := resto(StrToInt(val1.Text), StrToInt(val2.Text));
  result.Text := IntToStr(Resultado);
end;

function TForm1.resto(Value1, Value2: Integer): Integer;
begin
  Result := Value1 mod Value2;
end;

// ------- implementação procedimento e função de DIVIDIR com verificação
procedure TForm1.divisaoClick(Sender: TObject);
var
  Resultado : Currency;
begin
  Resultado := dividir(StrToCurr(val1.Text), StrToCurr(val2.Text));
  result.Text := CurrToStr(Resultado);
end;

function TForm1.dividir(Value1, Value2: Double): Double;
var
 Resultado : Currency;
begin
  if Value2 = 0.0 then
    ShowMessage('Um número não pode ser divisível por 0!')
  else
    Result := Value1 / Value2;
  end;

// ------- implementação procedimento e função de MULTIPLICAÇÃO
procedure TForm1.multiplicaClick(Sender: TObject);
var
  Resultado : Double;
begin
  Resultado := multiplicar(StrToFloat(val1.Text), StrToFloat(val2.Text));
  result.Text := FloatToStr(Resultado);
end;

function TForm1.multiplicar(Value1, Value2: Double): Double;
begin
  Result := Value1 * Value2;
end;

// ------- implementação procedimento e função de SUBTRAIR
procedure TForm1.subClick(Sender: TObject);
var
  Resultado : Double;

begin
  Resultado := subtrair(StrToFloat(val1.Text), StrToFloat(val2.Text));
  result.Text := FloatToStr(Resultado);
end;

function TForm1.subtrair(Value1: Double; Value2: Double) : Double;
  begin
    Result := Value1 - Value2;
  end;

// ------- implementação procedimento e função de SOMAR
procedure TForm1.somaClick(Sender: TObject);
var
  Resultado : Double;
begin
  Resultado := somar(StrToFloat(val1.Text), StrToFloat(val2.Text));
  result.Text := FloatToStr(Resultado);
end;

  function TForm1.somar(Value1: Double; Value2: Double) : Double;
begin
    Result := Value1 + Value2;
end;

end.
