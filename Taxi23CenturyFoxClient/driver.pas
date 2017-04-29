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
    AvailableOrderQueryfinish_id: TLongintField;
    AvailableOrderQueryid: TAutoIncField;
    AvailableOrderQuerystart_id: TLongintField;
    btnBuildRoute: TButton;
    btnCancelOrder: TButton;
    btnFinishOrder: TButton;
    Button1: TButton;
    btnAcceptOrder: TButton;
    AvailableOrdersDS: TDataSource;
    FinishOrderQuery: TSQLQuery;
    SelectedOrderDS: TDataSource;
    FinishOrder: TButton;
    CancelOrder: TButton;
    BuildRoute: TButton;
    Image2: TImage;
    AvailableOrders: TDBGrid;
    SelectedOrders: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    ID: TLabel;
    DriverName: TLabel;
    Lisence: TLabel;
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
    procedure Button1Click(Sender: TObject);
    procedure btnCancelOrderClick(Sender: TObject);
    procedure btnFinishOrderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDriver: TfrmDriver;
  driver_id: integer;

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
     DataModule1.SQLQuery1.Open;
     amount := DataModule1.SQLQuery1.FieldByName('amount').AsInteger;
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
         UpdateSQL.Clear;
         UpdateSQL.Add('update orders set completed = 1 where id = ' +
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

procedure TfrmDriver.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
     frmStart.Show;
end;

procedure TfrmDriver.FormShow(Sender: TObject);
begin
     AvailableOrderQuery.Active := true;
     SelectedOrderQuery.Active := true;
     driver_id := frmDriverLogin.DriverNameComboBox.KeyValue;
     ID.Caption := IntToStr(driver_id);
     with DriverInfoQuery do
     begin
       Close;
       ParamByName('id').AsInteger := driver_id;
       Open;
     end;
     DriverName.Caption := DriverInfoQuery.FieldByName('last_name').AsString;
     with SelectedOrderQuery do
     begin
          Close;
          ParamByName('driver').AsInteger := driver_id;
          Open;
     end;
end;

end.

