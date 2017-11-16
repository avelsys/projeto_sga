unit un_ClassCalculo;

interface

type
  // Classe de Clculos de Bastecimento
  TCalculoABa = class
  strict private
    class var FInstance : TCalculoABa;
  private
    FValorLitro : Double;
    FValorTotal : Double;
    FQtdade     : Double;
    FAcrescimo  : Double;
    class procedure ReleaseInstance();
  public
    property ValorLitro :Double read FValorLitro  write FValorLitro;
    property ValorTotal :Double read FValorTotal  write FValorTotal;
    property Qtdade     :Double read FQtdade      write FQtdade;
    property Acrescimo  :Double read FAcrescimo   write FAcrescimo;
    procedure ExecCalc;
    class function GetInstance(): TCalculoABa;
  end;

implementation

procedure TCalculoABa.ExecCalc;
Var
nTotalSD,nVlrAcre: Double;
begin
  FValorLitro := ValorLitro ;
  FQtdade     := Qtdade     ;
  FAcrescimo  := Acrescimo  ;
  nTotalSD    := ( FValorLitro * Qtdade );
  nVlrAcre    := ((nTotalSD/100) * FAcrescimo );
  FValorTotal := nTotalSD + nVlrAcre ;
end;

class function TCalculoABa.GetInstance: TCalculoABa;
begin
  if not Assigned(Self.FInstance) then
    self.FInstance := TCalculoABa.Create;
  Result := Self.FInstance;
end;

class procedure TCalculoABa.ReleaseInstance;
begin
  if Assigned(Self.FInstance) then
    Self.FInstance.Free;
end;

// Inicializa
initialization

//Finaliza
finalization
  TCalculoABa.ReleaseInstance();


end.
