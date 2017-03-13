program dijkstra;
const
   inf = 9999;
   n = 5;
type matrix = array [1..n, 1..n] of integer;
     mass = array [1..n] of integer;
     endless = array of integer;
var a: matrix;
    d, p: mass; //distance
    q: endless; //queue
    v: mass; //visited
    i, j, curr: integer;
    s: integer; //start node
    
function ExtractMin (d: mass; var Q: endless): integer;
var i, j: integer;
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
    
begin

writeln('Put in adjecency matrix: ');
for i:=1 to n do
   for j:=1 to n do
      read(a[i][j]);

write('Put in the node S: ');
   readln(s);

for i:=1 to n do
   d[i] := inf;
   
for i:=1 to n do
   p[i] := 0;
   
d[s] := 0; //distance of current node S

for i:=1 to n do
   begin
      setlength(q, length(q)+1);
      q[i-1] := i;
   end;
   
writeln('Queue: ');
for i:=0 to n-1 do
   writeln(q[i]);

while length(q) > 0 do
   begin
      curr := ExtractMin(d, Q);
      for i:=1 to n do
            if (d[i] > d[curr] + a[curr][i]) then
               begin
                  d[i] := d[curr] + a[curr][i];
                  p[i] := curr;
                  //ChangePriority(Q, i, d[i]);
               end;
   end;

writeln('Distance: ');   
for i:=1 to n do
  writeln(d[i]);

end.