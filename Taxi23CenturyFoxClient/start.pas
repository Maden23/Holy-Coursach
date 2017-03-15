unit start;

{$mode objfpc}{$H+}

interface

uses
  dispatch, driver, Main, sqldb, Classes, SysUtils, FileUtil, Forms, Controls,
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
    Passenger: TButton;
    procedure DispatcherClick(Sender: TObject);
    procedure DriverClick(Sender: TObject);
    procedure ImgDispatcherClick(Sender: TObject);
    procedure ImgDriverClick(Sender: TObject);
    procedure ImgPassengerClick(Sender: TObject);
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

procedure TfrmStart.DispatcherClick(Sender: TObject);
begin

end;

procedure TfrmStart.DriverClick(Sender: TObject);
begin

end;

procedure TfrmStart.PassengerClick(Sender: TObject);
begin
  frmMain.Show;
  frmStart.Hide;
end;

end.

