program SGA;

uses
  Vcl.Forms,
  Un_Principal in 'Un_Principal.pas' {frm_principal},
  Un_DmSistema in 'Un_DmSistema.pas' {dmSistema: TDataModule},
  Un_MDDialog in 'Un_MDDialog.pas' {MD_Dialog},
  Un_Funcoes in 'Un_Funcoes.pas',
  U_ClassConfig in 'U_ClassConfig.pas',
  EditTuning in 'EditTuning.pas',
  Un_Combustivel in 'Un_Combustivel.pas' {frmCombustivel},
  un_Posto in 'un_Posto.pas' {frmPosto},
  un_Tanque in 'un_Tanque.pas' {frmTanque},
  Un_ClassPesq in 'Un_ClassPesq.pas' {frmConsulta},
  Un_Bomba in 'Un_Bomba.pas' {frmBomba},
  Un_Veiculo in 'Un_Veiculo.pas' {frmVeiculo},
  Un_Abastece in 'Un_Abastece.pas' {frmAbastece},
  un_ClassCalculo in 'un_ClassCalculo.pas',
  Un_RelAbastece in 'Un_RelAbastece.pas' {frmRelAbastece};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmSistema, dmSistema);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TfrmRelAbastece, frmRelAbastece);
  Application.Run;
end.
