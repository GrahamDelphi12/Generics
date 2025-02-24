unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    BtnVariant: TButton;
    Memo1: TMemo;
    BtnStr: TButton;
    procedure BtnVariantClick(Sender: TObject);
    procedure BtnStrClick(Sender: TObject);
  private
    procedure ProcessDetail(const value: variant);
    procedure ProcessStrDetail(const value: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses UnAnonClass;

procedure TForm1.BtnVariantClick(Sender: TObject);
var
  IntArr : array of variant;
  GetArr :TArrayClass;
begin

  GetArr :=TArrayClass.create;

      IntArr := ['%1',2.99,'three'];

      GetArr.ParseArray<variant>(IntArr,ProcessDetail);

  GetArr.free;
end;

procedure TForm1.BtnStrClick(Sender: TObject);
var
  StrArr : array of string;
  GetArr :TArrayClass;
begin

  GetArr :=TArrayClass.create;

      StrArr := ['%1','2.99','three'];

      GetArr.ParseArray<string>(StrArr,ProcessStrDetail);

  GetArr.free;

end;

procedure TForm1.ProcessDetail(const value: variant);
begin
  memo1.lines.add(value);
end;

procedure TForm1.ProcessStrDetail(const value: string);
begin
  memo1.lines.add(value);
end;



end.
