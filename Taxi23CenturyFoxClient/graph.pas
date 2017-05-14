unit graph;


{$mode objfpc}{$H+}

interface

uses
  Dialogs, Classes, SysUtils, DataModule;

type
  matrix = array of array of integer;
  mass = array [1..100] of integer;
  massDyn = array of integer;
  node = record
               id, x, y: integer;
               end;
  nodesMass = array of node;

procedure FormAdjecencyMatrix (nodesCount: integer; var a: matrix);

function Dijkstra(s: integer; param: string): mass;

function PathFromTo (start, finish: integer): nodesMass;


implementation

procedure FormAdjecencyMatrix (nodesCount: integer; var a: matrix);
var i, j, id, n, m: integer;
const inf = 9999;
begin
  {Иницицализация всех возможных ребер}
  for i:=1 to nodesCount do
     for j:=1 to nodesCount do
        a[i][j] := inf;
  {Заполнение матрицы существующими ребрами}
  DataModule1.EdgesQuery.Close;
  DataModule1.EdgesQuery.Open;
  while not (DataModule1.EdgesQuery.EOF) do
     begin
         n := DataModule1.EdgesQueryfirst_node.Asinteger;
         m := DataModule1.EdgesQuerysecond_node.Asinteger;
         a[n][m] := DataModule1.EdgesQuerydistance.AsInteger;
         a[m][n] := DataModule1.EdgesQuerydistance.AsInteger;
         DataModule1.EdgesQuery.Next;
      end;
end;

function ExtractMin (var d: mass; var Q: massDyn): integer;
const
  inf = 9999;
var i: integer;
    index, min: integer;
begin
   min := inf;
   for i:=0 to length(Q)-1 do
      if (d[Q[i]] < min) {and (d[Q[i]] <> 0)} then
         begin
            min := d[Q[i]];
            index := Q[i];
         end;
   i := 0;

   while (i < length(Q)) and (Q[i] <> index) do
      inc(i);
   if i < length(q) then
    begin
      Q[i] := Q[length(Q)-1];
      setlength(Q, length(Q)-1);
    end;

result := index;
end;

function Dijkstra(s: integer; param: string): mass;
const
  inf = 9999;
var
    d, p: mass; //distance, previous
    q: massDyn; //queue
    i, curr, nodesCount: integer;
    a: matrix;
begin
     //получение количества вершин графа
     with DataModule1.CountLocationsQuery do
          begin
             Close;
             Open;
             nodesCount := FieldByName('nodesCount').AsInteger;
          end;

     //создание и заполнение матрицы смежности a
     setlength(a, nodesCount+1); // 0-я строка и столбец не будут учитываться
     for i:=1 to nodesCount do
         setlength(a[i], nodesCount+1);

     {пересечения строка-столбец, где есть дорога, заполняются значением дистанции}
     FormAdjecencyMatrix(nodesCount, a);

     {изначально дистанция до всех точек принимается за бесконечность,
	а для исходной точки – ноль.}
     for i:=1 to nodesCount do
         d[i] := inf;
     d[s] := 0;

     //предыдущих точек маршрута изначально нет – заполняем массив нулями
     for i:=1 to nodesCount do
         p[i] := 0;

     {Заполнение динамического массива-очереди, где будут храниться все вершины,
     наименьшее расстояние до которых еще не известно}
     for i:=1 to nodesCount do
         begin
              setlength(q, length(q)+1);
              q[i-1] := i; //i-1
         end;
         while length(q) > 0 do
               begin
                    {извлечение из очереди вершины с наименьшей длиной - расстояние
                    до нее теперь точно известно}
                    curr := ExtractMin(d, Q);
                    {обновление массивов с учетом нового точно оптимального маршрутадо curr }
                    for i:=1 to nodesCount do
                        if(d[i] > d[curr] + a[curr][i]) then
                           begin
                                d[i] := d[curr] + a[curr][i];
                                p[i] := curr;
                           end;
               end;
     if param = 'distance' then
        result := d
     else if param = 'previous' then
        result := p;
end;

function PathFromTo (start, finish: integer): nodesMass;
var
   path: nodesMass;
   prevNodes: mass;
   next, i: integer;
begin
    prevNodes := Dijkstra(start, 'previous') ;

    //Восстановление маршрута в массив path (поле id) в обратном порядке
    next := finish;
    repeat
       setlength(path, length(path)+1);
       path[length(path)-1].id := next;
       next := prevNodes[next];
    until next = start;
    setlength(path, length(path)+1);
    path[length(path)-1].id := start;

    //Нахождение координат каждого промежуточного пункта
    for i:=0 to length(path)-1 do
       begin
          with DataModule1.NodeCoordinatesQuery do
               begin
                    Close;
                    ParamByName('id').AsInteger := path[i].id;
                    Open;
                    path[i].x := FieldByName('x').AsInteger;
                    path[i].y := FieldByName('y').AsInteger;
               end;
       end;
    result := path;
end;

end.

