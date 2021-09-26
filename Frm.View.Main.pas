unit Frm.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Buttons,
  Vcl.StdCtrls, System.IOUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client , system.JSON, Vcl.Grids, Vcl.DBGrids, Vcl.Dialogs,System.UITypes,
  Vcl.ExtDlgs, Vcl.ExtCtrls, DataSet.Serialize;

type
  TFrmViewMain = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    DsDados: TDataSource;
    DBGrid1: TDBGrid;
    cvsToJson: TSpeedButton;
    OpenCsv: TSpeedButton;
    edtNomeCsv: TEdit;
    JsonToDataSet: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    edtDestionoJson: TEdit;
    Label2: TLabel;
    Panel3: TPanel;
    SelectFileJson: TSpeedButton;
    Panel4: TPanel;
    SaveToFileJson: TSpeedButton;
    lblTotal: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel6: TPanel;
    OpenFileCsv: TOpenTextFileDialog;
    FileToSave: TSaveTextFileDialog;
    spbUpdateDB: TSpeedButton;
    Panel7: TPanel;
    procedure csvToJosnClick(Sender: TObject);
    procedure jsonToDataSetClick(Sender: TObject);
    procedure OpenCsvClick(Sender: TObject);
    procedure SelectFileJsonClick(Sender: TObject);
    procedure SaveToFileJsonClick(Sender: TObject);
    procedure spbUpdateDBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    aCsv : Integer;
    const
      //  Tipos =>  aTypes 1 = integer 2 = string  3 = Date
{$REGION 'Constantes Definicoes de Cabecalho dos CSV e Tipo'}


        aFieldsPedido : array [1..19] of string =  ('IDPEDIDO',
                                                    'PROTOCOLOPEDIDO',
                                                    'ESFERA',
                                                    'UF',
                                                    'MUNICIPIO',
                                                    'ORGAODESTINATARIO',
                                                    'SITUACAO',
                                                    'DATAREGISTRO',
                                                    'PRAZOATENDIMENTO',
                                                    'FOIPRORROGADO',
                                                    'FOIREENCAMINHADO',
                                                    'FORMARESPOSTA',
                                                    'ORIGEMSOLICITACAO',
                                                    'IDSOLICITANTE',
                                                    'ASSUNTOPEDIDO',
                                                    'SUBASSUNTOPEDIDO',
                                                    'DATARESPOSTA',
                                                    'DECISAO',
                                                    'ESPECIFICACAODECISAO');
        aTypesPedido  : array [1..19] of integer = ( 1,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     3,
                                                     3,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     1,
                                                     2,
                                                     2,
                                                     3,
                                                     2,
                                                     2 );
        aFieldsRecurso : array [1..17] of string =  ( 'IDRECURSO' ,
                                                      'IDRECURSOPRECEDENTE',
                                                      'IDPEDIDO',
                                                      'IDSOLICITANTE',
                                                      'PROTOCOLOPEDIDO',
                                                      'ESFERA',
                                                      'UF',
                                                      'MUNICIPIO',
                                                      'ORGAODESTINATARIO',
                                                      'INSTANCIA',
                                                      'SITUACAO',
                                                      'DATAREGISTRO',
                                                      'PRAZOATENDIMENTO',
                                                      'ORIGEMSOLICITACAO',
                                                      'TIPORECURSO',
                                                      'DATARESPOSTA',
                                                      'TIPORESPOSTA' );
        aTypesRecurso : array [1..17] of integer = ( 1,
                                                     1,
                                                     1,
                                                     1,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     2,
                                                     3,
                                                     3,
                                                     2,
                                                     2,
                                                     3,
                                                     2 );

        aFieldsSolicitante : array [1..10] of string = ( 'IDSOLICITANTE',
                                                          'TIPODEMANDANTE',
                                                          'DATANASCIMENTO',
                                                          'GENERO',
                                                          'ESCOLARIDADE',
                                                          'PROFISSAO',
                                                          'TIPOPESSOAJURIDICA',
                                                          'PAIS',
                                                          'UF',
                                                          'MUNICIPIO');
        aTypesSolicitante : array [1..10] of integer = ( 1,
                                                         2,
                                                         3,
                                                         2,
                                                         2,
                                                         2,
                                                         2,
                                                         2,
                                                         2,
                                                         2  );



{$ENDREGION}


   procedure PrepareJson( const value: string; const delimiter: string; aJValue: TJSONArray;  aTypes : array of integer ; aFields : array of string );
   Function InverteData(data: string) : string;

  public
    { Public declarations }
  end;

var
  FrmViewMain: TFrmViewMain;


implementation

uses
  System.SysUtils, system.StrUtils, CvsToJson.Model.Conexao;

{$R *.dfm}

procedure TFrmViewMain.FormCreate(Sender: TObject);
begin
  lblTotal.Caption := '';
end;

Function TFrmViewMain.InverteData(data: string) : string;

begin
   result:=copy(Data,7,4)+'/'+Copy(data,4,2)+'/'+Copy(data,1,2);
end;

procedure TFrmViewMain.csvToJosnClick(Sender: TObject);
var
  lNomeArquivo: string;
  lStream: TStreamReader;
  lLinha: string;
  conta: integer;
  aJArray : TJSONArray;

begin
  Memo1.Lines.Clear;
  Application.ProcessMessages;
  if edtNomeCsv.Text = '' then
  begin
    MessageDlg('Selecione um Arquivo para Converter', mtError, [mbOK] , 0  );
    exit
  end;
  lNomeArquivo := edtNomeCsv.Text;
  lStream := TFile.OpenText(lNomeArquivo);
  conta := 0;
  aJArray :=  TJSONArray.Create;
  try
    while not lStream.EndOfStream do
    begin
      lLinha := lStream.ReadLine;
      //  Filtro Usado para pegar apenas os dados do meu Estado
      if pos(Uppercase('Federal'), Uppercase(lLinha)) = 0 then
        if pos(Uppercase('Roraima'), Uppercase(lLinha)) > 0 then
        begin
          case aCsv of
          1:  PrepareJson(lLinha,';', aJArray, aTypesPedido, aFieldsPedido);

          2:  PrepareJson(lLinha,';', aJArray, aTypesRecurso, aFieldsRecurso);

          3:  PrepareJson(lLinha,';', aJArray, aTypesSolicitante, aFieldsSolicitante);
          end;
         inc(conta);
         lblTotal.Caption := 'Total Objetos Gerados: '+conta.ToString();
         application.ProcessMessages;

        end;
    end;
    memo1.text := aJArray.Format();
  finally
    lStream.Free;
    aJArray.DisposeOf;
  end;

  lblTotal.Caption := 'Total Gerado: '+conta.ToString();
end;

procedure TFrmViewMain.jsonToDataSetClick(Sender: TObject);
begin
  case aCsv of
      1:begin
         DsDados.DataSet := Dm.FmPedidos;
         if not(Dm.FmPedidos.Active ) then
            Dm.FmPedidos.Open;
          Dm.FmPedidos.EmptyDataSet;
          Dm.FmPedidos.LoadFromJSON(memo1.Lines.Text);
        end;

      2:begin
         DsDados.DataSet := Dm.FmRecursos;
         if not(Dm.FmRecursos.Active ) then
            Dm.FmRecursos.Open;
          Dm.FmRecursos.EmptyDataSet;
          Dm.FmRecursos.LoadFromJSON(memo1.Lines.Text);
        end;
      3:begin
         DsDados.DataSet := Dm.FmSolicitante;
         if not(Dm.FmSolicitante.Active ) then
            Dm.FmSolicitante.Open;
          Dm.FmSolicitante.EmptyDataSet;
          Dm.FmSolicitante.LoadFromJSON(memo1.Lines.Text);
        end;
  end;


end;

procedure TFrmViewMain.PrepareJson( const value, delimiter: string; aJValue: TJSONArray;
           aTypes : array of integer ; aFields : array of string);
var
  dx: integer;
  ns: string;
  Txt: string;
  delta: integer;
  i    : integer;
  jObj    : TJSONObject;
begin
  i:= 0;
  jObj :=  TJSONObject.Create;
  delta := Length(delimiter);
  Txt := AnsiReplaceStr(value,#0, '')    + delimiter;
  try
    while Length(Txt) > 0 do
    begin
      dx := pos(delimiter, Txt);
      ns := Copy(Txt, 0, dx - 1);
      case aTypes[i] of
         1:if ns = '' then
            jObj.AddPair(aFields[i],TJSONNumber.Create(0))
         else
         jObj.AddPair(aFields[i],TJSONNumber.Create(ns));


         2:jObj.AddPair(aFields[i],ns);
         3:begin   // Field Tipo Data
              //   Firebird Firedac usa '-' formato ansi no lugar da barra para inserção
              if ns <> '' then
              begin
                 ns := InverteData(ns); // Inverte data 'dd/mm/aaaa' para 'aaa/mm/dd'
                 ns := AnsiReplaceStr(ns,'/','-');  // Troca '/' para '-'
                 // Se o seu banco aceita '/' remover ou comentar essa linha
                 jObj.AddPair(aFields[i],ns);
              end
              else
                 jObj.AddPair(aFields[i],TJSONNull.Create());
                // Firebird na o aceita em campo data '' somente null
           end;
      end;
      inc(i);
      Txt := Copy(Txt, dx + delta, MaxInt);
    end;
  finally
      aJValue.AddElement(jObj);  // Nao Liberar com free. Levanta Exception
  end;
end;
procedure TFrmViewMain.SelectFileJsonClick(Sender: TObject);
begin
   if FileToSave.Execute then
      edtDestionoJson.Text := FileToSave.FileName;
end;

procedure TFrmViewMain.spbUpdateDBClick(Sender: TObject);
begin
  case aCsv of
    1: Dm.FDBMovePedidos.Execute;
    2: Dm.FbmRecursos.Execute;
    3: Dm.FbmSolicitante.Execute;
  end;
end;

procedure TFrmViewMain.SaveToFileJsonClick(Sender: TObject);
begin
 if edtDestionoJson.Text = EmptyStr then
 begin
    MessageDlg('Informe um Arquivo de Destino por favor!.', mterror,[mbOK],0);
    Exit;
 end;

 if FileExists(edtDestionoJson.text) then
    if messagedlg('Arquivo de Destino ja Existe!!. Deseja Continuar', TMsgDlgType.mtWarning, [mbYes,mbNo],0) = mrNo then
        exit;
 try
    memo1.Lines.SaveToFile(trim(edtDestionoJson.text));
    messagedlg('Arquivo Gravado com sucesso!!', mtInformation, [mbOk],0);
 except on e:exception do
     begin
        messagedlg('Erro Ao Gravar Arquivo:'+e.Message, mtError, [mbYes,mbNo],0);
    end;
 end;
end;

procedure TFrmViewMain.OpenCsvClick(Sender: TObject);
begin
 if OpenFileCsv.Execute then
  if FileExists(OpenFileCsv.FileName ) then
     begin
        edtNomeCsv.Text := OpenFileCsv.FileName;
        if (Pos( UpperCase('SolicitantesPedidos' ), UpperCase(OpenFileCsv.FileName))  > 0) or
           (Pos( UpperCase('SolicitantesRecursos'), UpperCase(OpenFileCsv.FileName)) > 0) then
           aCsv := 3
        else if Pos( UpperCase('Pedidos'), UpperCase(OpenFileCsv.FileName)) > 0  then aCsv :=1
        else if Pos(UpperCase( 'Recursos'),UpperCase(OpenFileCsv.FileName)) > 0  then aCsv := 2;
     end;
end;

end.











//  Salvo pelo ETL FireDac nao precisso Usar

//       SQL = 'INSET INTO PEDIDOS '+
//        '( '+
//        'IDPEDIDO, '+
//        'PROTOCOLOPEDIDO, '+
//        'ESFERA, '+
//        'UF, '+
//        'MUNICIPIO, '+
//        'ORGAODESTINATARIO, '+
//        'SITUACAO, '+
//        'DATAREGISTRO, '+
//        'PRAZOATENDIMENTO, '+
//        'FOIPRORROGADO, '+
//        'FOIREENCAMINHADO, '+
//        'FORMARESPOSTA, '+
//        'ORIGEMSOLICITACAO, '+
//        'IDSOLICITANTE, '+
//        'ASSUNTOPEDIDO, '+
//        'SUBASSUNTOPEDIDO, '+
//        'DATARESPOSTA, '+
//        'DECISAO, '+
//        'ESPECIFICACAODECISAO '+
//        ') VALUES '+
//        '( '+
//        ':IDPEDIDO, '+
//        ':PROTOCOLOPEDIDO, '+
//        ':ESFERA, '+
//        ':UF, '+
//        ':MUNICIPIO, '+
//        ':ORGAODESTINATARIO, '+
//        ':SITUACAO, '+
//        ':DATAREGISTRO, '+
//        ':PRAZOATENDIMENTO, '+
//        ':FOIPRORROGADO, '+
//        ':FOIREENCAMINHADO, '+
//        ':FORMARESPOSTA, '+
//        ':ORIGEMSOLICITACAO, '+
//        ':IDSOLICITANTE, '+
//        ':ASSUNTOPEDIDO, '+
//        ':SUBASSUNTOPEDIDO, '+
//        ':DATARESPOSTA, '+
//        ':DECISAO, '+
//        ':ESPECIFICACAODECISAO ) ';


