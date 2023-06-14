unit Un_RelAbastece;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  RLReport;

type
  TfrmRelAbastece = class(TForm)
    frmRLImprimir: TRLReport;
    Cabec: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLSystemInfo2: TRLSystemInfo;
    fdqAbastece_: TFDQuery;
    dspAbastece_: TDataSetProvider;
    cdsAbastece_: TClientDataSet;
    cdsAbastece_ABA_CODIGO: TIntegerField;
    cdsAbastece_ABA_CODPLC: TStringField;
    cdsAbastece_ABA_CODBMB: TIntegerField;
    cdsAbastece_ABA_CODCMB: TIntegerField;
    cdsAbastece_ABA_VLRLIT: TBCDField;
    cdsAbastece_ABA_QTDLIT: TBCDField;
    cdsAbastece_ABA_PCTACM: TBCDField;
    cdsAbastece_ABA_VLRTOT: TBCDField;
    cdsAbastece_ABA_DATABA: TDateField;
    cdsAbastece_ABA_HORABA: TStringField;
    cdsAbastece_ABA_USUINC: TStringField;
    cdsAbastece_ABA_HORINC: TStringField;
    cdsAbastece_ABA_DATINC: TDateField;
    cdsAbastece_ABA_USUALT: TStringField;
    cdsAbastece_ABA_HORALT: TStringField;
    cdsAbastece_ABA_DATALT: TDateField;
    cdsAbastece_BMB_NOME: TStringField;
    cdsAbastece_TNQ_NOME: TStringField;
    cdsAbastece_TNQ_ETQATU: TBCDField;
    cdsAbastece_CMB_NOME: TStringField;
    cdsAbastece_CMB_VLRLIT: TBCDField;
    cdsAbastece_TNQ_CODIGO: TIntegerField;
    dsAbastece_: TDataSource;
    GroupBox1: TGroupBox;
    btnVizu: TButton;
    btnImp: TButton;
    dtInicio: TDateTimePicker;
    dtFinal: TDateTimePicker;
    rlgData: TRLGroup;
    RLBand1: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    rlgTanque: TRLGroup;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    rlgBomba: TRLGroup;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand4: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand6: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel13: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand5: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel12: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand7: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel14: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    procedure btnVizuClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
  private
    { Private declarations }
    procedure imprimir(Opcao:Boolean);
  public
    { Public declarations }
  end;

var
  frmRelAbastece: TfrmRelAbastece;

implementation

{$R *.dfm}

uses EditTuning, U_ClassConfig, un_ClassCalculo, Un_DmSistema, Un_Funcoes;




{ TfrmRelAbastece }

procedure TfrmRelAbastece.btnVizuClick(Sender: TObject);
begin
 imprimir(False );
end;

procedure TfrmRelAbastece.btnImpClick(Sender: TObject);
begin
// imprimir(True);
end;

procedure TfrmRelAbastece.imprimir(Opcao: Boolean);
begin
  cdsAbastece_.Close;
  With fdqAbastece_ do Begin
      Close;
      Params[0].AsDate := dtInicio.Date;
      Params[1].AsDate := dtFinal.Date;
      Open;
  End;
  cdsAbastece_.Open;

  if Not Opcao then Begin
     frmRLImprimir.Preview() // preview do relatório
  End else Begin
     frmRLImprimir.Print;    //
  End;

end;

end.
