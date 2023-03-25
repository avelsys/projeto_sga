unit Un_Bomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, System.ImageList;

type
  TfrmBomba = class(TMD_Dialog)
    Label1: TLabel;
    bmb_codigo: TEdit;
    bmb_nome: TEdit;
    Label2: TLabel;
    bmb_codtnq: TButtonedEdit;
    Label3: TLabel;
    edTNQ_NOME: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    CMB_VLRLIT: TMaskEdit;
    tnq_etqatu: TMaskEdit;
    Label7: TLabel;
    edCMB_NOME: TEdit;
    Label8: TLabel;
    procedure bmb_codtnqExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    Function  GetKeyField:     String; override;
    Function  GetQueryKeyFiled: String; override;
  end;

var
  frmBomba: TfrmBomba;

implementation

{$R *.dfm}

uses EditTuning, U_ClassConfig, Un_ClassPesq, Un_DmSistema, Un_Funcoes;

procedure TfrmBomba.bmb_codtnqExit(Sender: TObject);
begin
  inherited;
  cnsConsulta         := Tconsulta.Create(Self,dmSistema.cdsTanque, Sender );
  with cnsConsulta do Begin
       getRetorno( edTNQ_NOME   );
       getRetorno( edCMB_NOME   );
       getRetorno( CMB_VLRLIT );
       getRetorno( TNQ_ETQATU );
  End;
  FreeAndNil( cnsConsulta );

end;

function TfrmBomba.GetKeyField: String;
begin
  result := '';
end;

function TfrmBomba.GetQueryKeyFiled: String;
begin
  result := '';
end;

end.
