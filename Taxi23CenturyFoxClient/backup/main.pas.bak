unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, sqlite3conn, FileUtil, Forms,
  Controls, Graphics, Dialogs, StdCtrls, DbCtrls, ComCtrls, Spin,
  ExtCtrls, EditBtn;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnConfirm: TButton;
    Panel1: TPanel;
    TimeEdit: TTimeEdit;
    WideTrunk: TCheckBox;
    BabySeat: TCheckBox;
    CheckGroup1: TCheckGroup;
    EditStart: TEdit;
    EditFinish: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Hours: TSpinEdit;
    Minutes: TSpinEdit;
    SQLite3Connection1: TSQLite3Connection;
    OrderQuery: TSQLQuery;
    AdressQuery: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    ComfortRate: TTrackBar;
    Passengers: TTrackBar;
    procedure btnConfirmClick(Sender: TObject);
    procedure ComfortRateChange(Sender: TObject);
    procedure PassengersChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
function CheckAdress (adress: string; AdressQuery: TSQLQuery): string;
begin
  result := '0';
  AdressQuery.Close;
  AdressQuery.ParamByName('adress').AsString := adress; //парам - туда
  AdressQuery.Open;
  result :=  IntToStr(AdressQuery.FieldByName('id').Asinteger); //филд - обратна

end;

function ConvertToMinutes (hours: integer; minutes: integer): integer;
begin
  result := hours*60 + minutes;
end;

function BoolToInt (Bool: boolean): integer;
begin
  if Bool = false then
     result := 0
  else
     result := 1;
end;

procedure TForm1.btnConfirmClick(Sender: TObject);
var str1, str2 : string;
    time: integer;
begin
  try
     SQLite3Connection1.Open;
     SQLTransaction1.Active := True;
  except
     ShowMessage ('Ошибка подключения к базе данных!');
  end;

  str1 := CheckAdress(EditStart.Text, AdressQuery);
  str2 := CheckAdress(EditFinish.Text, AdressQuery);
  if (str1 = '0') then
     ShowMessage('Start adress: "' + EditStart.Text + '" does not exist');
  if (str2 = '0') then
     ShowMessage('Finish adress: "' + EditFinish.Text + '" does not exist')
  else
     begin
        //Time := ConvertToMinutes(Hours.Value, Minutes.Value);
        with OrderQuery do
             begin
                  Open;
                  Insert;
                  Fields[1].AsDatetime := Now;
                  Fields[2].AsInteger := StrToInt(str1);
                  Fields[3].AsInteger := StrToInt(str2);
                  Fields[4].AsDatetime := TimeEdit.Time ;
                  Fields[5].AsInteger := ComfortRate.Position;
                  Fields[6].AsInteger := Passengers.Position;
                  Fields[7].AsInteger := BoolToInt(WideTrunk.Checked);
                  Fields[8].AsInteger := BoolToInt(BabySeat.Checked);
                  //Fields[8].AsInteger := Time;
                  //Fields.AsDatetime :=
                  try

                     Post;
                     ApplyUpdates;
                     SQLTransaction1.Commit;
                  except ShowMessage('Запрос не выполнен!');
                  end;
             end;

         {ShowMessage(str1 +', '+str2+', '+datetimetostr(now)+', '+inttostr(ComfortRate.Position)
                          +', '+inttostr(Passengers.Position)+', '+inttostr(BoolToInt(WideTrunk.Checked))
                          +', '+inttostr(BoolToInt(BabySeat.Checked))+', '+inttostr(Time)); }
     end;
     ShowMessage('Заказ принят');
end;


procedure TForm1.ComfortRateChange(Sender: TObject);
begin
  case ComfortRate.Position of
       1: Label5.Caption := '✪';
       2: Label5.Caption := '✪✪';
       3: Label5.Caption := '✪✪✪';
       4: Label5.Caption := '✪✪✪✪';
       5: Label5.Caption := '✪✪✪✪✪';

  end;
end;


procedure TForm1.PassengersChange(Sender: TObject);
begin
  case Passengers.Position of
       1: Label7.Caption := '❶';
       2: Label7.Caption := '❷';
       3: Label7.Caption := '❸';
       4: Label7.Caption := '❹';
       5: Label7.Caption := '❺';
       6: Label7.Caption := '❻';
       7: Label7.Caption := '❼';
       8: Label7.Caption := '❽';

  end;
end;

end.

