unit UnitMain;

interface

uses
  System.SysUtils,
  System.Classes,
  System.DateUtils,

  JSDelphiSystem,
  JS,
  Web,

  XData.Web.Connection,
  XData.Web.Client,

  WEBLib.REST,
  WEBLib.JSON,
  WEBLib.Storage,
  WEBLib.Modules,

  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  Vcl.Controls,
  Vcl.StdCtrls,
  WEBLib.StdCtrls,
  WEBLib.WebCtrls, WEBLib.ExtCtrls;

type
  TForm1 = class(TWebForm)
    divMargin: TWebHTMLDiv;
    divMain: TWebHTMLDiv;
    divBottom: TWebHTMLDiv;
    divEducation: TWebHTMLDiv;
    divEduIcon: TWebHTMLDiv;
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
    divDemo: TWebHTMLDiv;
    divTop: TWebHTMLDiv;
    btnLogin: TWebButton;
    btnRegister: TWebButton;
    divLanboss: TWebHTMLDiv;
    divDemos: TWebHTMLDiv;
    btnLogout: TWebButton;
    divCaption: TWebHTMLDiv;
    XDataConn: TXDataWebConnection;
    tmrStartup: TWebTimer;
    WebHttpRequest1: TWebHttpRequest;
    divDemoContainer: TWebHTMLDiv;
    divDemoBorder: TWebHTMLDiv;
    divCurtains: TWebHTMLDiv;
    diviFrame: TWebHTMLDiv;
    procedure divManagementClick(Sender: TObject);
    procedure divEducationClick(Sender: TObject);
    procedure divAPIClick(Sender: TObject);
    procedure divLanbossClick(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    [async] procedure WebFormCreate(Sender: TObject);
    [async] procedure GetConfiguration;
    [async] procedure GetServerInfo;
    [async] function JSONRequest(Endpoint: String; Params: array of JSValue; Info: String): String;
    [async] procedure XDataConnect;
    [async] procedure tmrStartupTimer(Sender: TObject);
    [async] procedure btnDemoClick(demoid: String);
    [async] procedure LoadDemos;
  private
    { Private declarations }
  public
    { Public declarations }

    APP_ServerURL: String;  // REST API Server (XData or Hydrogen typically)
    APP_Timezone: String;   // Local timezone provided by the browser
    APP_URL_Edu: String;    // Link to use for Edu Button
    APP_URL_Mgt: String;    // Link to use for Mgt Button
    APP_URL_API: String;    // Link to use for API Button

    APP_Mode: String;  // Inline, New Page, Float

    XDataConnected: Boolean;
  end;

var
  Form1: TForm1;



implementation

uses UnitInteractJS;

{$R *.dfm}

procedure TForm1.WebFormCreate(Sender: TObject);
begin
  InteractJS.InitializeInteractJS;
  XDataConnected := False;

  {$IFNDEF WIN32 } asm {
    window.sleep = async function(msecs) { return new Promise((resolve) => setTimeout(resolve, parseInt(msecs) || 1000)); }
    window.Lookups = [];
  } end; {$ENDIF}

  tmrStartup.Enabled := True;
end;

procedure TForm1.divEducationClick(Sender: TObject);
begin
  if (APP_URL_Edu <> '')
  then window.open(APP_URL_Edu, '_blank');
end;

procedure TForm1.divManagementClick(Sender: TObject);
begin
  if (APP_URL_Mgt <> '')
  then window.open(APP_URL_Mgt, '_blank');
end;

procedure TForm1.divAPIClick(Sender: TObject);
begin
  if (APP_URL_API <> '')
  then window.open(APP_URL_API, '_blank');
end;

procedure TForm1.divLanbossClick(Sender: TObject);
begin
  window.open('https://www.lanboss.com', '_blank');
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

procedure TForm1.btnDemoClick(demoid: String);
begin
  {$IFNDEF WIN32 } asm {
    divCurtains.style.setProperty('height','100%','important');

    console.log(demoid);
    var demos = document.querySelectorAll('.btnDemo');
    for (var i = 0; i < demos.length; i++) {
      demos[i].classList.remove('selected');
    }

    var demo = document.getElementById(demoid);
    demo.classList.add('selected');

    await window.sleep(500);
    divCurtains.style.setProperty('height','0%','important');
  } end; {$ENDIF}

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

procedure TForm1.GetServerInfo;
var
  ResponseString: String;
  ConnDelay: TDateTime;
  ConnWait: Integer;
begin
  // Load up Basic info from the server
  ResponseString := await(JSONRequest('ISystemService.Info',[APP_Timezone], ''));

  {$IFNDEF WIN32 } asm {
    var data = JSON.parse(ResponseString);

    // Normally Lookups are protected but here we're getting them
    // through a backdoor of sorts. Might have to revisit this later.

    function getLookup(lnumber, lname) {
      Lookups[lnumber] = data[lname];
      if (Lookups[lnumber] == undefined) {
        Lookups[lnumber] = [];
      } else {
        // Try and convert any collection content into actual JSON
        for (var i = 0; i < Lookups[lnumber].length; i++) {
          if (Lookups[lnumber][i].collection) {
            try {
              var jsonstring = decodeURIComponent(Lookups[lnumber][i].collection);
              Lookups[lnumber][i].collection = JSON.parse(jsonstring);
            } catch {
            }
          }
        }
      }
    }

    getLookup(38, 'ChatEngines');

  } end; {$ENDIF}
end;

function TForm1.JSONRequest(Endpoint: String; Params: array of JSValue; Info: String): String;
var
  ClientConn: TXDataWebClient;
  Response: TXDataClientResponse;
  Blob: JSValue;
  ErrorCode: String;
  ErrorMessage: String;
  Elapsed: TDateTime;
  LogInfo: String;
begin
  Elapsed := Now;
  Result := '';

  if not(XDataConnected)
  then await(XDataConnect);

  if (XDataConnected) then
  begin
    try
      ClientConn := TXDataWebClient.Create(nil);
      ClientConn.Connection := XDataConn;
      Response := await(ClientConn.RawInvokeAsync(Endpoint, Params));

      Blob := Response.Result;
      {$IFNDEF WIN32 } asm {
        Result = await Blob.text();
      } end; {$ENDIF}

    except on E: Exception do
      begin
        // Get the error message we created in XData
        {$IFNDEF WIN32 } asm {
          var ErrorDetail = JSON.parse( await E.FErrorResult.FResponse.$o.FXhr.response.text() );
          ErrorCode = ErrorDetail.error.code;
          ErrorMessage = ErrorDetail.error.message;
        } end; {$ENDIF}

        // Log the error, but leave out the URI (because it includes the password)

        console.log('ERROR: Request Exception Received From '+Endpoint);
        console.log(' -- EXCEPTION: '+E.ClassName);
        console.log(' -- '+Copy(E.Message,1,Pos('Uri:',E.Message)-2));
        console.log(' -- '+Copy(E.Message,Pos('Status code:',E.Message),16));
        console.log(' -- '+ErrorCode);
        console.log(' -- '+ErrorMessage);
        console.log(' -- INFO: '+LogInfo);
      end;
    end;
  end;
end;

procedure TForm1.tmrStartupTimer(Sender: TObject);
begin
  tmrStartup.Enabled := False;
  Await(GetConfiguration);
  Await(GetServerInfo);
  Await(LoadDemos);
end;

procedure TForm1.XDataConnect;
var
  ElapsedTime: TDateTime;
begin
  ElapsedTime := Now;

  if not(XDataConnected) then
  begin

    // Should be updated to point at our XData server, wherever it may be
    if Pos('localhost', APP_ServerURL) <> Pos('localhost', window.location.origin) then
    begin
      XDataConn.URL := StringReplace(APP_ServerURL, 'localhost', Copy(window.location.host, 1, Pos(':',window.location.host)-1),[]);
    end
    else
    begin
      XDataConn.URL := APP_ServerURL;
    end;

    // Try and establish a connection to the server
    try
      await(XDataConn.OpenAsync);
      XDataConnected := True;
    except on E: Exception do
      begin
        XDataConnected := False;
      end;
    end;
  end;
end;

procedure TForm1.GetConfiguration;
var
  ConfigResponse: TJSXMLHttpRequest;
  ConfigData: TJSONObject;
  ConfigURL: String;
begin

  // Figure out what our server connection might be
  APP_ServerURL := '';

  {$IFNDEF WIN32 } asm {
    this.APP_Timezone = Intl.DateTimeFormat().resolvedOptions().timeZone;
  } end; {$ENDIF}

  try
    // This is about trying to find the appropriate URL in the different prod/dev/test environments
    {$IFNDEF WIN32 } asm {
      ConfigURL = window.location.origin+(window.location.pathname.split('/').slice(0,-1).join('/')+'/demo_configuration.json').replace('/\/\//g','/');
    } end; {$ENDIF}

    // Try and load the configuration file from the server
    WebHTTPRequest1.URL := ConfigURL;
    ConfigResponse := await( TJSXMLHttpRequest, WebHTTPRequest1.Perform() );

    // If we've got one, parse it to get what we need from it
    // We're deliberately not doing a ton of error checking here
    if String(ConfigResponse.Response) <> '' then
    begin
      ConfigData := TJSONObject.ParseJSONValue(String(ConfigResponse.Response)) as TJSONObject;

      // Get Server URL - Presumably if we've got a config file, this is defined
      APP_ServerURL := (ConfigData.GetValue('Server') as TJSONString).Value;

      // Page title
      document.title := (ConfigData.GetValue('Title') as TJSONString).Value;
      divCaption.HTML.Text := '<div>'+document.title+'</div>';

      // Education Button
      divEduTopCaption.HTML.Text := ((ConfigData.GetValue('Education') as TJSONObject).GetValue('Title') as TJSONString).Value;
      divEduBotCaption.HTML.Text := ((ConfigData.GetValue('Education') as TJSONObject).GetValue('SubTitle') as TJSONString).Value;
      divEduIcon.HTML.Text       := ((ConfigData.GetValue('Education') as TJSONObject).GetValue('Icon') as TJSONString).Value;
      APP_URL_Edu                := ((ConfigData.GetValue('Education') as TJSONObject).GetValue('Link') as TJSONString).Value;
      divEducation.Visible       := ((ConfigData.GetValue('Education') as TJSONObject).GetValue('Enabled') as TJSONBool).AsBoolean;

      // Management Button Button
      divMgtTopCaption.HTML.Text := ((ConfigData.GetValue('Management') as TJSONObject).GetValue('Title') as TJSONString).Value;
      divMgtBotCaption.HTML.Text := ((ConfigData.GetValue('Management') as TJSONObject).GetValue('SubTitle') as TJSONString).Value;
      divMgtIcon.HTML.Text       := ((ConfigData.GetValue('Management') as TJSONObject).GetValue('Icon') as TJSONString).Value;
      APP_URL_Mgt                := ((ConfigData.GetValue('Management') as TJSONObject).GetValue('Link') as TJSONString).Value;
      divManagement.Visible      := ((ConfigData.GetValue('Management') as TJSONObject).GetValue('Enabled') as TJSONBool).AsBoolean;

      // API Button
      divAPITopCaption.HTML.Text := ((ConfigData.GetValue('API') as TJSONObject).GetValue('Title') as TJSONString).Value;
      divAPIBotCaption.HTML.Text := ((ConfigData.GetValue('API') as TJSONObject).GetValue('SubTitle') as TJSONString).Value;
      divAPIIcon.HTML.Text       := ((ConfigData.GetValue('API') as TJSONObject).GetValue('Icon') as TJSONString).Value;
      APP_URL_API                := ((ConfigData.GetValue('API') as TJSONObject).GetValue('Link') as TJSONString).Value;
      divAPI.Visible             := ((ConfigData.GetValue('API') as TJSONObject).GetValue('Enabled') as TJSONBool).AsBoolean;


    end;
  except on E: Exception do
    begin
    end
  end;

  // We don't need the config file anymore
  ConfigData.Free;
end;


procedure TForm1.LoadDemos;
begin

  {$IFNDEF WIN32 } asm {

    divDemos.replaceChildren();
    for (var i = 0; i < Lookups[38].length; i++) {

      if (Lookups[38][i].collection.Demo) {
        if (Lookups[38][i].collection.Demo.Enabled) {
          var model = Lookups[38][i].collection;
          var demo = Lookups[38][i].collection.Demo;
          var btn = document.createElement('div');

          btn.id = 'demo'+i;
          btn.classList.add('btnDemo');
          btn.classList.add('order-'+demo.Order);
          btn.innerHTML = model.Icon+'<div class="caption"><div class="caption-top">'+demo.Title+'</div><div class="caption-bottom">'+demo.SubTitle+'</div></div>';
          btn.addEventListener('click',function(e){pas.UnitMain.Form1.btnDemoClick(e.target.id); e.stopPropagation;});
          divDemos.appendChild(btn);
        }
      }
    }


  } end; {$ENDIF}

end;

end.