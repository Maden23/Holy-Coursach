unit driver;

{$mode objfpc}{$H+}

interface

uses
  DataModule, graph, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  matrix = array of array of integer;
  { TfrmDriver }
  TfrmDriver = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDriver: TfrmDriver;

implementation

{$R *.lfm}
 uses start;

{ TfrmDriver }
procedure ShowMatrix(var a: matrix; Memo1: TMemo);
var i, j: integer;
  begin
     for i:=1 to length(a)-1 do
         begin
         for j:=1 to length(a)-1 do
             Memo1.Text := Memo1.Text + inttostr(a[i][j]) + ' ';
         Memo1.Text := Memo1.Text + #13;
         Memo1.Lines.Add('');
         end;
  end;

{procedure TfrmDriver.Close(Sender: TObject);
begin
   frmStart.Show;
end; }

procedure TfrmDriver.Button1Click(Sender: TObject);
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

procedure TfrmDriver.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
     frmStart.Show;
end;





end.

