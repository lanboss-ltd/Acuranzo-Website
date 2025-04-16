unit UnitMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.WebCtrls;

type
  TForm1 = class(TWebForm)
    WebHTMLDiv1: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    WebHTMLDiv3: TWebHTMLDiv;
    WebHTMLDiv4: TWebHTMLDiv;
    WebButton1: TWebButton;
    WebButton2: TWebButton;
    WebLabel1: TWebLabel;
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
    btnEducation: TWebHTMLDiv;
    WebHTMLDiv6: TWebHTMLDiv;
    WebHTMLDiv7: TWebHTMLDiv;
    WebHTMLDiv8: TWebHTMLDiv;
    WebHTMLDiv9: TWebHTMLDiv;
    btnManagement: TWebHTMLDiv;
    WebHTMLDiv10: TWebHTMLDiv;
    WebHTMLDiv11: TWebHTMLDiv;
    WebHTMLDiv12: TWebHTMLDiv;
    WebHTMLDiv13: TWebHTMLDiv;
    btnAPI: TWebHTMLDiv;
    WebHTMLDiv14: TWebHTMLDiv;
    WebHTMLDiv15: TWebHTMLDiv;
    WebHTMLDiv16: TWebHTMLDiv;
    WebHTMLDiv17: TWebHTMLDiv;
    procedure btnManagementClick(Sender: TObject);
    procedure btnEducationClick(Sender: TObject);
    procedure btnAPIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEducationClick(Sender: TObject);
begin
  window.open('https://lms.lanbuzz.com', '_blank');
end;

procedure TForm1.btnManagementClick(Sender: TObject);
begin
  window.open('https://client.acuranzo.com', '_blank');
end;

procedure TForm1.btnAPIClick(Sender: TObject);
begin
  window.open('http://localhost:5000/apidocs/', '_blank');
end;

end.