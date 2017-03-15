unit start;

{$mode objfpc}{$H+}

interface

uses
  dispatch, driver, info, help, Main, sqldb, Classes, SysUtils, FileUtil, Forms, Controls,
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
    procedure BackgroundClick(Sender: TObject);
    procedure DispatcherClick(Sender: TObject);
    procedure DriverClick(Sender: TObject);
    procedure EscClick(Sender: TObject);
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
  frmDriver.show;
  frmStart.Hide;
end;

procedure TfrmStart.ImgDispatcherClick(Sender: TObject);
begin
  frmDispatch.Show;
  frmStart.Hide;
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

procedure TfrmStart.DispatcherClick(Sender: TObject);
begin

end;

procedure TfrmStart.BackgroundClick(Sender: TObject);
begin

end;

procedure TfrmStart.DriverClick(Sender: TObject);
begin

end;

procedure TfrmStart.EscClick(Sender: TObject);
begin
  Close;
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

