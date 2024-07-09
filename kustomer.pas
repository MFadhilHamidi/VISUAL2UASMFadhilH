unit kustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, Buttons,
  frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    Label8: TLabel;
    edt6: TEdit;
    Label9: TLabel;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    btn6: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    btn7: TBitBtn;
    edt7: TEdit;
    edt8: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure posisiawal;
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure Tform1.posisiawal;
begin
      btn5.Enabled:= True;
      btn1.Enabled:= True;
      btn2.Enabled:= False;
      btn3.Enabled:= False;
      btn4.Enabled:= False;
      cbb1.Enabled:= False;
      edt1.clear;
      edt2.clear;
      edt3.clear;
      edt4.clear;
      edt5.clear;
      edt1.Enabled:= False;
      edt2.Enabled:= False;
      edt3.Enabled:= False;
      edt4.Enabled:= False;
      edt5.Enabled:= False;
      cbb1.Enabled:= False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  btn5.Enabled:= True;
      btn1.Enabled:= False;
      btn2.Enabled:= True;
      btn4.Enabled:= True;
      btn3.Enabled:= True;
      edt1.clear;
      edt2.clear;
      edt3.clear;
      edt4.clear;
      edt5.clear;
      edt1.Enabled:= Enabled;
      edt2.Enabled:= Enabled;
      edt3.Enabled:= Enabled;
      edt4.Enabled:= Enabled;
      edt5.Enabled:= Enabled;
      cbb1.Enabled:= Enabled;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if cbb1.ItemIndex = 0 then
  begin
    cbb1.Text :='5%';
    Label8.Caption :='DISKON : 5%';
  end
  else
  if cbb1.ItemIndex = 1 then
  begin
    cbb1.Text :='10%';
     Label8.Caption :='DISKON : 10%';
  end;
with zqry1 do
  begin
    SQL.Clear;
    SQL.Add('insert into kustomer (nik, nama, telp, email, alamat, member)');
    SQL.Add('values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+cbb1.Text+'")');
    ExecSQL;
    SQL.Text:='select*from kustomer';
    Open;
    ShowMessage('Data Berhasil Di isi!');
  end;
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;


procedure TForm1.btn4Click(Sender: TObject);
begin
zqry1.Delete;
ShowMessage('Data Berhasil Di Hapus!');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if cbb1.ItemIndex = 0 then
  begin
    cbb1.Text :='5%';
    Label8.Caption :='DISKON : 5%';
  end
  else
  if cbb1.ItemIndex = 1 then
  begin
    cbb1.Text :='10%';
     Label8.Caption :='DISKON : 10%';
  end;
 with zqry1 do
  begin
    Edit;
    FieldByName('nik').AsString:=edt1.Text;
    FieldByName('nama').AsString:=edt2.Text;
    FieldByName('telp').AsString:=edt3.Text;
    FieldByName('email').AsString:=edt4.Text;
    FieldByName('alamat').AsString:=edt5.Text;
    FieldByName('member').AsString:=cbb1.Text;
    post;
    ShowMessage('Data Berhasil Di Update!');
  end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

end.
