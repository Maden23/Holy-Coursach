unit driver;

{$mode objfpc}{$H+}

interface

uses
  DataModule, graph, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  matrix = array of array of integer;
  { Tfrm }
  Tfrm = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.lfm}


{ Tfrm }
procedure ShowMatrix(var a: matrix; Memo1: TMemo);
var i, j: integer;
  begin
     for i:=1 to length(a)-1 do
         begin
         for j:=1 to length(a)-1 do
             Memo1.Lines[i] := Memo1.Lines[i] + ' ' + inttostr(a[i][j]);
         Memo1.Lines.Add('');
         end;
  end;

procedure Tfrm.Button1Click(Sender: TObject);
var a: matrix;
    i, amount: integer;
begin
     {Получение из базы количества вершин (amount)
                и создание матрицы amount x amount}
     DataModule1.SQLQuery1.Open;
     amount := DataModule1.SQLQuery1.FieldByName('amount').AsInteger;
     setlength(a, amount+1); // 0-я строка и столбец не будут учитываться
     for i:=1 to amount do
         setlength(a[i], amount+1);
     FormAdjecencyMatrix(amount, a);
     ShowMatrix(a, Memo1);
end;



end.

