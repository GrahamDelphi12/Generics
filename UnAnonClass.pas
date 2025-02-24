unit UnAnonClass;

interface

uses
  System.SysUtils, System.Types, System.UITypes,
  System.Classes, System.Variants;

type
  TArrayProcessor<T>= procedure(const value:T) of object;

type
  TArrayClass = class
    procedure ParseArray<T>(const Arr: array of T;    //Bnt click fire event
                            Processor: TArrayProcessor<T>);
  end;


implementation

{ TArrayClass }

procedure TArrayClass.ParseArray<T>(const Arr: array of T;
  Processor: TArrayProcessor<T>);
var
 I: integer;
begin

  for I := Low(Arr) to High(Arr) do
  begin
    Processor(Arr[I]);
  end;

end;

end.
