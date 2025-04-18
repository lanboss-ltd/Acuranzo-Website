program Acuranzo;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  UnitMain in 'UnitMain.pas' {Form1: TWebForm} {*.html},
  UnitInteractJS in 'UnitInteractJS.pas' {InteractJS: TWebDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TInteractJS, InteractJS);
  Application.Run;
end.
