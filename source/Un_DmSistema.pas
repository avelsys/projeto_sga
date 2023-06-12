unit Un_DmSistema;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client, Vcl.Dialogs,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet, Datasnap.DBClient,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.FBDef;

type
  TdmSistema = class(TDataModule)
    fdConecta: TFDConnection;
    fbDriver: TFDPhysFBDriverLink;
    fdqCombustivel: TFDQuery;
    dspCombustivel: TDataSetProvider;
    cdsCombustivel: TClientDataSet;
    cdsCombustivelCMB_CODIGO: TIntegerField;
    cdsCombustivelCMB_NOME: TStringField;
    cdsCombustivelCMB_VLRLIT: TBCDField;
    dsCombustivel: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    cdsCombustivelCMB_USUINC: TStringField;
    cdsCombustivelCMB_HORINC: TStringField;
    cdsCombustivelCMB_DATINC: TDateField;
    cdsCombustivelCMB_USUALT: TStringField;
    cdsCombustivelCMB_HORALT: TStringField;
    cdsCombustivelCMB_DATALT: TDateField;
    fdqPosto: TFDQuery;
    dspPosto: TDataSetProvider;
    cdsPosto: TClientDataSet;
    dsPosto: TDataSource;
    cdsPostoPST_CODIGO: TIntegerField;
    cdsPostoPST_CNPJ: TStringField;
    cdsPostoPST_NOME: TStringField;
    cdsPostoPST_ENDERECO: TStringField;
    cdsPostoPST_BAIRRO: TStringField;
    cdsPostoPST_CIDADE: TStringField;
    cdsPostoPST_ESTADO: TStringField;
    cdsPostoPST_CEP: TStringField;
    cdsPostoPST_TELEFONE: TStringField;
    cdsPostoPST_USUINC: TStringField;
    cdsPostoPST_HORINC: TStringField;
    cdsPostoPST_DATINC: TDateField;
    cdsPostoPST_USUALT: TStringField;
    cdsPostoPST_HORALT: TStringField;
    cdsPostoPST_DATALT: TDateField;
    fdqTanque: TFDQuery;
    dspTanque: TDataSetProvider;
    cdsTanque: TClientDataSet;
    dsTanque: TDataSource;
    cdsTanqueTNQ_CODIGO: TIntegerField;
    cdsTanqueTNQ_NOME: TStringField;
    cdsTanqueTNQ_CODCMB: TIntegerField;
    cdsTanqueTNQ_ETQMIN: TBCDField;
    cdsTanqueTNQ_ETQMAX: TBCDField;
    cdsTanqueTNQ_ETQATU: TBCDField;
    cdsTanqueTNQ_USUINC: TStringField;
    cdsTanqueTNQ_HORINC: TStringField;
    cdsTanqueTNQ_DATINC: TDateField;
    cdsTanqueTNQ_USUALT: TStringField;
    cdsTanqueTNQ_HORALT: TStringField;
    cdsTanqueTNQ_DATALT: TDateField;
    cdsTanqueCMB_NOME: TStringField;
    fdqBomba: TFDQuery;
    dspBomba: TDataSetProvider;
    cdsBomba: TClientDataSet;
    dsBomba: TDataSource;
    cdsBombaBMB_CODIGO: TIntegerField;
    cdsBombaBMB_NOME: TStringField;
    cdsBombaBMB_CODTNQ: TIntegerField;
    cdsBombaBMB_USUINC: TStringField;
    cdsBombaBMB_HORINC: TStringField;
    cdsBombaBMB_DATINC: TDateField;
    cdsBombaBMB_USUALT: TStringField;
    cdsBombaBMB_HORALT: TStringField;
    cdsBombaBMB_DATALT: TDateField;
    cdsBombaTNQ_NOME: TStringField;
    cdsBombaCMB_NOME: TStringField;
    cdsBombaCMB_VLRLIT: TBCDField;
    cdsBombaTNQ_ETQMIN: TBCDField;
    cdsBombaTNQ_ETQMAX: TBCDField;
    cdsBombaTNQ_ETQATU: TBCDField;
    fdqVeiculo: TFDQuery;
    dspVeiculo: TDataSetProvider;
    cdsVeiculo: TClientDataSet;
    dsVeiculo: TDataSource;
    cdsVeiculoVIC_PLACA: TStringField;
    cdsVeiculoVIC_CODFTA: TIntegerField;
    cdsVeiculoVIC_CODCMB: TIntegerField;
    cdsVeiculoVIC_MARCA: TStringField;
    cdsVeiculoVIC_MODELO: TStringField;
    cdsVeiculoVIC_ANO: TStringField;
    cdsVeiculoVIC_USUINC: TStringField;
    cdsVeiculoVIC_HORINC: TStringField;
    cdsVeiculoVIC_DATINC: TDateField;
    cdsVeiculoVIC_USUALT: TStringField;
    cdsVeiculoVIC_HORALT: TStringField;
    cdsVeiculoVIC_DATALT: TDateField;
    cdsVeiculoCMB_NOME: TStringField;
    fdqAbastece: TFDQuery;
    dspAbastece: TDataSetProvider;
    cdsAbastece: TClientDataSet;
    dsAbastece: TDataSource;
    cdsAbasteceABA_CODIGO: TIntegerField;
    cdsAbasteceABA_CODPLC: TStringField;
    cdsAbasteceABA_CODBMB: TIntegerField;
    cdsAbasteceABA_CODCMB: TIntegerField;
    cdsAbasteceABA_VLRLIT: TBCDField;
    cdsAbasteceABA_QTDLIT: TBCDField;
    cdsAbasteceABA_PCTACM: TBCDField;
    cdsAbasteceABA_VLRTOT: TBCDField;
    cdsAbasteceABA_DATABA: TDateField;
    cdsAbasteceABA_HORABA: TStringField;
    cdsAbasteceABA_USUINC: TStringField;
    cdsAbasteceABA_HORINC: TStringField;
    cdsAbasteceABA_DATINC: TDateField;
    cdsAbasteceABA_USUALT: TStringField;
    cdsAbasteceABA_HORALT: TStringField;
    cdsAbasteceABA_DATALT: TDateField;
    cdsAbasteceBMB_NOME: TStringField;
    cdsAbasteceTNQ_NOME: TStringField;
    cdsAbasteceTNQ_ETQATU: TBCDField;
    cdsAbasteceCMB_NOME: TStringField;
    cdsAbasteceCMB_VLRLIT: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSistema: TdmSistema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmSistema.DataModuleCreate(Sender: TObject);
Var
cPath : String;
begin
  cPath := GetCurrentDir;

  with fdConecta do Begin
      Connected                     := false;
      LoginPrompt                   := false;
      Params.Values['DriverID']     := 'FB';
      Params.Values['Server']       := 'localhost';
      Params.Values['Database']     := cPath+'\database\DBSGA.FDB';
      Params.Values['User_Name']    := 'SYSDBA';
      Params.Values['Password']     := 'masterkey';
      Params.Values['CharacterSet'] := 'WIN1252';
      Try
        Connected := True;
      except on e : exception do
        ShowMessage('Erro de Conexão: '+ e.message);

      End;
  End;

end;

end.
