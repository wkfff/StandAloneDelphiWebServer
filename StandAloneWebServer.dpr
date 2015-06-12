program StandAloneWebServer;
{$APPTYPE GUI}



uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit in 'FormUnit.pas' {Form1},
  WebModuleUnit in 'WebModuleUnit.pas' {WebModule1: TWebModule},
  WebServerUnit in 'WebServerUnit.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
