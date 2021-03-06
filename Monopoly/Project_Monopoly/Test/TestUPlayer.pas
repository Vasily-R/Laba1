unit TestUPlayer;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Generics.Defaults, Generics.Collections, UPlayer, UDie, Classes,
  SysUtils, USquare, UPiece, UBoard;

type
  // Test methods for class TPlayer

  TestTPlayer = class(TTestCase)
  strict private
    FPlayer: TPlayer;
    name:string; dice:TDie; board:TBoard;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

implementation

procedure TestTPlayer.SetUp;
begin
  FPlayer := TPlayer.Create(name,dice,board);
end;

procedure TestTPlayer.TearDown;
begin
  FPlayer.Free;
  FPlayer := nil;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTPlayer.Suite);
end.

