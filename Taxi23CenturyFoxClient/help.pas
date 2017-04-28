unit help;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TfrmHelp }

  TfrmHelp = class(TForm)
    Background: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PreviewText: TStaticText;
    LispText: TStaticText;
    DriverText: TStaticText;
    DispatcherText: TStaticText;
    PassengerText: TStaticText;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmHelp: TfrmHelp;

implementation
  uses
    start;
{$R *.lfm}

  { TfrmHelp }

procedure TfrmHelp.FormShow(Sender: TObject);
  begin
    LispText.Hide;
    DriverText.Hide;
    DispatcherText.Hide;
    PassengerText.Hide;
    PreviewText.Show;
  end;

procedure TfrmHelp.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
    LispText.Hide;
    DriverText.Hide;
    DispatcherText.Hide;
    PassengerText.Hide;
    PreviewText.Show;
end;

//Режим "Водитель"

procedure TfrmHelp.Label1Click(Sender: TObject);
begin
    PreviewText.Hide;
    LispText.Hide;
    DispatcherText.Hide;
    PassengerText.Hide;
    DriverText.Show;
end;

//Режим "Диспетчер"

procedure TfrmHelp.Label2Click(Sender: TObject);
begin
    PreviewText.Hide;
    LispText.Hide;
    DriverText.Hide;
    PassengerText.Hide;
    DispatcherText.Show;
end;

//Режим "Пассажир"

procedure TfrmHelp.Label3Click(Sender: TObject);
begin
    PreviewText.Hide;
    LispText.Hide;
    DriverText.Hide;
    DispatcherText.Hide;
    PassengerText.Show;
end;

//История Лиспа

procedure TfrmHelp.Label4Click(Sender: TObject);
  begin
    PreviewText.Hide;
    DriverText.Hide;
    DispatcherText.Hide;
    PassengerText.Hide;
    LispText.Show;
  end;

end.

