unit start;

{$mode objfpc}{$H+}

interface

uses
  dispatch, dispatch_login, driver, driver_login, info, help, Main, sqldb, Classes, SysUtils, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, DbCtrls;

type

  { TfrmStart }

  TfrmStart = class(TForm)
    Driver: TButton;
    Dispatcher: TButton;
    Background: TImage;
    ImgDispatcher: TImage;
    ImgPassenger: TImage;
    ImgDriver: TImage;
    Esc: TLabel;
    Help: TLabel;
    Info: TLabel;
    Passenger: TButton;
    procedure EscClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure ImgDispatcherClick(Sender: TObject);
    procedure ImgDriverClick(Sender: TObject);
    procedure ImgPassengerClick(Sender: TObject);
    procedure InfoClick(Sender: TObject);
    procedure PassengerClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmStart: TfrmStart;

implementation

{$R *.lfm}

{ TfrmStart }

procedure TfrmStart.ImgDriverClick(Sender: TObject);
begin
  frmDriverLogin.Show;
end;

procedure TfrmStart.ImgDispatcherClick(Sender: TObject);
begin
  frmDispatchLogin.Show;
end;

procedure TfrmStart.ImgPassengerClick(Sender: TObject);
begin
  frmMain.Show;
  frmStart.Hide;
end;

procedure TfrmStart.InfoClick(Sender: TObject);
begin
  frmInfo.Show;
end;

procedure TfrmStart.EscClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmStart.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TfrmStart.FormCreate(Sender: TObject);
begin
  Application.Initialize;
   Application.UpdateFormatSettings := False;
   DateSeparator := '-';
   ShortDateFormat := 'yyyy-mm-dd';
   ShortTimeFormat := 'hh:mm';
end;

procedure TfrmStart.HelpClick(Sender: TObject);
begin
  frmHelp.Show;
end;

procedure TfrmStart.PassengerClick(Sender: TObject);
begin
  frmMain.Show;
  frmStart.Hide;
end;

end.

