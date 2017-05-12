unit driver;

{$mode objfpc}{$H+}

interface

uses
  DataModule, graph, db, sqldb, Classes, SysUtils, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, DBGrids, DbCtrls;

type
  matrix = array of array of integer;
  { TfrmDriver }
  TfrmDriver = class(TForm)
    AvailableOrderQuerycreated: TDateTimeField;
    AvailableOrderQueryfinish: TStringField;
    AvailableOrderQueryid: TAutoIncField;
    AvailableOrderQuerystart: TStringField;
    btnBuildRoute: TButton;
    btnCancelOrder: TButton;
    btnFinishOrder: TButton;
    Button1: TButton;
    btnAcceptOrder: TButton;
    AvailableOrdersDS: TDataSource;
    btnResetRoutes: TButton;
    DriverInfoQueryid: TAutoIncField;
    DriverInfoQuerylocation: TLongintField;
    DriverInfoQuerymodel: TStringField;
    DriverInfoQueryname: TStringField;
    DriverInfoQueryreg_number: TStringField;
    DriverInfoQueryx: TLongintField;
    DriverInfoQueryy: TLongintField;
    FinishOrderQuery: TSQLQuery;
    Car: TImage;
    SelectedOrderDS: TDataSource;
    FinishOrder: TButton;
    CancelOrder: TButton;
    BuildRoute: TButton;
    Image2: TImage;
    AvailableOrders: TDBGrid;
    SelectedOrderQuerycreated: TDateTimeField;
    SelectedOrderQueryfinish: TStringField;
    SelectedOrderQueryfinish_id: TLongintField;
    SelectedOrderQueryid: TAutoIncField;
    SelectedOrderQuerystart: TStringField;
    SelectedOrderQuerystart_id: TLongintField;
    SelectedOrders: TDBGrid;
    Map: TImage;
    Label1: TLabel;
    ID: TLabel;
    DriverName: TLabel;
    License: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Automobile: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    AvailableOrderQuery: TSQLQuery;
    DriverInfoQuery: TSQLQuery;
    AcceptOrderQuery: TSQLQuery;
    SelectedOrderQuery: TSQLQuery;
    CancelOrderQuery: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure btnAcceptOrderClick(Sender: TObject);
    procedure btnBuildRouteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCancelOrderClick(Sender: TObject);
    procedure btnFinishOrderClick(Sender: TObject);
    procedure btnResetRoutesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SelectedOrderDSDataChange(Sender: TObject; Field: TField);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDriver: TfrmDriver;
  driver_id: integer;
  driver_location: node;

implementation

{$R *.lfm}
 uses start, driver_login;

{ TfrmDriver }
procedure ShowMatrix(var a: matrix; Memo1: TMemo);
var i, j: integer;
  begin
     for i:=1 to length(a)-1 do
         begin
         for j:=1 to length(a)-1 do
             Memo1.Text := Memo1.Text + inttostr(a[i][j]) + ' ';
         Memo1.Text := Memo1.Text + #13;
         Memo1.Lines.Add('');
         end;
  end;

procedure TfrmDriver.Button1Click(Sender: TObject);
var a: matrix;
    i, amount: integer;
begin
     {Получение из базы количества вершин (amount)
                и создание матрицы amount x amount}
     DataModule1.CountLocationsQuery.Open;
     amount := DataModule1.CountLocationsQuery.FieldByName('amount').AsInteger;
     setlength(a, amount+1); // 0-я строка и столбец не будут учитываться
     for i:=1 to amount do
         setlength(a[i], amount+1);
     FormAdjecencyMatrix(amount, a);
     ShowMatrix(a, Memo1);
end;

procedure TfrmDriver.btnCancelOrderClick(Sender: TObject);
begin
    try
         DataModule1.Connection.Open;
         SQLTransaction1.Active := True;
    except
         ShowMessage ('Ошибка подключения к базе данных!');
    end;
  with CancelOrderQuery do
    begin
         Close;
         UpdateSQL.Clear;
         UpdateSQL.Add('update orders set driver = NULL where id = ' +
         IntToStr(SelectedOrders.DataSource.DataSet.FieldByName('id').Value) + ';');
         try
           Open;
           Update;
           Edit;
           Post;
           ApplyUpdates;
           SQLTransaction1.Commit;
           ShowMessage('Запись обновлена');
           AvailableOrderQuery.Close;
           AvailableOrderQuery.Open;
           SelectedOrderQuery.Close;
           SelectedOrderQuery.Open;;
      except
         ShowMessage('Обновление не выполнено!');
      end;
    end;
end;

procedure TfrmDriver.btnFinishOrderClick(Sender: TObject);
begin
    try
         DataModule1.Connection.Open;
         SQLTransaction1.Active := True;
    except
         ShowMessage ('Ошибка подключения к базе данных!');
    end;
  with FinishOrderQuery do
    begin
         Close;
         ParamByName('order_id').AsInteger := SelectedOrders.DataSource.DataSet.FieldByName('id').Value;
         try
           Open;
           ShowMessage('Запись обновлена');
           AvailableOrderQuery.Close;
           AvailableOrderQuery.Open;
           SelectedOrderQuery.Close;
           SelectedOrderQuery.Open;
           with driver_location do
             begin
               id := FieldByName('id').AsInteger;
               x := FieldByName('x').AsInteger;
               y := FieldByName('y').AsInteger;
               Car.Left := x-4;
               Car.Top := y-28;
             end;
           btnResetRoutes.Click;
      except
         ShowMessage('Обновление не выполнено!');
      end;
    end;
end;

procedure Buildroads();
var x1,x2,y1,y2 : integer;
begin
   with DataModule1.RoadsQuery do
   begin
     Close;
     Open;
     Last;
     First;
     while not EOF do
           begin
             x1 := FieldByName('x1').AsInteger;
             x2 := FieldByName('x2').AsInteger;
             y1 := FieldByName('y1').AsInteger;
             y2 := FieldByName('y2').AsInteger;
             frmDriver.Map.Canvas.Pen.Color := clInfoBk;
             frmDriver.Map.Canvas.Pen.Width := 3;
             frmDriver.Map.Canvas.Line(x1, y1, x2, y2);
             Next;
           end;
     end;
end;

procedure TfrmDriver.btnResetRoutesClick(Sender: TObject);
begin
   Map.Repaint;
   BuildRoads;
   Car.Repaint;
end;

procedure TfrmDriver.btnAcceptOrderClick(Sender: TObject);
begin
     try
         DataModule1.Connection.Open;
         SQLTransaction1.Active := True;
      except
         ShowMessage ('Ошибка подключения к базе данных!');
      end;
  with AcceptOrderQuery do
    begin
      Close;
      UpdateSQL.Clear;
      UpdateSQL.Add('update orders set driver = ' + IntToStr(driver_id) + ' where id = ' +
              IntToStr(AvailableOrders.DataSource.DataSet.FieldByName('id').Value) + ';');
      try
         Open;
         Update;
         Edit;
         Post;
         ApplyUpdates;
         SQLTransaction1.Commit;
         //ShowMessage('Запись обновлена');
         AvailableOrderQuery.Close;
         AvailableOrderQuery.Open;
         SelectedOrderQuery.Close;
         SelectedOrderQuery.Open;;
      except
         ShowMessage('Обновление не выполнено!');
      end;
    end;
end;

procedure DrawRoute(var path: nodesMass);
var
   i: integer;
begin
  for i:=0 to length(path)-2 do
      begin
           with frmDriver.Map.Canvas do
             begin
                Pen.Color := clGreen;
                Pen.Width :=5;
                Line(path[i].x, path[i].y, path[i+1].x, path[i+1].y);
             end;

      end;
end;

procedure TfrmDriver.btnBuildRouteClick(Sender: TObject);
var
    path: nodesMass;
    passenger_location, destination: integer;
begin
  if SelectedOrders.DataSource.DataSet.IsEmpty then
     ShowMessage('Нет текущих заказов')
  else
      begin
          Map.Repaint;
          BuildRoads;

          with SelectedOrders.DataSource.DataSet do
            begin
              passenger_location := FieldByName('start_id').AsInteger;
              destination := FieldByName('finish_id').AsInteger;
            end;

          if driver_location.id <> passenger_location then
             begin
               path := PathFromTo(driver_location.id, passenger_location);
               DrawRoute(path);
               with  Map.Canvas do
                  begin
                    //Нарисовать человечка в path[0]
                    Pen.Color:=clBlack;
                    Pen.Width := 2;
                    Ellipse(path[0].x-7,path[0].y-7,
                            path[0].x+7,path[0].y+7);
                  end;
             end
          else
              //Нарисовать человечка в driver_location
              with  Map.Canvas do
                  begin
                    Pen.Color:=clBlack;
                    Pen.Width := 2;
                    Ellipse(driver_location.x-7,driver_location.y-7,
                            driver_location.x+7,driver_location.y+7);
                  end;

          path := PathFromTo(passenger_location, destination);
          DrawRoute(path);
          with  Map.Canvas do
              begin
                Pen.Color:=clBlack;
                Pen.Width := 2;
                Rectangle(path[0].x-7,path[0].y-7,path[0].x+7,path[0].y+7);
              end;
          Car.Repaint;
      end;
end;

procedure TfrmDriver.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
     frmStart.Show;
end;

procedure TfrmDriver.FormShow(Sender: TObject);
  begin
     Car.Visible := false;
     AvailableOrderQuery.Active := true;
     SelectedOrderQuery.Active := true;
     driver_id := frmDriverLogin.DriverNameComboBox.KeyValue;
     ID.Caption := IntToStr(driver_id);
     with DriverInfoQuery do
     begin
       Close;
       ParamByName('id').AsInteger := driver_id;
       Open;
       driver_location.id := FieldByName('location').AsInteger;
       DriverName.Caption := DriverInfoQuery.FieldByName('name').AsString;
       License.Caption := FieldByName('reg_number').AsString;
       Automobile.Caption := FieldByName('model').AsString;
       driver_location.x := FieldByName('x').AsInteger;
       driver_location.y := FieldByName('y').AsInteger;
     end;
     Car.Left := driver_location.x-4;
     Car.Top := driver_location.y-28;
     Car.Visible := true;
     Car.BringToFront;
     with SelectedOrderQuery do
     begin
          Close;
          ParamByName('driver').AsInteger := driver_id;
          Open;
     end;
     if SelectedOrders.DataSource.DataSet.IsEmpty then
        btnBuildRoute.Enabled := false;
  end;

procedure TfrmDriver.SelectedOrderDSDataChange(Sender: TObject; Field: TField);
begin
  if SelectedOrders.DataSource.DataSet.IsEmpty then
     btnBuildRoute.Enabled := false
  else btnBuildRoute.Enabled := true;
end;

end.

