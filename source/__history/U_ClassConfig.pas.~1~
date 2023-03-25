unit U_ClassConfig;

interface
Type
  TConfig = Class
  Strict Private
    Class Var FInstance : TConfig;
    Constructor CreatePrivate;
  private
    FConfirmaGravacao: Boolean;
    FConfirmaCancelamento: Boolean;
    constructor Create;
    procedure SetConfirmaCancelamento(const Value: Boolean);
    procedure SetConfirmaGravacao(const Value: Boolean);
  Public
    CLass function GetInstance : TConfig;
  published
    property ConfirmaGravacao : Boolean read FConfirmaGravacao write SetConfirmaGravacao;
    property ConfirmaCancelamento : Boolean read FConfirmaCancelamento write SetConfirmaCancelamento;
  End;
implementation

uses
  System.SysUtils;

{ TConfig }

constructor TConfig.Create;
begin
  raise Exception.Create('Para obert ma isntancia de TConfig, use TConfig.getinstan ce');
end;

constructor TConfig.CreatePrivate;
begin
  Inherited Create;
end;

class function TConfig.GetInstance: TConfig;
begin
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
