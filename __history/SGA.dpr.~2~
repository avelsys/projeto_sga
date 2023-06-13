program SGA;

uses
  Vcl.Forms,
  Un_MDDialog in 'source\Un_MDDialog.pas' {MD_Dialog},
  EditTuning in 'source\EditTuning.pas',
  U_ClassConfig in 'source\U_ClassConfig.pas',
  Un_Abastece in 'source\Un_Abastece.pas' {frmAbastece},
  Un_Bomba in 'source\Un_Bomba.pas' {frmBomba},
  un_ClassCalculo in 'source\un_ClassCalculo.pas',
  Un_ClassPesq in 'source\Un_ClassPesq.pas' {frmConsulta},
  Un_Combustivel in 'source\Un_Combustivel.pas' {frmCombustivel},
  Un_DmSistema in 'source\Un_DmSistema.pas' {dmSistema: TDataModule},
  Un_Funcoes in 'source\Un_Funcoes.pas',
  un_Posto in 'source\un_Posto.pas' {frmPosto},
  Un_Principal in 'source\Un_Principal.pas' {frm_principal},
  Un_RelAbastece in 'source\Un_RelAbastece.pas' {frmRelAbastece},
  un_Tanque in 'source\un_Tanque.pas' {frmTanque},
  Un_Veiculo in 'source\Un_Veiculo.pas' {frmVeiculo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmSistema, dmSistema);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
