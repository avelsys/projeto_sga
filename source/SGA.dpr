program SGA;

uses
  Vcl.Forms,
  Un_Principal in 'Un_Principal.pas' {frm_principal},
  Un_DmSistema in 'Un_DmSistema.pas' {dmSistema: TDataModule},
  Un_MDDialog in 'Un_MDDialog.pas' {MD_Dialog},
  Un_Funcoes in 'Un_Funcoes.pas',
  U_ClassConfig in 'U_ClassConfig.pas',
  EditTuning in 'EditTuning.pas',
  Un_Combustivel in 'Un_Combustivel.pas' {frmCombustivel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmSistema, dmSistema);
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
