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
    WebHTMLDiv3: TWebHTMLDiv;
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
    WebHTMLDiv2: TWebHTMLDiv;
    WebHTMLDiv1: TWebHTMLDiv;
    WebLabel1: TWebLabel;
    WebButton1: TWebButton;
    WebButton2: TWebButton;
    procedure divManagementClick(Sender: TObject);
    procedure divEducationClick(Sender: TObject);
    procedure divAPIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.divEducationClick(Sender: TObject);
begin
  window.open('https://lms.lanbuzz.com', '_blank');
end;

procedure TForm1.divManagementClick(Sender: TObject);
begin
  window.open('https://client.acuranzo.com', '_blank');
end;

procedure TForm1.divAPIClick(Sender: TObject);
begin
  window.open('http://localhost:5000/apidocs/', '_blank');
end;

end.