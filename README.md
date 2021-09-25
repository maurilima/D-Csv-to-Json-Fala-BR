# D-Csv-to-Json-Fala-BR
Converter Download de Dados LAI Csv para JSON e/ou Envaiar para BD


### Delphi 10.4 Community Edidtion
   - Usado o Firedac ETL com batchMove para Gravar no Banco de Dados
   
#### Foi enviado junto com os fontes uma versao compilada (.exe) para quem nao precisar ou nao queiram baixar e instalar o Delphi Comunnity.



### Firebird 3.0
   - O Firedac ETL foi configurado para "Limpar"(Truncate)  os arquivos antes de Gavar novo lote, pois os dados fornecidos pelos arquivos baixados incluem sempre todo o mivmento do ano selecinado
   - Na pasta DatBase tem o SQL para a criação das Tabelas Usadas

## Boss como gereniador de Pacotes
  - para instalar boos
    https://github.com/HashLoad/boss
   
  - pós Clonar executar Boss Install. Caso não Queira usar o Boss você pode clonar  manualmente com o git clone e adicionar no path do Delphi. Mais instrucoes no GitHub Boss
  - e no git do DataSet Serialize
  
### Converte JSON para DATASET
#### https://github.com/viniciussanchez/dataset-serialize/



- Obs. Os arquivos CSV fornecidos pelo download no site, não vem com uma linha de cabeçalho, por isso foram usados arrays para definir os mesmos assim como foi usado tambem para definir os tipos de dados para gerar o JSON corretamente.
- Voce pode usar o aplicativo apenas para gerar arquivos JSON dos dados Baixados
- Ele converte os 3 tipos de Arquivos disponivies no site, abaixo link do mesmo, Pedido, Recurso e Solicitante.
- https://falabr.cgu.gov.br/publico/DownloadDados/DownloadDadosLai.aspx 
- 
- 1 = Inteiro/Numerico, 2 = String, 3 = Date
- Na Pasta Arrays estao disponivveis o arrays usados. Pode ser usado para converter qualquer  que nao disponha de "Cabeçalho" padrao na linha 1 arquivo CSV em Json
- O Tipo date no firebird Deve ser usado no padrao aaaa-mm-dd devido ao firedac-ETL
- Foi usado um filtro na leitura do arquivo CSV baixado, localizando "Estadual" e "Roraima" para separa apenas para meu estado. Altere para atender as suas necessidades




### Duvida Sugestões ... entre em contato. Qualquer melhora nos codigos será bem Vinda

# Divirta-se e aproveite



![image](https://user-images.githubusercontent.com/12707032/134786057-3c0d9d42-b464-41e7-808a-89eba481c0fb.png)


