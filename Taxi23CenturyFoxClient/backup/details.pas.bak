unit details;

{$mode objfpc}{$H+}

interface

uses
  DataModule, Classes, SysUtils, sqldb, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls;

type
    matrix = array of array of integer;
    mass = array [1..100] of integer;
  { TfrmDetails }

  TfrmDetails = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    OrderQuery: TSQLQuery;
    Panel1: TPanel;
    DataQuery: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDetails: TfrmDetails;
  a: matrix;
  s, amount: integer;

implementation

uses
  Main, Graph, Start;

{$R *.lfm}

{ TfrmDetails }

function BoolToInt (Bool: boolean): integer;
begin
  if Bool = false then
     result := 0
  else
     result := 1;
end;

function Price(start, finish, comfort: integer): string;
var i, j, dist, money: integer;
  begin
    DataModule1.SQLQuery1.Open;
    amount := DataModule1.SQLQuery1.FieldByName('amount').AsInteger;
    setlength(a, amount+1); // 0-я строка и столбец не будут учитываться
      for i:=1 to amount do
         setlength(a[i], amount+1);
    FormAdjecencyMatrix(amount, a);

    if comfort = 1 then
       money := 59
    else
       if (comfort = 2) or (comfort = 3) then
          money := 99
       else
          money := 149;
    dist := Dijkstra(a, start, amount)[finish];
    if dist > 5 then
       begin
         case comfort of
           1: money := money + 15*(dist-5);
           2: money := money + 20*(dist-5);
           3: money := money + 25*(dist-5);
           4: money := money + 30*(dist-5);
           5: money := money + 40*(dist-5);
         end;
       end;
    result := IntToStr(money);
  end;

function CountTime(start, finish: integer): integer; //string;
var i, dist: integer;
    d: mass;
  begin
    {DataModule1.SQLQuery1.Open;
    amount := DataModule1.SQLQuery1.FieldByName('amount').AsInteger;
    setlength(a, amount+1); // 0-я строка и столбец не будут учитываться
      for i:=1 to amount do
         setlength(a[i], amount+1);
       FormAdjecencyMatrix(amount, a);}
    d := Dijkstra(a, start, amount);
    dist := d[finish];
    result := dist; //IntToStr(dist);
  end;

procedure TfrmDetails.FormShow(Sender: TObject);
var
    min: integer;
    hours: integer;
begin
  Label8.Caption := frmMain.DBLookupComboBox1.Text;
  Label9.Caption := frmMain.DBLookupComboBox2.Text;
  Label10.Caption := frmMain.TimeEdit.Text;
  if (frmMain.WideTrunk.Checked = true)
     and (frmMain.BabySeat.Checked = true) then
         Label11.Caption := 'Большой багажник, детское кресло'
  else
      begin
           if frmMain.WideTrunk.Checked = true then
               Label11.Caption := 'Большой багажник'
           else if frmMain.BabySeat.Checked = true then
               Label11.Caption := 'Детское кресло'
           else
               Label11.Caption := 'Нет';
      end;

  Label12.Caption := InttoStr(frmMain.ComfortRate.Position);
  Label13.Caption := InttoStr(frmMain.Passengers.Position);
  Label14.Caption := Price(frmMain.DBLookupComboBox1.KeyValue, frmMain.DBLookupComboBox2.KeyValue, frmMain.ComfortRate.Position);

  min := CountTime(frmMain.DBLookupComboBox1.KeyValue, frmMain.DBLookupComboBox2.KeyValue);
  hours := min div 60;
  min := min mod 60;
  if (hours = 0) and (min < 10) then
     Label16.Caption := '00' + ' : ' + '0' + IntToStr(min);
  if (hours = 0) and (min >= 10) then
     Label16.Caption := '00' + ' : ' + IntToStr(min);
  if (hours <> 0) and (min < 10) then
     Label16.Caption := '0' + IntToStr(hours) + ' : ' + '0' + IntToStr(min);
  if (hours <> 0) and (min >= 10) then
     Label16.Caption := '0' + IntToStr(hours) + ' : ' + IntToStr(min);
end;

procedure TfrmDetails.Button1Click(Sender: TObject);
begin
  try
     DataModule1.Connection.Open;
     DataModule1.SQLTransaction1.Active := True;
  except
     ShowMessage ('Ошибка подключения к базе данных!');
  end;
  with OrderQuery do
       begin
            Open;
            Insert;
            Fields[1].AsDatetime := Now;
            Fields[2].AsInteger := frmMain.DBLookupComboBox1.KeyValue;;
            Fields[3].AsInteger := frmMain.DBLookupComboBox2.KeyValue;;
            Fields[4].AsDatetime := frmMain.TimeEdit.Time ;
            Fields[5].AsInteger := frmMain.ComfortRate.Position;
            Fields[6].AsInteger := frmMain.Passengers.Position;
            Fields[7].AsInteger := BoolToInt(frmMain.WideTrunk.Checked);
            Fields[8].AsInteger := BoolToInt(frmMain.BabySeat.Checked);
            try
               Post;
               ApplyUpdates;
               DataModule1.SQLTransaction1.Commit;
            except
               ShowMessage('Запрос не выполнен!');
            end;

       end;
  Close;
  frmStart.Show;
end;

end.

