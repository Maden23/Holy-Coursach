unit details;

{$mode objfpc}{$H+}

interface

uses
  DataModule, Classes, SysUtils, sqldb, db, FileUtil, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls;

type
    matrix = array of array of integer;
    mass = array [1..100] of integer;
  { TfrmDetails }

  TfrmDetails = class(TForm)
    Button1: TButton;
    btnChange: TButton;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tripTime: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    OrderQuery: TSQLQuery;
    Panel1: TPanel;
    procedure btnChangeClick(Sender: TObject);
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
  order_id: integer;

implementation

uses
  Main, Graph, Start, order_info;

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
var dist, money: integer;
  begin
    //DataModule1.CountLocationsQuery.Open;
    //amount := DataModule1.CountLocationsQuery.FieldByName('amount').AsInteger;
    //setlength(a, amount+1); // 0-я строка и столбец не будут учитываться
    //  for i:=1 to amount do
    //     setlength(a[i], amount+1);
    //FormAdjecencyMatrix(amount, a);

    if comfort = 1 then
       money := 59
    else
       if (comfort = 2) or (comfort = 3) then
          money := 99
       else
          money := 149;
    dist := Dijkstra(start, 'distance')[finish];
    if dist > 5 then
       begin
         case comfort of
           1: money := money + 10*(dist-5);
           2: money := money + 15*(dist-5);
           3: money := money + 20*(dist-5);
           4: money := money + 25*(dist-5);
           5: money := money + 30*(dist-5);
         end;
       end;
    result := IntToStr(money);
  end;

function CountTime(start, finish: integer): integer; //string;
var i, dist: integer;
    d: mass;
  begin
    d := Dijkstra(start, 'distance');
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
  if (frmMain.WideTrunk.Checked = true)
     and (frmMain.BabySeat.Checked = true)
         and (frmMain.AmountOfSeats.Text = '1') then
             Label11.Caption := 'Большой багажник, детское кресло'
  else if (frmMain.WideTrunk.Checked = true)
          and (frmMain.BabySeat.Checked = true)
              and (frmMain.AmountOfSeats.Text = '2') then
                 Label11.Caption := 'Большой багажник, 2 детских кресла'
  else if (frmMain.WideTrunk.Checked = true)
          and (frmMain.BabySeat.Checked = true)
              and (frmMain.AmountOfSeats.Text = '3') then
                 Label11.Caption := 'Большой багажник, 3 детских кресла'
  else
      begin
           if frmMain.WideTrunk.Checked = true then
               Label11.Caption := 'Большой багажник'
           else if (frmMain.BabySeat.Checked = true)
                   and (frmMain.AmountOfSeats.Text = '1') then
                       Label11.Caption := 'Детское кресло'
           else if (frmMain.BabySeat.Checked = true)
                   and (frmMain.AmountOfSeats.Text = '2') then
                       Label11.Caption := '2 детских кресла'
           else if (frmMain.BabySeat.Checked = true)
                   and (frmMain.AmountOfSeats.Text = '3') then
                       Label11.Caption := '3 детских кресла'
           else
               Label11.Caption := 'Нет';
      end;

  Label12.Caption := InttoStr(frmMain.ComfortRate.Position);
  Label13.Caption := InttoStr(frmMain.Passengers.Position);
  Label14.Caption := ' ~ ' + Price(frmMain.DBLookupComboBox1.KeyValue, frmMain.DBLookupComboBox2.KeyValue, frmMain.ComfortRate.Position) + ' ₽ ';

  min := CountTime(frmMain.DBLookupComboBox1.KeyValue, frmMain.DBLookupComboBox2.KeyValue);
  hours := min div 60;
  min := min mod 60;
  if (hours = 0) and (min < 10) then
     tripTime.Caption := '00' + ' : ' + '0' + IntToStr(min);
  if (hours = 0) and (min >= 10) then
     tripTime.Caption := '00' + ' : ' + IntToStr(min);
  if (hours <> 0) and (min < 10) then
     tripTime.Caption := '0' + IntToStr(hours) + ' : ' + '0' + IntToStr(min);
  if (hours <> 0) and (min >= 10) then
     tripTime.Caption := '0' + IntToStr(hours) + ' : ' + IntToStr(min);
end;

procedure TfrmDetails.Button1Click(Sender: TObject);
begin
  with OrderQuery do
       begin
            Close;
            //Open;
            //Insert;
            //ParamByName('created').AsDatetime := Now;
            //ParamByName('start_id').AsInteger := frmMain.DBLookupComboBox1.KeyValue;
            //ParamByName('finish_id').AsInteger := frmMain.DBLookupComboBox2.KeyValue;
            //ParamByName('comfort_rate').AsInteger := frmMain.ComfortRate.Position;
            //ParamByName('passengers').AsInteger := frmMain.Passengers.Position;
            //ParamByName('wide_trunk').AsInteger := BoolToInt(frmMain.WideTrunk.Checked);
            //ParamByName('baby_seat').AsInteger := StrToInt(frmMain.AmountOfSeats.Text);
            SQL.Clear;
            SQL.Add('call create_order('
                          + '''' + DateTimeToStr(Now) + ''', '
                          + '''' + IntToStr(frmMain.DBLookupComboBox1.KeyValue) + ''', '
                          + '''' + IntToStr(frmMain.DBLookupComboBox2.KeyValue) + ''', '
                          + '''' + IntToStr(frmMain.ComfortRate.Position) + ''', '
                          + '''' + IntToStr(frmMain.Passengers.Position) + ''', '
                          + '''' + IntToStr(BoolToInt(frmMain.WideTrunk.Checked)) + ''', '
                          + '''' + frmMain.AmountOfSeats.Text + ''');' );
            try
              Open;
              order_id := FieldByName('id').AsInteger;
               //Post;
               //ApplyUpdates;
               //DataModule1.SQLTransaction1.Commit;
            except
               ShowMessage('Запрос не выполнен!');
               frmMain.Show;
               frmDetails.Close;
            end;
       end;
  Close;
  frmOrderInfo.Show;
  //ShowMessage('Заказ принят!');
end;


procedure TfrmDetails.btnChangeClick(Sender: TObject);
begin
  Hide;
  frmMain.Show;
end;


end.

