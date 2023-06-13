unit Un_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, System.ImageList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit;

type
  Tfrm_principal = class(TForm)
    mnPrincipal: TMainMenu;
    StatusBar1: TStatusBar;
    rquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimento1: TMenuItem;
    Relatrio1: TMenuItem;
    ToolBar1: TToolBar;
    imlPrincipal: TImageList;
    aclPrincipal: TActionList;
    btnCombustivel: TAction;
    Combustvel1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnTanque: TAction;
    anque1: TMenuItem;
    btnSair: TAction;
    ToolButton1: TToolButton;
    SpeedButton3: TSpeedButton;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    btnPosto: TAction;
    Posto1: TMenuItem;
    SpeedButton5: TSpeedButton;
    imlSecundario: TImageList;
    btnBomba: TAction;
    SpeedButton6: TSpeedButton;
    btnVeiculo: TAction;
    Veculo1: TMenuItem;
    N2: TMenuItem;
    Bomba1: TMenuItem;
    btnAbastece: TAction;
    ToolButton2: TToolButton;
    SpeedButton7: TSpeedButton;
    Abastecer1: TMenuItem;
    btnRelAbastece: TAction;
    RelatriodeAbastecimentoporData1: TMenuItem;
    cxTextEdit1: TcxTextEdit;
    procedure btnCombustivelExecute(Sender: TObject);
    procedure btnTanqueExecute(Sender: TObject);
    procedure btnSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPostoExecute(Sender: TObject);
    procedure btnBombaExecute(Sender: TObject);
    procedure btnVeiculoExecute(Sender: TObject);
    procedure btnAbasteceExecute(Sender: TObject);
    procedure btnRelAbasteceExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses Un_DmSistema, Un_MDDialog, Un_Funcoes, Un_Combustivel, un_Posto, un_Tanque,
  Un_Bomba, Un_Veiculo, Un_Abastece, Un_RelAbastece;

procedure Tfrm_principal.btnAbasteceExecute(Sender: TObject);
begin
   frmAbastece := TfrmAbastece.Create(Self,Sender);
   frmAbastece.Show;
end;

procedure Tfrm_principal.btnBombaExecute(Sender: TObject);
begin
   frmBomba := TfrmBomba.Create(Self,Sender);
   frmBomba.Show;
end;

procedure Tfrm_principal.btnCombustivelExecute(Sender: TObject);
begin
   frmCombustivel := TfrmCombustivel.Create(Self,Sender);
   frmCombustivel.Show;
end;


procedure Tfrm_principal.btnPostoExecute(Sender: TObject);
begin
   frmPosto := TfrmPosto.Create(Self,Sender);
   frmPosto.Show;

end;

procedure Tfrm_principal.btnRelAbasteceExecute(Sender: TObject);
begin
   frmRelAbastece := TfrmRelAbastece.Create(Self);
   frmRelAbastece.Show;
end;

procedure Tfrm_principal.btnSairExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_principal.btnTanqueExecute(Sender: TObject);
begin
   frmTanque := TfrmTanque.Create(Self,Sender);
   frmTanque.Show;
end;

procedure Tfrm_principal.btnVeiculoExecute(Sender: TObject);
begin
   frmVeiculo := TfrmVeiculo.Create(Self,Sender);
   frmVeiculo.Show;
end;

procedure Tfrm_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if ( Application.MessageBox('Deseja Sair?','Aviso',36)=6) then begin
     dmSistema.fdConecta.Close;
     Application.Terminate;
 End else
     Abort;


end;

end.
