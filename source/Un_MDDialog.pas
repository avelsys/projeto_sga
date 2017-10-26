unit Un_MDDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, System.Generics.Collections, System.StrUtils;

type
  TRecordState = ( rsNew, rsEdit, rsDelete, rsVizu, rsNil );
  TArrayComp   = array of TComponent;

  TMD_Dialog = class(TForm)
    pnModelo: TPanel;
    lbTitulo: TLabel;
    pnMenu: TPanel;
    SpeedButton1: TSpeedButton;
    imlCrud: TImageList;
    aclCrud: TActionList;
    btnNovo: TAction;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnEditar: TAction;
    btnGravar: TAction;
    btnExcluir: TAction;
    SpeedButton5: TSpeedButton;
    btnSair: TAction;
    dsCrud: TDataSource;
    tabCrud: TPageControl;
    tbItemLista: TTabSheet;
    pnPesquisa: TPanel;
    lbTitReg: TLabel;
    lbTotalReg: TLabel;
    edPesquisa: TEdit;
    dbgCrud: TDBGrid;
    tbItemCrud: TTabSheet;
    pnControls: TPanel;
    pgForm: TPageControl;
    pgFormDados: TTabSheet;
    GroupBox1: TGroupBox;
    SpeedButton6: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    btnInicio: TAction;
    btnAnterior: TAction;
    btnProximo: TAction;
    btnTermino: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoExecute(Sender: TObject);
    procedure btnEditarExecute(Sender: TObject);
    procedure btnGravarExecute(Sender: TObject);
    procedure btnExcluirExecute(Sender: TObject);
    procedure btnSairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInicioExecute(Sender: TObject);
    procedure btnProximoExecute(Sender: TObject);
    procedure btnTerminoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCheckUnique  : Tdictionary<String, String>;
    FRecordState  : TRecordState;
    FRecNo        : Integer;
    btnAtiva      : TAction ;
    aGets, aCpts  : TArrayComp;
    aCmps         : array of String;
    cPref, cPesqStr : String;
    pBtn          : TAction ;
    titleindex    : Integer;
    procedure OcultarSheets(PageControl: TPageControl);
    procedure prefixo;
    procedure AtivaBtns;
    procedure BarraNavega;
    procedure btnAnteriorExecute(Sender: TObject);
    procedure GetDados;
    procedure RefrehTitulos;
    { Private declarations }
  Protected
      lVerif      : Boolean  ;
      cTabela     : string   ;
  public
    { Public declarations }
  end;

var
  MD_Dialog: TMD_Dialog;

implementation

{$R *.dfm}

uses Un_DmSistema, FireDAC.Comp.Client, Un_Funcoes, Vcl.Mask;

procedure TMD_Dialog.btnEditarExecute(Sender: TObject);
begin
  ShowMessage('Em Manutenção');
end;

procedure TMD_Dialog.btnExcluirExecute(Sender: TObject);
begin
  ShowMessage('Em Manutenção');
end;

procedure TMD_Dialog.btnGravarExecute(Sender: TObject);
begin
  ShowMessage('Em Manutenção');
end;

procedure TMD_Dialog.btnInicioExecute(Sender: TObject);
begin
  FRecordState := rsVizu;
  dsCrud.DataSet.First;
  GetDados;
  BarraNavega;

end;

procedure TMD_Dialog.btnNovoExecute(Sender: TObject);
begin
  ShowMessage('Em Manutenção');

end;

procedure TMD_Dialog.btnProximoExecute(Sender: TObject);
begin
  FRecordState := rsVizu;
  dsCrud.DataSet.Next;
  GetDados;
  BarraNavega;
end;

procedure TMD_Dialog.btnSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TMD_Dialog.btnTerminoExecute(Sender: TObject);
begin
  FRecordState := rsVizu;
  dsCrud.DataSet.Last;
  GetDados;
  BarraNavega;

end;

procedure TMD_Dialog.GetDados;
Var
i : Integer;
c : String;
begin
  inherited;
  if ( FRecordState in [ rsNew, rsEdit, rsDelete, rsVizu ] ) then begin

      //Varrer Campos
      if   lVerif  then begin

        for i := 0 to Length( aGets ) -1 do begin

            if ( aGets[i].ClassName = 'TEdit' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin
               if TEdit(aGets[i]).PasswordChar = #0 then begin
                   TEdit( aGets[i] ).Text     := fIIF( ( FRecordState = rsNew) or ( dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull ) ,'', dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value );
               end Else
                   if FRecordState = rsNew then begin
                       TEdit( aGets[i] ).Text     := '';
                   end Else
                       TEdit( aGets[i] ).Text     := Criptografar( dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value )  ;

               TEdit( aGets[i] ).Enabled  := ((( Not (pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags) ) or
                                              (( pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags ) and
                                               ( ( PegaType( aGets[i].Name, cTabela ) <> 'int4' ) and ( FRecordState = rsNew ) ) ) ) and
                                               (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) and ( aGets[i].Tag <> 9 ));
            end Else
            if ( aGets[i].ClassName = 'TMaskEdit' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin

              if ( Copy( aGets[i].name,5,3 ) = 'vlr' ) then begin
                  if (( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull ) then begin
                       TMaskEdit( aGets[i] ).Text     :=  FormatCurr('R$ #,##0.00',0);
                  end else begin
                       TMaskEdit( aGets[i] ).Text     :=  FormatCurr('R$ #,##0.00',dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value );
                  end;
              End Else Begin
                 TMaskEdit( aGets[i] ).Text     := fIIF(( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull,'',
                                                    dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value );
              end;
               TMaskEdit( aGets[i] ).Enabled  := (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) ;

            end Else
            if ( aGets[i].ClassName = 'TCheckBox' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin
               TCheckBox( aGets[i] ).Checked  := fIIF( ( ( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull ), False,
                                                  dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).AsBoolean );
               TCheckBox( aGets[i] ).Enabled  := (( Not (pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags) ) and
                                               (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) );


            end Else
            if ( aGets[i].ClassName = 'TButtonedEdit' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin
               TButtonedEdit( aGets[i] ).Text     := fIIF( (( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull ), '', ChkType( aGets[i].Name, cTabela, dbgCrud ) );
               TButtonedEdit( aGets[i] ).Enabled  := (( Not (pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags) ) and
                                                            (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) );
               //TButtonedEdit( aGets[i] ).CustomHint := hbCrud;
               TButtonedEdit( aGets[i] ).ShowHint   := True;
               TButtonedEdit( aGets[i] ).Hint       := 'Consulta|Pressione para consultar '+#13+' um novo registro,'+#13+' ou precione a tecla END '+#13+' no seu teclado '+#13+'|300';

            end Else
            if ( aGets[i].ClassName = 'TDateTimePicker' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin
               TDateTimePicker( aGets[i] ).DateTime := fIIF(( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull,Now,
                                                       dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value );
               TDateTimePicker( aGets[i] ).Enabled  := (( Not (pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags) ) and
                                               (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) );

            end Else
            if ( aGets[i].ClassName = 'TComboBox' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin
               TComboBox( aGets[i] ).ItemIndex  := fIIF(( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull,0,
                                                          TComboBox( aGets[i] ).Items.IndexOf( fIIF( dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull,0, dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value ) )  );
               TComboBox( aGets[i] ).Enabled    := (( Not (pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags) ) and
                                                   (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) );


            end Else
            if ( aGets[i].ClassName =  'TRichEdit' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin
               TRichEdit( aGets[i] ).Text     := fIIF(( FRecordState = rsNew ) or dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).IsNull,'',
                                                  dbgCrud.DataSource.DataSet.FieldByName(LowerCase( aGets[i].Name )).Value );
               TRichEdit( aGets[i] ).Enabled  := (( Not (pfInKey in dsCrud.DataSet.FieldByName(LowerCase( aGets[i].Name )).ProviderFlags) ) and
                                               (( FRecordState = rsNew ) or ( FRecordState = rsEdit )) );

            end Else
            if ( aGets[i].ClassName = 'TImage' ) and
               ( Copy( aGets[i].name,4,1 ) = '_' ) then begin

                  if Not TBlobField( dbgCrud.DataSource.DataSet.FieldByName( aGets[i].Name ) ).IsNull then begin
                     If LoadImage( TImage(aGets[i]), TBlobField( dbgCrud.DataSource.DataSet.FieldByName( aGets[i].Name ) ) ) then
                  End Else Begin
                    TImage(aGets[i]).Picture.Bitmap.Assign(Nil);
                    TImage(aGets[i]).Parent.Repaint;
                  End;

            End;
        end;

        for i := 0 to Length( aCpts ) -1 do begin
            if ( aCpts[i].ClassName = 'TDBGrid' )  then begin
               TDBGrid( aCpts[i] ).Enabled  := (( FRecordState = rsNew ) or ( FRecordState = rsEdit ));
            end Else
            if ( aCpts[i].ClassName = 'TRadioButton' )  then begin
               TRadioButton( aCpts[i] ).Enabled  := (( FRecordState = rsNew ) or ( FRecordState = rsEdit ));
            end Else
            if ( aCpts[i].ClassName = 'TGroupBox' )  then begin
               TGroupBox( aCpts[i] ).Enabled  := (( FRecordState = rsNew ) or ( FRecordState = rsEdit ));

            End;
        end;


      end;
  end;
end;


procedure TMD_Dialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dsCrud.DataSet.Close;
   Action := caFree;
   Self   := NIL;
end;

procedure TMD_Dialog.FormCreate(Sender: TObject);
begin
  cTabela                        := LowerCase( Trim( Copy(dsCrud.DataSet.Name,4, length(dsCrud.DataSet.Name)-3) ) ) ;
end;

procedure TMD_Dialog.FormShow(Sender: TObject);
begin
  // Viabiliza a conexão
  Visible                   := True ;
  if Not dmSistema.fdConecta.Connected then
     ShowMessage('Sistema não conectado');

  dsCrud.DataSet.Active     := True ;
  dsCrud.DataSet.Open;
  tabCrud.ActivePage        := tbItemLista ;
  tabCrud.ScrollOpposite    := False ;
  OcultarSheets(tabCrud);

  //edPesquisa.Clear;
  edPesquisa.TextHint         := 'Selecione uma coluna para pesquisar ';
  dbgCrud.DataSource.DataSet.Last;
  dbgCrud.DataSource.DataSet.First;
  FRecordState              := rsNil ;
  prefixo ;
  AtivaBtns ;



end;
procedure TMD_Dialog.AtivaBtns;
var
cSql: String;
SqlP : TFdQuery;
Begin
    if SqlP.IsEmpty then begin
      Self.btnNovo.Enabled     := False;
      Self.btnEditar.Enabled   := False;
      Self.btnExcluir.Enabled  := False;
      //Self.btnVizualiza.Enabled:= False;
    end Else begin
      Self.btnNovo.Enabled     := (  Not ( dsCrud.State in [dsInsert, dsEdit ] )) ;
      Self.btnEditar.Enabled   := (( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ));
      Self.btnExcluir.Enabled  := (( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ));
      //Self.btnVizualiza.Enabled:= (( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ));
    end;
    Self.btnInicio.Enabled   :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ) );
    Self.btnAnterior.Enabled :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ) );
    Self.btnProximo.Enabled  :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ) );
    Self.btnTermino.Enabled  :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.IsEmpty ) );
    FreeAndNil(SqlP);
    RefrehTitulos ;
end;
procedure TMD_Dialog.BarraNavega;
begin
    Self.btnInicio.Enabled   :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.Bof ) );
    Self.btnAnterior.Enabled :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.Bof ) );
    Self.btnProximo.Enabled  :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.Eof ) );
    Self.btnTermino.Enabled  :=(( Not ( dsCrud.State in [dsInsert, dsEdit ] )) and ( Not dbgCrud.DataSource.DataSet.Eof ) );
end;
procedure TMD_Dialog.RefrehTitulos ;
begin
    lbTotalReg.Caption := FormatCurr('#,###,##0', dsCrud.DataSet.RecordCount )
end;

procedure TMD_Dialog.btnAnteriorExecute(Sender: TObject);
begin
  inherited;
  FRecordState := rsVizu;
  dsCrud.DataSet.Prior;
  GetDados;
  BarraNavega;
end;


procedure TMD_Dialog.prefixo;
begin
  cPref :=  Copy( dsCrud.DataSet.Fields[1].FieldName,1,4);
end;
procedure TMD_Dialog.OcultarSheets(PageControl: TPageControl);
var
iPage: Integer;
begin
  lVerif := False;
  for iPage := 0 to PageControl.PageCount - 1 do
      PageControl.Pages[iPage].TabVisible := False;

  if ( PageControl.PageCount > 0 ) then
      PageControl.ActivePage := PageControl.Pages[0];

  PageControl.Style := tsButtons;
  lVerif := True;
end;

initialization
  RegisterClass(TMD_Dialog);

end.
inherited
