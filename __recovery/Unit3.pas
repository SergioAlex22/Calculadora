unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,inifiles,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm3 = class(TForm)
    curso1: TLabel;
    notaMC: TLabel;
    txtnotaMC: TEdit;
    notaEF: TLabel;
    txtnotaEF: TEdit;
    notaPP: TLabel;
    txtnotaPP: TEdit;
    prom: TButton;
    procedure promClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure crearDatos;
  end;

var
  Form3: TForm3;
  ArchivoDatos : TIniFile;

implementation

{$R *.fmx}

uses Unit4;

procedure TForm3.crearDatos;
begin
     ArchivoDatos := TIniFile.Create(ExtractFilePath(ParamStr(0)) + '\Datos.txt');
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
     crearDatos;
end;

procedure TForm3.promClick(Sender: TObject);
begin
     ArchivoDatos.WriteString('Datos','NotaMC',txtnotaMC.Text);
     ArchivoDatos.WriteString('Datos','NotaEF',txtnotaEF.Text);
     ArchivoDatos.WriteString('Datos','NotaPP',txtnotaPP.Text);
     Form4.show;
end;

end.
