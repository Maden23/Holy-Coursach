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
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure FormShow(Sender: TObject);
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
    StaticText2.Hide;
  end;

  procedure TfrmHelp.Label4Click(Sender: TObject);
  begin
    StaticText1.Hide;
    StaticText2.Show;
  end;

end.

