unit dispatch_login;

{$mode objfpc}{$H+}

interface

uses
  dispatch, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmDispatchLogin }

  TfrmDispatchLogin = class(TForm)
    Label2: TLabel;
    OK: TButton;
    Password: TEdit;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure OKClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDispatchLogin: TfrmDispatchLogin;

implementation

uses
  start;
{$R *.lfm}

{ TfrmDispatchLogin }

procedure TfrmDispatchLogin.OKClick(Sender: TObject);
begin
  if Password.Caption = '2323' then
     begin
          frmDispatch.Show;
          frmDispatchLogin.Close;
          frmStart.Hide;
     end
  else
     ShowMessage('Неверный код доступа')
end;

procedure TfrmDispatchLogin.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  Password.Text := '';
end;

end.

