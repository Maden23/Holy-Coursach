unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, sqlite3conn, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, DbCtrls, ComCtrls, MaskEdit, Spin, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
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
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SQLite3Connection1: TSQLite3Connection;
    OrderQuery: TSQLQuery;
    AdressQuery: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
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
function CheckAdress (adress: string; AdressQuery: TSQLQuery): integer;
begin
  result := 0;
  AdressQuery.Close;
  AdressQuery.ParamByName('adress').AsString := adress;
  AdressQuery.Open;
  result :=  AdressQuery.ParamByName('id').AsInteger;

end;

procedure TForm1.Button1Click(Sender: TObject);
var str1, str2 : integer;
   str3: string;
begin
  try
     SQLite3Connection1.Open;
     SQLTransaction1.Active := True;
     ShowMessage ('Подключения к базе данных успешно!');
  except
     ShowMessage ('Ошибка подключения к базе данных!');
  end;
  str1 := CheckAdress(EditStart.Text, AdressQuery);
  str2 := CheckAdress(EditFinish.Text, AdressQuery);
  str3 := 'Start = ' + IntToStr(str1) + 'Finish = ' + IntToStr(str2);
  ShowMessage(str3);

end;


procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  case TrackBar1.Position of
       1: Label5.Caption := '✪';
       2: Label5.Caption := '✪✪';
       3: Label5.Caption := '✪✪✪';
       4: Label5.Caption := '✪✪✪✪';
       5: Label5.Caption := '✪✪✪✪✪';

  end;
end;


procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  case TrackBar2.Position of
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

