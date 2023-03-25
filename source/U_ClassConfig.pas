unit U_ClassConfig;

interface
Type
  TConfig = Class
  Strict Private
//    Class Var FInstance : TConfig;
  private
    FConfirmaGravacao: Boolean;
    FConfirmaCancelamento: Boolean;
    procedure SetConfirmaCancelamento(const Value: Boolean);
    procedure SetConfirmaGravacao(const Value: Boolean);
  Public
    CLass function GetInstance : TConfig;

    property ConfirmaGravacao : Boolean read FConfirmaGravacao write SetConfirmaGravacao;
    property ConfirmaCancelamento : Boolean read FConfirmaCancelamento write SetConfirmaCancelamento;
  End;
implementation

uses
  System.SysUtils;

{ TConfig }

class function TConfig.GetInstance: TConfig;
begin
  Result := nil;
{
  if not Assigned(Finstance) then
     FInstance := TConfig.Create;

     Result := finstance;
 }
end;

procedure TConfig.SetConfirmaCancelamento(const Value: Boolean);
begin
  FConfirmaCancelamento := Value;
end;

procedure TConfig.SetConfirmaGravacao(const Value: Boolean);
begin
  FConfirmaGravacao := Value;
end;

end.
