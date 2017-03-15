unit info;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmInfo }

  TfrmInfo = class(TForm)
    HSE: TImage;
    MIEM: TImage;
    firstAuthor: TLabel;
    Label10: TLabel;
    secondAuthor: TLabel;
    firstMail: TLabel;
    secondMail: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
  procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmInfo: TfrmInfo;

implementation
  uses
    start;
{$R *.lfm}

procedure TfrmInfo.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
    frmStart.Show;
end;

end.

