unit Un_DmSistema;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client, Vcl.Dialogs,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet, Datasnap.DBClient,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

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
      Params.Add('DriverID=FB');
      Params.Add('Server=localhost');
      Params.Add('Database='+cPath+'\database\DBSGA.FDB');
      Params.Add('User_Name=SYSDBA');
      Params.Add('Password=masterkey');
      Params.Add('CharacterSet=WIN1252');
      Params.Add('LoginPrompt:= False');
      Try
        fdConecta.Open;
      except on e : exception do
        ShowMessage('Erro de Conexão: '+ e.message);

      End;
  End;

end;

end.
