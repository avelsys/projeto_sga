unit Un_Abastece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Un_Funcoes;

type
  TfrmAbastece = class(TMD_Dialog)
    Label1: TLabel;
    aba_codigo: TEdit;
    aba_codbmb: TButtonedEdit;
    Label3: TLabel;
    edBMB_NOME: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ABA_VLRLIT: TMaskEdit;
    ABA_QTDLIT: TMaskEdit;
    Label7: TLabel;
    edCMB_NOME: TEdit;
    Label8: TLabel;
    aba_codplc: TButtonedEdit;
    Label6: TLabel;
    edVIC_MODELO: TEdit;
    Label9: TLabel;
    aba_databa: TDateTimePicker;
    Label2: TLabel;
    aba_horaba: TDateTimePicker;
    Label10: TLabel;
    edTNQ_NOME: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    ABA_PCTACM: TMaskEdit;
    ABA_VLRTOT: TMaskEdit;
    Label13: TLabel;
    ABA_CODCMB: TEdit;
    procedure btnNovoExecute(Sender: TObject);
    procedure btnEditarExecute(Sender: TObject);
    procedure ABA_VLRLITChange(Sender: TObject);
    procedure ABA_PCTACMChange(Sender: TObject);
    procedure ABA_QTDLITChange(Sender: TObject);
    procedure aba_codplcExit(Sender: TObject);
    procedure aba_codbmbExit(Sender: TObject);
    procedure ABA_VLRTOTKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Calculo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastece: TfrmAbastece;

implementation

{$R *.dfm}

uses EditTuning, U_ClassConfig, Un_ClassPesq, Un_DmSistema, un_ClassCalculo;

procedure TfrmAbastece.aba_codbmbExit(Sender: TObject);
begin
  inherited;
  cnsConsulta         := Tconsulta.Create(Self,dmSistema.cdsBomba, Sender );
  with cnsConsulta do Begin
       getRetorno( edBMB_NOME );
       getRetorno( edTNQ_NOME );
       ABA_VLRLIT.Text := FormatCurr('R$ #,##0.000', dmSistema.cdsBomba.FieldByName('cmb_vlrlit').AsFloat );
  End;
  FreeAndNil( cnsConsulta );
end;

procedure TfrmAbastece.aba_codplcExit(Sender: TObject);
begin
  inherited;
  cnsConsulta         := Tconsulta.Create(Self,dmSistema.cdsVeiculo, Sender );
  with cnsConsulta do Begin
       getRetorno( edVIC_MODELO );
       getRetorno( edCMB_NOME   );
       ABA_CODCMB.Text := dmSistema.cdsVeiculo.FieldByName('vic_codcmb').AsString ;
  End;
  FreeAndNil( cnsConsulta );
end;

procedure TfrmAbastece.ABA_PCTACMChange(Sender: TObject);
begin
  inherited;
  Calculo;
end;

procedure TfrmAbastece.ABA_QTDLITChange(Sender: TObject);
begin
  inherited;
  Calculo;
end;

procedure TfrmAbastece.ABA_VLRLITChange(Sender: TObject);
Var
Calc : TCalculoABa;
begin
  inherited;
  Calc := TCalculoABa.GetInstance();
  With Calc do Begin
       ValorLitro     := FormataNum( ABA_VLRLIT.Text );
       Qtdade         := FormataNum( ABA_QTDLIT.Text );
       Acrescimo      := FormataNum( ABA_PCTACM.Text );
       ExecCalc;
       ABA_VLRTOT.Text:= FormatCurr('R$ ###,##0.000', ValorTotal ) ;
  End;

end;

procedure TfrmAbastece.ABA_VLRTOTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  {}
end;

procedure TfrmAbastece.btnEditarExecute(Sender: TObject);
begin
  inherited;
  aba_databa.SetFocus;
end;

procedure TfrmAbastece.btnNovoExecute(Sender: TObject);
begin
  inherited;
  aba_databa.SetFocus;
end;

procedure TfrmAbastece.Calculo;
begin

end;




end.
