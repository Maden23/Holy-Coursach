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
    AmountOfSeats: TComboBox;
    BabySeat: TCheckBox;
    btnConfirm: TButton;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    SQLQuery1: TSQLQuery;
    SQLQuery1adress: TStringField;
    SQLQuery1id: TAutoIncField;
    WideTrunk: TCheckBox;
    CheckGroup1: TCheckGroup;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ComfortRate: TTrackBar;
    Passengers: TTrackBar;
    procedure BabySeatChange(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure ComfortRateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure PassengersChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
  uses start;
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
  if DBLookupComboBox1.Text = '' then
     ShowMessage('Введите адрес подачи!')
  else if DBLookupComboBox2.Text = '' then
     ShowMessage('Введите конечный пункт!')
  else if DBLookupComboBox1.Text = DBLookupComboBox2.Text then
     ShowMessage('Адрес подачи не должен совпадать с конечным адресом!')
  else
      begin
           frmMain.Hide;
           frmDetails.Show;
      end;
end;

procedure TfrmMain.BabySeatChange(Sender: TObject);
begin
  if BabySeat.Checked = true then
     begin
          AmountOfSeats.Enabled := true;
          AmountOfSeats.Text := '1';
     end
  else
     begin
          AmountOfSeats.Enabled := false;
          AmountOfSeats.Text := '0';
     end;
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

procedure TfrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  frmStart.Show;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  try
     DataModule1.Connection.Open;
     DataModule1.SQLTransaction1.Active := True;
     SQLQuery1.Active := true;
     SQLQuery1.Open;
  except
     ShowMessage ('Ошибка подключения к базе данных!');
     Close;
  end;
end;

procedure TfrmMain.Label1Click(Sender: TObject);
begin

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

