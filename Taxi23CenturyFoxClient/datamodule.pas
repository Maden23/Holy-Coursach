unit DataModule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql56conn, sqldb, db, FileUtil;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    Connection: TMySQL56Connection;
    DataSource1: TDataSource;
    RoadsDS: TDataSource;
    EdgesQuery: TSQLQuery;
    EdgesQuerydistance: TLongintField;
    EdgesQueryfirst_node: TLongintField;
    EdgesQueryid_edge: TAutoIncField;
    EdgesQuerysecond_node: TLongintField;
    RoadsQueryx1: TLongintField;
    RoadsQueryx2: TLongintField;
    RoadsQueryy1: TLongintField;
    RoadsQueryy2: TLongintField;
    CountLocationsQuery: TSQLQuery;
    RoadsQuery: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

end.

