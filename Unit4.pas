unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm4 = class(TForm)
    promedio: TLabel;
    nota: TLabel;
    newRegistro: TButton;
    exit: TButton;
    procedure newRegistroClick(Sender: TObject);
    procedure exitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses Unit1;

procedure TForm4.exitClick(Sender: TObject);
begin
     close;
     Form1.Show;
end;

procedure TForm4.newRegistroClick(Sender: TObject);
begin
     Form1.show;
end;

end.
