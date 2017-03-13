unit details;

{$mode objfpc}{$H+}

interface

uses
  DataModule, Classes, SysUtils, sqldb, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls;

type

  { TfrmDetails }

  TfrmDetails = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    OrderQuery: TSQLQuery;
    Panel1: TPanel;
    DataQuery: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmDetails: TfrmDetails;

implementation

uses
  Main, Start;

{$R *.lfm}

{ TfrmDetails }

function BoolToInt (Bool: boolean): integer;
begin
  if Bool = false then
     result := 0
  else
     result := 1;
end;

procedure TfrmDetails.FormShow(Sender: TObject);
begin
  Label8.Caption := frmMain.DBLookupComboBox1.Text;
  Label9.Caption := frmMain.DBLookupComboBox2.Text;
  Label10.Caption := frmMain.TimeEdit.Text;
  if (frmMain.WideTrunk.Checked = true)
     and (frmMain.BabySeat.Checked = true) then
         Label11.Caption := 'Большой багажник, детское кресло'
  else
      begin
           if frmMain.WideTrunk.Checked = true then
               Label11.Caption := 'Большой багажник'
           else if frmMain.BabySeat.Checked = true then
               Label11.Caption := 'Детское кресло'
           else
               Label11.Caption := 'Нет';
      end;
  Label12.Caption := InttoStr(frmMain.ComfortRate.Position);
  Label13.Caption := InttoStr(frmMain.Passengers.Position);
end;

procedure TfrmDetails.Button1Click(Sender: TObject);
begin
  try
     DataModule1.Connection.Open;
     DataModule1.SQLTransaction1.Active := True;
  except
     ShowMessage ('Ошибка подключения к базе данных!');
  end;
  with OrderQuery do
       begin
            Open;
            Insert;
            Fields[1].AsDatetime := Now;
            Fields[2].AsInteger := frmMain.DBLookupComboBox1.KeyValue;;
            Fields[3].AsInteger := frmMain.DBLookupComboBox1.KeyValue;;
            Fields[4].AsDatetime := frmMain.TimeEdit.Time ;
            Fields[5].AsInteger := frmMain.ComfortRate.Position;
            Fields[6].AsInteger := frmMain.Passengers.Position;
            Fields[7].AsInteger := BoolToInt(frmMain.WideTrunk.Checked);
            Fields[8].AsInteger := BoolToInt(frmMain.BabySeat.Checked);
            try
               Post;
               ApplyUpdates;
               DataModule1.SQLTransaction1.Commit;
            except
               ShowMessage('Запрос не выполнен!');
            end;

       end;
  Close;
  frmStart.Show;
end;

end.

