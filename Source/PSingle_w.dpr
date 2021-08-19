program PSingle_w;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSingleMain in 'uSingleMain.pas' {pPSingle_w};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TpPSingle_w, pPSingle_w);
  Application.Run;
end.
