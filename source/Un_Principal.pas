unit Un_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

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
    procedure btnCombustivelExecute(Sender: TObject);
    procedure btnTanqueExecute(Sender: TObject);
    procedure btnSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses Un_DmSistema, Un_MDDialog, Un_Funcoes, Un_Combustivel;

procedure Tfrm_principal.btnCombustivelExecute(Sender: TObject);
begin
   frmCombustivel := TfrmCombustivel.Create(Self,Sender);
   frmCombustivel.Show;
end;

procedure Tfrm_principal.btnSairExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_principal.btnTanqueExecute(Sender: TObject);
begin
  ShowMessage('Cadastro de Tanques');
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
