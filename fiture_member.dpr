program fiture_member;

uses
  Forms,
  kustomer in 'kustomer.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
