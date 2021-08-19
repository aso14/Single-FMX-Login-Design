unit uSingleMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Edit, FMX.Ani, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.TabControl;

type
  TpPSingle_w = class(TForm)
    Single_Style: TStyleBook;
    Single_Tab: TTabControl;
    Single_Tab_login: TTabItem;
    LLeft: TLayout;
    Rectangle1: TRectangle;
    news: TLayout;
    news_infos: TTabControl;
    Info1: TTabItem;
    Label2: TLabel;
    Label1: TLabel;
    TabItem4: TTabItem;
    Label3: TLabel;
    Label4: TLabel;
    TabItem5: TTabItem;
    Label5: TLabel;
    Label6: TLabel;
    IndicatorNews: TFlowLayout;
    indicator1: TRectangle;
    indicator2: TRectangle;
    indicator3: TRectangle;
    Grid_Panel2: TImage;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    logoRs: TImage;
    ConnexPanel: TLayout;
    EditBox1: TRectangle;
    PanelIcon: TLayout;
    Image2: TImage;
    PanelEdit: TLayout;
    Edit1: TEdit;
    EditBox2: TRectangle;
    Layout1: TLayout;
    Image3: TImage;
    Layout2: TLayout;
    Edit2: TEdit;
    UserMessage: TLabel;
    BtnLogin: TRectangle;
    Label7: TLabel;
    ShadowEffect1: TShadowEffect;
    opacityanim: TFloatAnimation;
    Grid_Panel1: TImage;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  pPSingle_w: TpPSingle_w;
  TabIndx : integer = -1;  // Save news_infos tab index;

implementation

{$R *.fmx}

procedure TpPSingle_w.Timer1Timer(Sender: TObject);
begin
   inc(TabIndx);
  case TabIndx of
    0: news_infos.Next(TTabTransition.Slide,TTabTransitionDirection.Normal);
    1: news_infos.Next(TTabTransition.Slide,TTabTransitionDirection.Normal);

    2: begin
       news_infos.GotoVisibleTab(0,TTabTransition.Slide,TTabTransitionDirection.Reversed);
       TabIndx:=-1;
       end;

  end;
end;

end.
