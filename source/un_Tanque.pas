unit un_Tanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, System.ImageList;

type
  TfrmTanque = class(TMD_Dialog)
    Label1: TLabel;
    tnq_codigo: TEdit;
    tnq_nome: TEdit;
    Label2: TLabel;
    tnq_codcmb: TButtonedEdit;
    Label3: TLabel;
    edCMB_NOME: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    tnq_etqmin: TMaskEdit;
    tnq_etqmax: TMaskEdit;
    Label6: TLabel;
    tnq_etqatu: TMaskEdit;
    Label7: TLabel;
    procedure tnq_codcmbExit(Sender: TObject);
protected
    Function  GetKeyField: String; override;
    Function  GetQueryKeyFiled: String;  override;
  end;

var
  frmTanque: TfrmTanque;

implementation

{$R *.dfm}

uses EditTuning, U_ClassConfig, Un_DmSistema, Un_Funcoes, Un_Principal,
  Un_ClassPesq;

function TfrmTanque.GetKeyField: String;
begin
  result := EmptyStr;
end;

function TfrmTanque.GetQueryKeyFiled: String;
begin
  result := EmptyStr;
end;

procedure TfrmTanque.tnq_codcmbExit(Sender: TObject);
begin
  inherited;
  cnsConsulta         := Tconsulta.Create(Self,dmSistema.cdsCombustivel, Sender );
  with cnsConsulta do Begin
       getRetorno( edCMB_NOME );
  End;
  FreeAndNil( cnsConsulta );
end;

end.
