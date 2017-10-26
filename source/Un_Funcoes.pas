unit Un_Funcoes;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.Buttons, Vcl.ImgList,  Menus, ComCtrls,   ToolWin, IniFiles,
  FMTBcd, DB, SqlExpr, DBXFirebird, StrUtils, Datasnap.Provider, Datasnap.DBClient,
  Vcl.Imaging.jpeg, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdHTTP, Mask, DateUtils, zlib, TLHelp32,wininet,  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, IdHashMessageDigest;

  function ChkType(cField, cTabela : String; dbgCrud :Tdbgrid ): String;
  function PegaType(cField, cTabela : String ): String;
  function Criptografar(wStri: String): String;
  function LoadImage(AImage: TImage; ABlobField: TBlobField): Boolean;
  function fIIF( pCond:Boolean; pTrue, pFalse:Variant ): Variant;


implementation

uses Un_DmSistema;

function fIIF( pCond:Boolean; pTrue, pFalse:Variant ): Variant;
begin
  If pCond Then
     Result := pTrue
  else
     Result := pFalse;
end;


function PegaType(cField, cTabela : String ): String;
Var
cSql : String;
qQry : TFDQuery ;
Begin
  cField  := LowerCase( cField ) ;
  qQry    := TFDQuery.Create(Nil) ;
  Result  := '';
  with qQry do begin
      Connection := dmSistema.fdConecta;
      SQL.Text :=' SELECT DISTINCT CAMPOS.RDB$FIELD_NAME AS COLUMN_NAME,         '
                  +' CASE                                                        '
                  +'  WHEN DADOSCAMPO.RDB$FIELD_PRECISION > 0 THEN ''NUMERIC''   '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''LONG''     THEN ''INTEGER''       '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''SHORT''    THEN ''SMALLINT''     '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''INT64''    THEN ''NUMERIC''      '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''VARYING''  THEN ''VARCHAR''    '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''TEXT''     THEN ''CHAR''          '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''BLOB''     THEN ''BLOB SUB_TYPE'' '
                  +'    ELSE TIPOS.RDB$TYPE_NAME                                 '
                  +'  END AS FIELD_TYPE,                                         '
                  +'  CASE                                                       '
                  +'  WHEN DADOSCAMPO.RDB$FIELD_TYPE IN(16,8) THEN DADOSCAMPO.RDB$FIELD_PRECISION '
                  +'    ELSE DADOSCAMPO.RDB$FIELD_LENGTH  '
                  +'  END AS DATA_LENGTH, DADOSCAMPO.RDB$FIELD_SCALE AS DATA_SCALE,   '
                  +'  CASE CAMPOS.RDB$NULL_FLAG WHEN 1 THEN ''N'' ELSE ''Y'' END AS NULLABLE  '
                  +'  FROM                                                                    '
                  +'    RDB$RELATIONS TABELAS, RDB$RELATION_FIELDS CAMPOS, RDB$FIELDS         '
                  +'    DADOSCAMPO, RDB$TYPES TIPOS                                           '
                  +'  WHERE TABELAS.RDB$RELATION_NAME = '+QuotedStr(cTabela)+'                '
                  +'    AND CAMPOS.RDB$FIELD_NAME     = '+QuotedStr(cField)+'                '
                  +'    AND TIPOS.RDB$FIELD_NAME      = ''RDB$FIELD_TYPE''                    '
                  +'    AND TABELAS.RDB$RELATION_NAME = CAMPOS.RDB$RELATION_NAME              '
                  +'    AND CAMPOS.RDB$FIELD_SOURCE   = DADOSCAMPO.RDB$FIELD_NAME             '
                  +'    AND DADOSCAMPO.RDB$FIELD_TYPE = TIPOS.RDB$TYPE                        '
                  +'    ORDER BY CAMPOS.RDB$FIELD_POSITION                                    ';

      Open;
  end;
  Result := LowerCase( qQry.FieldByName('FIELD_TYPE').Value );
  FreeAndNil(qQry);
End;

function ChkType(cField, cTabela : String; dbgCrud :Tdbgrid ): String;
Var
cSql : String;
qQry : TFDQuery ;
Begin
  cField  := LowerCase( cField ) ;
  qQry    := TFDQuery.Create(Nil) ;
  Result  := '';
  with qQry do begin
      Connection := dmSistema.fdConecta;
      SQL.Text :=' SELECT DISTINCT CAMPOS.RDB$FIELD_NAME AS COLUMN_NAME,         '
                  +' CASE                                                        '
                  +'  WHEN DADOSCAMPO.RDB$FIELD_PRECISION > 0 THEN ''NUMERIC''   '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''LONG''     THEN ''INTEGER''       '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''SHORT''    THEN ''SMALLINT''     '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''INT64''    THEN ''NUMERIC''      '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''VARYING''  THEN ''VARCHAR''    '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''TEXT''     THEN ''CHAR''          '
                  +'  WHEN TIPOS.RDB$TYPE_NAME = ''BLOB''     THEN ''BLOB SUB_TYPE'' '
                  +'    ELSE TIPOS.RDB$TYPE_NAME                                 '
                  +'  END AS FIELD_TYPE,                                         '
                  +'  CASE                                                       '
                  +'  WHEN DADOSCAMPO.RDB$FIELD_TYPE IN(16,8) THEN DADOSCAMPO.RDB$FIELD_PRECISION '
                  +'    ELSE DADOSCAMPO.RDB$FIELD_LENGTH  '
                  +'  END AS DATA_LENGTH, DADOSCAMPO.RDB$FIELD_SCALE AS DATA_SCALE,   '
                  +'  CASE CAMPOS.RDB$NULL_FLAG WHEN 1 THEN ''N'' ELSE ''Y'' END AS NULLABLE  '
                  +'  FROM                                                                    '
                  +'    RDB$RELATIONS TABELAS, RDB$RELATION_FIELDS CAMPOS, RDB$FIELDS         '
                  +'    DADOSCAMPO, RDB$TYPES TIPOS                                           '
                  +'  WHERE TABELAS.RDB$RELATION_NAME = '+QuotedStr(cTabela)+'                '
                  +'    AND CAMPOS.RDB$FIELD_NAME     = '+QuotedStr(cField)+'                '
                  +'    AND TIPOS.RDB$FIELD_NAME      = ''RDB$FIELD_TYPE''                    '
                  +'    AND TABELAS.RDB$RELATION_NAME = CAMPOS.RDB$RELATION_NAME              '
                  +'    AND CAMPOS.RDB$FIELD_SOURCE   = DADOSCAMPO.RDB$FIELD_NAME             '
                  +'    AND DADOSCAMPO.RDB$FIELD_TYPE = TIPOS.RDB$TYPE                        '
                  +'    ORDER BY CAMPOS.RDB$FIELD_POSITION                                    ';

      Open;
  end;
  if dbgCrud.DataSource.DataSet.FieldByName(cField ).IsNull then
     exit;

  if ( LowerCase( qQry.FieldByName('FIELD_TYPE').Value ) = 'int4' )   or
     ( LowerCase( qQry.FieldByName('FIELD_TYPE').Value ) = 'integer' ) then begin
       Result := IntToStr(dbgCrud.DataSource.DataSet.FieldByName(cField ).Value );
  end else begin
       Result := dbgCrud.DataSource.DataSet.FieldByName(cField ).Value;
  end;
  FreeAndNil(qQry);
End;

function Criptografar(wStri: String): String;
var
Simbolos  : array [0..4] of String;
x         : Integer;
begin
  if Not wStri.IsEmpty then begin
      Simbolos[1]:='ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()';
      Simbolos[2]:= 'ÂÀ©Øû×ƒçêùÿ5Üø£úñÑªº¿®¬¼ëèïÙýÄÅÉæÆôöò»Á';
      Simbolos[3]:= 'abcdefghijlmnopqrstuvxzywk1234567890';
      Simbolos[4]:= 'áâäàåíóÇüé¾¶§÷ÎÏ-+ÌÓß¸°¨·¹³²Õµþîì¡«½';
      for x := 1 to Length(Trim(wStri)) do begin
        if pos(copy(wStri,x,1),Simbolos[1])>0 then
          Result := Result+copy(Simbolos[2], pos(copy(wStri,x,1),Simbolos[1]),1)
        else if pos(copy(wStri,x,1),Simbolos[2])>0 then
          Result := Result+copy(Simbolos[1], pos(copy(wStri,x,1),Simbolos[2]),1)
        else if pos(copy(wStri,x,1),Simbolos[3])>0 then
          Result := Result+copy(Simbolos[4], pos(copy(wStri,x,1),Simbolos[3]),1)
        else if pos(copy(wStri,x,1),Simbolos[4])>0 then
          Result := Result+copy(Simbolos[3], pos(copy(wStri,x,1),Simbolos[4]),1);
        end;
    end Else Begin
        Result := '';
    End;

end;



function LoadImage(AImage: TImage; ABlobField: TBlobField): Boolean;
var
  JpgImg: TJPEGImage;
  StMem: TMemoryStream;
begin
  if ABlobField.DataSet.IsEmpty then
  begin
    Result := False;
    Exit;
  end;

  AImage.Picture.Assign(nil);
  if not (ABlobField.IsNull) and not (ABlobField.AsString = '') then
  begin
    jpgImg := TJPEGImage.Create;
    stMem := TMemoryStream.Create;
    try
      ABlobField.SaveToStream(StMem);
      StMem.Position := 0;
      JpgImg.LoadFromStream(StMem);
      AImage.Picture.Assign(JpgImg);
    finally
      StMem.Free;
      JpgImg.Free;
    end;
  end;
  Result := True;
end;


end.
