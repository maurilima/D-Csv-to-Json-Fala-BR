unit CvsToJson.Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  Vcl.ExtDlgs, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DApt,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove, FireDAC.Stan.StorageBin;

type
  TDm = class(TDataModule)
    Conn: TFDConnection;
    FmPedidos: TFDMemTable;
    FDCargoPedidos: TFDQuery;
    FDBMovePedidos: TFDBatchMove;
    FDDataReaderPedidos: TFDBatchMoveDataSetReader;
    FDWritePedidos: TFDBatchMoveDataSetWriter;
    FmRecursos: TFDMemTable;
    FQRecursos: TFDQuery;
    FQRecursosIDRECURSO: TIntegerField;
    FQRecursosIDRECURSOPRECEDENTE: TIntegerField;
    FQRecursosIDPEDIDO: TIntegerField;
    FQRecursosIDSOLICITANTE: TIntegerField;
    FQRecursosPROTOCOLOPEDIDO: TStringField;
    FQRecursosESFERA: TStringField;
    FQRecursosUF: TStringField;
    FQRecursosMUNICIPIO: TStringField;
    FQRecursosORGAODESTINATARIO: TStringField;
    FQRecursosINSTANCIA: TStringField;
    FQRecursosSITUACAO: TStringField;
    FQRecursosDATAREGISTRO: TDateField;
    FQRecursosPRAZOATENDIMENTO: TDateField;
    FQRecursosORIGEMSOLICITACAO: TStringField;
    FQRecursosTIPORECURSO: TStringField;
    FQRecursosDATARESPOSTA: TDateField;
    FQRecursosTIPORESPOSTA: TStringField;
    FbmRecursos: TFDBatchMove;
    FDRRecursos: TFDBatchMoveDataSetReader;
    FDWRecursos: TFDBatchMoveDataSetWriter;
    FbmSolicitante: TFDBatchMove;
    FmSolicitante: TFDMemTable;
    FQSolicitante: TFDQuery;
    FDRSolicitante: TFDBatchMoveDataSetReader;
    FdwSolicitante: TFDBatchMoveDataSetWriter;
    FQSolicitanteIDSOLICITANTE: TIntegerField;
    FQSolicitanteTIPODEMANDANTE: TStringField;
    FQSolicitanteDATANASCIMENTO: TDateField;
    FQSolicitanteGENERO: TStringField;
    FQSolicitanteESCOLARIDADE: TStringField;
    FQSolicitantePROFISSAO: TStringField;
    FQSolicitanteTIPOPESSOAJURIDICA: TStringField;
    FQSolicitantePAIS: TStringField;
    FQSolicitanteUF: TStringField;
    FQSolicitanteMUNICIPIO: TStringField;
    FmSolicitanteIDSOLICITANTE: TIntegerField;
    FmSolicitanteTIPODEMANDANTE: TStringField;
    FmSolicitanteDATANASCIMENTO: TDateField;
    FmSolicitanteGENERO: TStringField;
    FmSolicitanteESCOLARIDADE: TStringField;
    FmSolicitantePROFISSAO: TStringField;
    FmSolicitanteTIPOPESSOAJURIDICA: TStringField;
    FmSolicitantePAIS: TStringField;
    FmSolicitanteUF: TStringField;
    FmSolicitanteMUNICIPIO: TStringField;
    FmRecursosIDRECURSO: TIntegerField;
    FmRecursosIDRECURSOPRECEDENTE: TIntegerField;
    FmRecursosIDPEDIDO: TIntegerField;
    FmRecursosIDSOLICITANTE: TIntegerField;
    FmRecursosPROTOCOLOPEDIDO: TStringField;
    FmRecursosESFERA: TStringField;
    FmRecursosUF: TStringField;
    FmRecursosMUNICIPIO: TStringField;
    FmRecursosORGAODESTINATARIO: TStringField;
    FmRecursosINSTANCIA: TStringField;
    FmRecursosSITUACAO: TStringField;
    FmRecursosDATAREGISTRO: TDateField;
    FmRecursosPRAZOATENDIMENTO: TDateField;
    FmRecursosORIGEMSOLICITACAO: TStringField;
    FmRecursosTIPORECURSO: TStringField;
    FmRecursosDATARESPOSTA: TDateField;
    FmRecursosTIPORESPOSTA: TStringField;
    FDCargoPedidosIDPEDIDO: TIntegerField;
    FDCargoPedidosPROTOCOLOPEDIDO: TStringField;
    FDCargoPedidosESFERA: TStringField;
    FDCargoPedidosUF: TStringField;
    FDCargoPedidosMUNICIPIO: TStringField;
    FDCargoPedidosORGAODESTINATARIO: TStringField;
    FDCargoPedidosSITUACAO: TStringField;
    FDCargoPedidosDATAREGISTRO: TDateField;
    FDCargoPedidosPRAZOATENDIMENTO: TDateField;
    FDCargoPedidosFOIPRORROGADO: TStringField;
    FDCargoPedidosFOIREENCAMINHADO: TStringField;
    FDCargoPedidosFORMARESPOSTA: TStringField;
    FDCargoPedidosORIGEMSOLICITACAO: TStringField;
    FDCargoPedidosIDSOLICITANTE: TIntegerField;
    FDCargoPedidosASSUNTOPEDIDO: TStringField;
    FDCargoPedidosSUBASSUNTOPEDIDO: TStringField;
    FDCargoPedidosDATARESPOSTA: TDateField;
    FDCargoPedidosDECISAO: TStringField;
    FDCargoPedidosESPECIFICACAODECISAO: TStringField;
    FmPedidosIDPEDIDO: TIntegerField;
    FmPedidosPROTOCOLOPEDIDO: TStringField;
    FmPedidosESFERA: TStringField;
    FmPedidosUF: TStringField;
    FmPedidosMUNICIPIO: TStringField;
    FmPedidosORGAODESTINATARIO: TStringField;
    FmPedidosSITUACAO: TStringField;
    FmPedidosDATAREGISTRO: TDateField;
    FmPedidosPRAZOATENDIMENTO: TDateField;
    FmPedidosFOIPRORROGADO: TStringField;
    FmPedidosFOIREENCAMINHADO: TStringField;
    FmPedidosFORMARESPOSTA: TStringField;
    FmPedidosORIGEMSOLICITACAO: TStringField;
    FmPedidosIDSOLICITANTE: TIntegerField;
    FmPedidosASSUNTOPEDIDO: TStringField;
    FmPedidosSUBASSUNTOPEDIDO: TStringField;
    FmPedidosDATARESPOSTA: TDateField;
    FmPedidosDECISAO: TStringField;
    FmPedidosESPECIFICACAODECISAO: TStringField;
    procedure FDBMovePedidosFindDestRecord(ASender: TObject; var AFound: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.FDBMovePedidosFindDestRecord(ASender: TObject; var AFound: Boolean);
begin
    AFound :=  True;
end;

end.
