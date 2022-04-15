unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,inifiles,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm2 = class(TForm)
    titulo1: TLabel;
    curso: TLabel;
    textCurso: TEdit;
    PorcMC: TLabel;
    textMC: TEdit;
    PorcEF: TLabel;
    textEF: TEdit;
    PorcPP: TLabel;
    txtPP: TEdit;
    registro: TButton;
    procedure registroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure crearDatos;
  end;

var
  Form2: TForm2;
  ArchivoDatos : TIniFile;

implementation

{$R *.fmx}

uses Unit3;

procedure TForm2.crearDatos;
begin
     ArchivoDatos := TIniFile.Create(ExtractFilePath(ParamStr(0)) + '\Datos.txt');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
     crearDatos;
end;

procedure TForm2.registroClick(Sender: TObject);
begin
     ArchivoDatos.WriteString('Datos','Curso',textCurso.Text);
     ArchivoDatos.WriteString('Datos','PorcentajeMC',textMC.Text);
     ArchivoDatos.WriteString('Datos','PocentajeEF',textEF.Text);
     ArchivoDatos.WriteString('Datos','PorcentajePP',txtPP.Text);
     Form3.ShowModal;
end;

end.
