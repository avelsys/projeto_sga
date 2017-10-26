unit Un_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ImgList,
  Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Buttons;

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

uses Un_DmSistema, Un_MDDialog, Un_Funcoes;

procedure Tfrm_principal.btnCombustivelExecute(Sender: TObject);
begin
   MD_Dialog := TMD_Dialog.Create(Self);
   MD_Dialog.Show;
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
