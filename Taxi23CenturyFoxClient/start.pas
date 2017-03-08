unit start;

{$mode objfpc}{$H+}

interface

uses
  Main, Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmStart }

  TfrmStart = class(TForm)
    Driver: TButton;
    Beast: TButton;
    Passenger: TButton;
    ExcuseMeSir: TLabel;
    procedure DriverClick(Sender: TObject);
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

procedure TfrmStart.PassengerClick(Sender: TObject);
begin
  frmMain.Show;
  frmStart.Hide;
end;

end.

