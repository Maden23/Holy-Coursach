unit graph;


{$mode objfpc}{$H+}

interface

uses
  Dialogs, Classes, SysUtils, DataModule;

type
  matrix = array of array of integer;

procedure FormAdjecencyMatrix (amount: integer;
          var a: matrix);



implementation

procedure FormAdjecencyMatrix (amount: integer;
          var a: matrix);
var i, j, id, n, m: integer;
begin
  {Иницицализация всех возможных ребер}
  for i:=1 to amount do
     for j:=1 to amount do
        a[i][j] := 0;
  {Заполнение матрицы существующими ребрами}
  DataModule1.EdgesQuery.Open;
  //for id:=1 to amount do
  while not (DataModule1.EdgesQuery.EOF) do
     begin
         //DataModule1.EdgesQuery.Close;
         //DataModule1.EdgesQuery.ParamByName('id_edge').AsInteger := id;
         //DataModule1.EdgesQuery.Open;
         n := DataModule1.EdgesQueryfirst_node.Asinteger;
         m := DataModule1.EdgesQuerysecond_node.Asinteger;
         a[n][m] := DataModule1.EdgesQuerydistance.AsInteger;
         a[m][n] := DataModule1.EdgesQuerydistance.AsInteger;
         DataModule1.EdgesQuery.Next;
         //DataModule1.DataSource1.ComponentIndex := DataModule1.DataSource1.ComponentIndex+1;
      end;
end;


end.

