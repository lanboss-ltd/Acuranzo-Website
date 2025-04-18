unit UnitMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.WebCtrls;

type
  TForm1 = class(TWebForm)
    divMargin: TWebHTMLDiv;
    divMain: TWebHTMLDiv;
    divBottom: TWebHTMLDiv;
    divEducation: TWebHTMLDiv;
    divEduImage: TWebHTMLDiv;
    divEduBackground: TWebHTMLDiv;
    divEduTop: TWebHTMLDiv;
    divEduTopCaption: TWebHTMLDiv;
    divEduTopIcon: TWebHTMLDiv;
    divEduBot: TWebHTMLDiv;
    divEduBotCaption: TWebHTMLDiv;
    divEduBotIcon: TWebHTMLDiv;
    divManagement: TWebHTMLDiv;
    divMgtIcon: TWebHTMLDiv;
    divMgtBackground: TWebHTMLDiv;
    divMgtTop: TWebHTMLDiv;
    divMgtTopCaption: TWebHTMLDiv;
    divMgtTopIcon: TWebHTMLDiv;
    divMgtBot: TWebHTMLDiv;
    divMgtBotCaption: TWebHTMLDiv;
    divMgtBotIcon: TWebHTMLDiv;
    divAPI: TWebHTMLDiv;
    divAPIIcon: TWebHTMLDiv;
    divAPIBackground: TWebHTMLDiv;
    divAPITop: TWebHTMLDiv;
    divAPITopCaption: TWebHTMLDiv;
    divAPITopIcon: TWebHTMLDiv;
    divAPIBot: TWebHTMLDiv;
    divAPIBotCaption: TWebHTMLDiv;
    divAPIBotIcon: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    divTop: TWebHTMLDiv;
    btnLogin: TWebButton;
    btnRegister: TWebButton;
    divLanboss: TWebHTMLDiv;
    divDemoButtons: TWebHTMLDiv;
    WebButton6: TWebButton;
    WebButton7: TWebButton;
    WebButton8: TWebButton;
    WebButton9: TWebButton;
    WebButton10: TWebButton;
    WebButton11: TWebButton;
    WebButton12: TWebButton;
    WebButton13: TWebButton;
    WebButton14: TWebButton;
    WebButton15: TWebButton;
    btnLogout: TWebButton;
    divCaption: TWebHTMLDiv;
    procedure divManagementClick(Sender: TObject);
    procedure divEducationClick(Sender: TObject);
    procedure divAPIClick(Sender: TObject);
    procedure divLanbossClick(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses UnitInteractJS;

{$R *.dfm}

procedure TForm1.divEducationClick(Sender: TObject);
begin
  window.open('https://lms.lanbuzz.com', '_blank');
end;

procedure TForm1.divLanbossClick(Sender: TObject);
begin
  window.open('https://www.lanboss.com', '_blank');
end;

procedure TForm1.divManagementClick(Sender: TObject);
begin
  window.open('https://client.acuranzo.com', '_blank');
end;

procedure TForm1.WebFormCreate(Sender: TObject);
begin
  InteractJS.InitializeInteractJS;

end;

procedure TForm1.WebFormResize(Sender: TObject);
begin

  asm
    var pw = divMain.offsetWidth;  // parent width
    var sw = 292;

    if (pw > 849)
      { sw = 816 }
    else if (pw > 606)
      { sw = 554 }

    divDemos.style.setProperty('max-width', sw+'px');
  end;
end;

procedure TForm1.btnLoginClick(Sender: TObject);
begin
  btnLogin.Visible := False;
  btnRegister.Visible := False;
  btnLogout.Visible := True;
end;

procedure TForm1.btnLogoutClick(Sender: TObject);
begin
  btnLogin.Visible := True;
  btnRegister.Visible := True;
  btnLogout.Visible := False;

end;

procedure TForm1.btnRegisterClick(Sender: TObject);
begin
  btnLogin.Visible := False;
  btnRegister.Visible := False;
  btnLogout.Visible := True;
end;

procedure TForm1.divAPIClick(Sender: TObject);
begin
  window.open('http://localhost:5000/apidocs/', '_blank');
end;

end.