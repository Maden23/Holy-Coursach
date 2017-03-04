unit UIClient;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db,  sqlite3conn, IBConnection,
  mysql50conn, mysql55conn, mssqlconn, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, DbCtrls, DBGrids;

type

  { TMainCustomerForm }

  TMainCustomerForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery1baby_sit: TLongintField;
    SQLQuery1carcase: TStringField;
    SQLQuery1color: TStringField;
    SQLQuery1comfort_rate: TLongintField;
    SQLQuery1id: TLongintField;
    SQLQuery1model: TStringField;
    SQLQuery1passenger: TLongintField;
    SQLQuery1reg_number: TStringField;
    SQLQuery1wide_trunk: TLongintField;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainCustomerForm: TMainCustomerForm;

implementation

{$R *.lfm}

{ TMainCustomerForm }

procedure TMainCustomerForm.Button1Click(Sender: TObject);
begin
     SQLite3Connection1.Open;
     SQLTransaction1.Active := True;
     SQLQuery1.Close;
     SQLQuery1.SQL.Add('select * from orders');
     SQLQuery1.Open;

end;

procedure TMainCustomerForm.Button2Click(Sender: TObject);
begin
     SQLite3Connection1.Open;
     SQLTransaction1.Active := True;
     SQLQuery1.Close;
     SQLQuery1.SQL.Add('select * from drivers');
     SQLQuery1.Open;
end;

procedure TMainCustomerForm.Button3Click(Sender: TObject);
begin
     SQLite3Connection1.Open;
     SQLTransaction1.Active := True;
     SQLQuery1.Close;
     SQLQuery1.SQL.Add('select * from cars');
     SQLQuery1.Open;
end;

procedure TMainCustomerForm.Button4Click(Sender: TObject);
begin
     SQLite3Connection1.Open;
     SQLTransaction1.Active := True;
     SQLQuery1.Close;
     SQLQuery1.SQL.Add('select * from locations');
     SQLQuery1.Open;
end;


end.
