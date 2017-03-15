unit dispatch;

{$mode objfpc}{$H+}

interface

uses
  DataModule, sqldb, db, Classes, SysUtils, FileUtil, Forms, Controls, Graphics,
  Dialogs, DBGrids, StdCtrls;

type

  { TfrmDispatch }

  TfrmDispatch = class(TForm)
    Orders: TButton;
    Drivers: TButton;
    Locations: TButton;
    Cars: TButton;
    Edges: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SQLQuery1: TSQLQuery;
    procedure CarsClick(Sender: TObject);
    procedure DriversClick(Sender: TObject);
    procedure EdgesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LocationsClick(Sender: TObject);
    procedure OrdersClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDispatch: TfrmDispatch;

implementation
uses Start;

{$R *.lfm}

{ TfrmDispatch }

procedure TfrmDispatch.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
    frmStart.Show;
end;

procedure TfrmDispatch.DriversClick(Sender: TObject);
begin
    with SQLQuery1 do
         begin
           Close;
           SQL.Clear;
           SQL.Add ('select * from drivers;') ;
           Open;
         end;
end;

procedure TfrmDispatch.EdgesClick(Sender: TObject);
begin
       with SQLQuery1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add ('select * from edges;');
            Open;
          end;
end;

procedure TfrmDispatch.CarsClick(Sender: TObject);
begin
       with SQLQuery1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add ('select * from cars;');
            Open;
          end;
end;

procedure TfrmDispatch.FormCreate(Sender: TObject);
begin

end;

procedure TfrmDispatch.LocationsClick(Sender: TObject);
begin
       with SQLQuery1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add ('select * from locations;');
            Open;
          end;
end;

procedure TfrmDispatch.OrdersClick(Sender: TObject);
begin
     with SQLQuery1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add ('select * from orders;');
            Open;
          end;

end;


end.

