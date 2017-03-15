program Taxi23CenturyFoxClient;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Main, lazcontrols, details, DataModule, start, graph, driver, dispatch,
  info
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmStart, frmStart);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmDetails, frmDetails);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDriver, frmDriver);
  Application.CreateForm(TfrmDispatch, frmDispatch);
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.Run;
end.

