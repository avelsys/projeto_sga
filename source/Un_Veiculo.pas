unit Un_Veiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, System.ImageList;

type
  TfrmVeiculo = class(TMD_Dialog)
    Label1: TLabel;
    VIC_CODFTA: TEdit;
    VIC_MARCA: TEdit;
    Label2: TLabel;
    vic_placa: TMaskEdit;
    Label6: TLabel;
    VIC_MODELO: TEdit;
    Label5: TLabel;
    VIC_ANO: TMaskEdit;
    Label9: TLabel;
    vic_codcmb: TButtonedEdit;
    Label3: TLabel;
    edCMB_NOME: TEdit;
    Label4: TLabel;
    procedure vic_codcmbExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    Function  GetKeyField:     String; override;
    Function  GetQueryKeyFiled: String; override;
  end;

var
  frmVeiculo: TfrmVeiculo;

implementation

{$R *.dfm}

uses EditTuning, U_ClassConfig, Un_ClassPesq, Un_DmSistema, Un_Funcoes;

function TfrmVeiculo.GetKeyField: String;
begin
  result := '';
end;

function TfrmVeiculo.GetQueryKeyFiled: String;
begin
  result := '';
end;

procedure TfrmVeiculo.vic_codcmbExit(Sender: TObject);
begin
  inherited;
  cnsConsulta         := Tconsulta.Create(Self,dmSistema.cdsCombustivel, Sender );
  with cnsConsulta do Begin
       getRetorno( edCMB_NOME );
  End;
  FreeAndNil( cnsConsulta );
end;

end.
