unit Main;

{$mode objfpc}{$H+}

interface

uses
  DataModule, details, Classes, SysUtils, sqldb, mysql56conn, db, sqlite3conn, FileUtil, Forms,
  Controls, Graphics, Dialogs, StdCtrls, DbCtrls, ComCtrls,
  ExtCtrls, EditBtn, DBGrids;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnConfirm: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    SQLQuery1: TSQLQuery;
    SQLQuery1adress: TStringField;
    SQLQuery1id: TAutoIncField;
    TimeEdit: TTimeEdit;
    WideTrunk: TCheckBox;
    BabySeat: TCheckBox;
    CheckGroup1: TCheckGroup;
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
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

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
procedure GetAdress (var start: integer; var finish: integer);
begin
     start := frmMain.DBLookupComboBox1.KeyValue;
     finish := frmMain.DBLookupComboBox2.KeyValue;
     frmMain.SQLQuery1.Close;

end;

procedure TfrmMain.btnConfirmClick(Sender: TObject);
begin
  try
     DataModule1.Connection.Open;
     DataModule1.SQLTransaction1.Active := True;
  except
     ShowMessage ('Ошибка подключения к базе данных!');
  end;
  //GetAdress(start,finish);
  //with OrderQuery do
  //     begin
  //          Open;
  //          Insert;
  //          Fields[1].AsDatetime := Now;
  //          Fields[2].AsInteger := start;
  //          Fields[3].AsInteger := finish;
  //          Fields[4].AsDatetime := TimeEdit.Time ;
  //          Fields[5].AsInteger := ComfortRate.Position;
  //          Fields[6].AsInteger := Passengers.Position;
  //          Fields[7].AsInteger := BoolToInt(WideTrunk.Checked);
  //          Fields[8].AsInteger := BoolToInt(BabySeat.Checked);
  //          try
  //             Post;
  //             ApplyUpdates;
  //             SQLTransaction1.Commit;
  //             except ShowMessage('Запрос не выполнен!');
  //          end;
  //     end;

    frmDetails.ShowModal;
end;


procedure TfrmMain.ComfortRateChange(Sender: TObject);
begin
  case ComfortRate.Position of
       1: Label5.Caption := '✪';
       2: Label5.Caption := '✪✪';
       3: Label5.Caption := '✪✪✪';
       4: Label5.Caption := '✪✪✪✪';
       5: Label5.Caption := '✪✪✪✪✪';

  end;
end;



procedure TfrmMain.PassengersChange(Sender: TObject);
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

