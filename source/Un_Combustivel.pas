unit Un_Combustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Un_MDDialog, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, System.ImageList;

type
  TfrmCombustivel = class(TMD_Dialog)
    Label1: TLabel;
    cmb_codigo: TEdit;
    cmb_nome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cmb_vlrlit: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    Function  GetKeyField:     String; override;
    Function  GetQueryKeyFiled: String; override;
  end;

var
  frmCombustivel: TfrmCombustivel;

implementation

{$R *.dfm}

uses Un_Funcoes;

{ TfrmCombustivel }

function TfrmCombustivel.GetKeyField: String;
begin
  result := '';
end;

function TfrmCombustivel.GetQueryKeyFiled: String;
begin
  result := '';
end;

end.
