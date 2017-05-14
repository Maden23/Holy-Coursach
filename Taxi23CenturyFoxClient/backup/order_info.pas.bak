unit order_info;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons;

type

  { TfrmOrderInfo }

  TfrmOrderInfo = class(TForm)
    BitBtn1: TBitBtn;
    FindMatchQuerycolor: TStringField;
    FindMatchQuerydist: TLongintField;
    FindMatchQueryid: TLongintField;
    FindMatchQuerymodel: TStringField;
    FindMatchQueryname: TStringField;
    FindMatchQueryreg_number: TStringField;
    Label1: TLabel;
    finishTime: TLabel;
    Label2: TLabel;
    driverName: TLabel;
    Label4: TLabel;
    autoName: TLabel;
    autoSign: TLabel;
    autoColor: TLabel;
    Label8: TLabel;
    FindMatchQuery: TSQLQuery;
    DriversLocationsQuery: TSQLQuery;
    Label9: TLabel;
    time: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmOrderInfo: TfrmOrderInfo;

implementation
  uses
    Main, details, Start, graph;
{$R *.lfm}

  { TfrmOrderInfo }

function ConcatDriverDist(start: integer): string;
var id: integer;
    map: mass;
begin
   map := Dijkstra(start, 'distance');
  with frmOrderInfo.DriversLocationsQuery do
    begin
         Close;
         Open;
         First;
         repeat
           result := result + IntToStr(map[FieldByName('location').AsInteger]) + ',';
           Next;
         until EOF;
         //setlength(result, length(result)-1);
    end;
end;

procedure TfrmOrderInfo.FormShow(Sender: TObject);
var start: integer;
    FormattedTime: string;
    myTime : TDateTime;
  begin
    start := frmMain.DBLookupComboBox1.KeyValue;
    with FindMatchQuery do
      begin
        Close;
        ParamByName('distance_array').AsString := ConcatDriverDist(start);
        ParamByName('order_id').AsInteger := order_id;
        Open;
        if EOF then
           begin
             ShowMessage('Подходящих водителей не найдено! Измените параметры заказа.');

             frmMain.Show;
             self.Close;
           end
        else
            begin
              driverName.Caption := FieldByName('name').AsString;
              autoName.Caption := FieldByName('model').AsString;
              autoSign.Caption := FieldByName('reg_number').AsString;
              autoColor.Caption := FieldByName('color').AsString;
              time.Caption := FieldByName('dist').AsString + ' мин.';
              myTime := Now + FieldByName('dist').AsInteger + StrToTime(frmDetails.tripTime.Caption);
              DateTimeToString(formattedTime, 't', myTime);
              finishTime.Caption := FormattedTime;
            end;

      end;
  end;

procedure TfrmOrderInfo.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
    frmStart.Show;
end;

procedure TfrmOrderInfo.BitBtn1Click(Sender: TObject);
begin
   //--------Clearing frmMain ----------
      with frmMain do
           begin
                DBLookupComboBox1.Text := '';
                DBLookupComboBox2.Text := '';
                WideTrunk.Checked := false;
                BabySeat.Checked := false;
                ComfortRate.Position := 1;
                Passengers.Position := 1;
           end;
  //-----------------------------------
  Close;
end;

end.

