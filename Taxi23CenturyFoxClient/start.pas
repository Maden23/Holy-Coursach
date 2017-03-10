unit start;

{$mode objfpc}{$H+}

interface

uses
  Main, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls;

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

procedure TfrmStart.DriverClick(Sender: TObject);
begin

end;

procedure TfrmStart.ImgDispatcherClick(Sender: TObject);
begin

end;

procedure TfrmStart.ImgPassengerClick(Sender: TObject);
begin
  frmMain.Show;
  frmStart.Hide;
end;

procedure TfrmStart.DispatcherClick(Sender: TObject);
begin

end;

procedure TfrmStart.PassengerClick(Sender: TObject);
begin
  frmMain.Show;
  frmStart.Hide;
end;

end.

