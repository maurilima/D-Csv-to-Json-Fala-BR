program DCsvToJson;

uses
  Vcl.Forms,
  Frm.View.Main in 'Frm.View.Main.pas' {FrmViewMain},
  CvsToJson.Model.Conexao in 'Model\CvsToJson.Model.Conexao.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmViewMain, FrmViewMain);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
