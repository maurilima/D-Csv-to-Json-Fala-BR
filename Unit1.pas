unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Buttons, U_XML.JSON, U_JSON.XML,
  U_FormatConverter, Vcl.StdCtrls, System.IOUtils;

type
  TForm1 = class(TForm)
    fmc1: TFormatConverter;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;



{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  memo1.Lines.Clear;
  memo1.lines.LoadFromFile(UTF8toAnsi( 'D:\Usr\Coger\Dados Abertos - Docs\20210830_Pedidos_xml_2021.xml'));
end;


procedure TForm1.BitBtn2Click(Sender: TObject);
var
  Arq: TextFile;
  Texto: string;
  Txt: TStringList;
begin
  Txt := TStringList.Create; // cria a stringlist
  Txt.StrictDelimiter := True; // indica que o delimitador é somente aquele definido abaixo
  Txt.Delimiter := ';'; // caractere delimitador de campos

   Txt.DelimitedText := Texto; // desmembra o texto
   Txt.LoadFromFile(Utf8ToAnsi('D:\Usr\Coger\Dados Abertos - Docs\20210830_Pedidos_csv_2021.csv'));
   memo1.Lines.Add(txt.Text);
   FreeAndNil(Txt);

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  lNomeArquivo: string;
  lStream: TStreamReader;
  lLinha: string;
  conta : integer;
begin
  memo1.Lines.Clear;
  label1.Caption := '';
  lNomeArquivo := 'D:\Usr\Coger\Dados Abertos - Docs\20210830_Pedidos_csv_2021.csv';
  lStream := TFile.OpenText(lNomeArquivo);
  conta := 0;
  try
    while not lStream.EndOfStream do
    begin
      lLinha := lStream.ReadLine;
      if pos(Uppercase('Federal'),Uppercase(lLinha)  ) = 0  then
         if pos(Uppercase('Roraima'),Uppercase(lLinha)  ) > 0 then
         begin
           memo1.Lines.Add(lLinha);
           inc(conta);
         end;
    end;
  finally
    lStream.Free;
  end;
  label1.Caption := conta.ToString();

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  fmc1.XMLtoJSON.fileToFile('D:\Usr\Coger\Dados Abertos - Docs\20210830_Pedidos_xml_2021.xml','D:\Usr\Coger\Dados Abertos - Docs\meu.json');
end;

end.
