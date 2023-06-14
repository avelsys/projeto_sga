unit TesteSGA.Main;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TTesteSGA = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

procedure TTesteSGA.Setup;
begin
end;

procedure TTesteSGA.TearDown;
begin
end;

procedure TTesteSGA.Test1;
begin
end;

procedure TTesteSGA.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TTesteSGA);

end.
