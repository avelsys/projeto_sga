unit Un_ClassPesq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.ExtCtrls;
type
  TfrmConsulta = class(TForm)
    GroupBox1   : TGroupBox;
    edConsulta  : TMaskEdit;
    dbgConsulta : TDBGrid;
    dsConsulta  : TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

type
  TConsulta = class
  private
    { Private declarations }
    cnsDataSet : TDataSet    ;
    cnsEdtCons : Variant     ;
    cnsNmCampo : string      ;

  public
    { Public declarations }
    Function GetRetorno( cnsCampo : TObject ): String;
    constructor Create( AOwner : TComponent ; BaseCons : TDataSet; xCampoPsq : TObject );
  end;

var
  frmConsulta: TfrmConsulta;

implementation

uses
  System.StrUtils, FireDAC.Comp.Client;

{$R *.dfm}


{ TConsulta }

constructor TConsulta.Create(AOwner: TComponent; BaseCons: TDataSet;  xCampoPsq: TObject);
begin
  {Construção}
  cnsDataSet := BaseCons ;
  cnsEdtCons := TButtonedEdit(xCampoPsq).Text ;
  cnsNmCampo := TButtonedEdit(xCampoPsq).Name ;

end;

function TConsulta.GetRetorno( cnsCampo : TObject ): String;
Var
cRetono : String;
begin

  { Pega o Retorno }
  if Not cnsDataSet.Active then
     cnsDataSet.Active := True;

  if cnsEdtCons = '' then
     exit;

  case AnsiIndexStr(cnsCampo.ClassName, ['TEdit', 'TButtonedEdit']) of
      0:
         Begin
          cRetono := StringReplace(TEdit(cnsCampo).Name, 'ed', '',[rfReplaceAll, rfIgnoreCase]);

          if cnsDataSet.FieldDefList.FieldDefs[0].DataType = ftString  then
            cnsDataSet.Filter   := cnsDataSet.FieldDefList.FieldDefs[0].Name+' = '+QuotedStr( cnsEdtCons )
          else
            cnsDataSet.Filter   := cnsDataSet.FieldDefList.FieldDefs[0].Name+' = '+cnsEdtCons;

          cnsDataSet.Filtered := True;
         End;
      1:
         Begin
          cRetono := StringReplace(TButtonedEdit(cnsCampo).Name, 'ed', '',[rfReplaceAll, rfIgnoreCase]);
          TButtonedEdit(cnsCampo).Text := cRetono;
         End;
  end;
  if cnsDataSet.IsEmpty then begin
    ShowMessage('Registro Não encontrado');
  end else
    case AnsiIndexStr(cnsCampo.ClassName, ['TEdit', 'TButtonedEdit']) of
        0: TEdit(cnsCampo).Text         := cnsDataSet.FieldByName(cRetono).AsString;
        1: TButtonedEdit(cnsCampo).Text := cnsDataSet.FieldByName(cRetono).AsString;
    end;

  cnsDataSet.Filtered := False;

  Result := cRetono;
end;

end.
