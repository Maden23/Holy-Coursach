unit UIClient;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mssqlconn, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, DbCtrls;

type

  { TMainCustomerForm }

  TMainCustomerForm = class(TForm)
    StartAdressEdit: TEdit;
    FinishAdressEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainCustomerForm: TMainCustomerForm;

implementation

{$R *.lfm}

end.

