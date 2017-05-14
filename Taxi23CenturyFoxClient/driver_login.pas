unit driver_login;

{$mode objfpc}{$H+}

interface

uses
  driver, db, sqldb, Classes, SysUtils, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, DbCtrls;

type

  { TfrmDriverLogin }

  TfrmDriverLogin = class(TForm)
    DriverNameComboBox: TDBLookupComboBox;
    LoginDS: TDataSource;
    LoginQueryid: TAutoIncField;
    LoginQueryname: TStringField;
    OK: TButton;
    Password: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    LoginQuery: TSQLQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure OKClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDriverLogin: TfrmDriverLogin;

implementation

uses
  start;
{$R *.lfm}

{ TfrmDriverLogin }

procedure TfrmDriverLogin.OKClick(Sender: TObject);
begin
  if Password.Caption = 'miem' then
     begin
       //id := DriverNameComboBox.KeyValue;
       frmDriver.Show;
       frmDriverLogin.Close;
       frmStart.Hide;
     end
  else
     ShowMessage('Неверный пароль');
end;

procedure TfrmDriverLogin.FormShow(Sender: TObject);
begin
  LoginQuery.Open;
end;


procedure TfrmDriverLogin.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  DriverNameComboBox.KeyValue := NULL;
  Password.Text := '';
end;

end.

