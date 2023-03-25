unit un_Posto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, System.ImageList;

type
  TfrmPosto = class(TMD_Dialog)
    Label1: TLabel;
    pst_codigo: TEdit;
    pst_nome: TEdit;
    Label2: TLabel;
    pst_endereco: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    pst_cnpj: TMaskEdit;
    pst_bairro: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    pst_cidade: TEdit;
    Label8: TLabel;
    pst_estado: TEdit;
    Label3: TLabel;
    pst_cep: TMaskEdit;
    Label9: TLabel;
    pst_telefone: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    Function  GetKeyField:     String; override;
    Function  GetQueryKeyFiled: String; override;
  end;

var
  frmPosto: TfrmPosto;

implementation

{$R *.dfm}

uses EditTuning, U_ClassConfig, Un_DmSistema, Un_Funcoes, Un_Principal;

{ TfrmPosto }

function TfrmPosto.GetKeyField: String;
begin
  result := '';
end;

function TfrmPosto.GetQueryKeyFiled: String;
begin
  result := '';
end;

end.
