# D-Csv-to-Json-Fala-BR
Converter Arquivos do Fala-Br  CSV para JSON, disponibilizados no site da CGU,  ou  Enviar para BD. Atende a LAI sobre transparência. 


## Compilador

![output-onlinepngtools](https://user-images.githubusercontent.com/12707032/134813053-e58f3c44-99c9-45a4-8c0a-290e97032adb.png)


### Delphi 10.4 Community Edidtion
   - Usado o Firedac ETL com batchMove para Gravar no Banco de Dados
   
#### - Foi enviado junto com os fontes uma versao compilada (.exe) para quem nao precisar ou nao queiram baixar e instalar o Delphi Comunnity.

#### - Devido a Grande velocidade de Leitura e conversão dos arquivos, nao vi a necessidade de usar Multhreading.



### BD usado:
## Firebird 3.0
   - O Firedac ETL foi configurado para "Limpar"(Truncate)  os arquivos antes de Gavar novo lote, pois os dados fornecidos pelos arquivos baixados incluem sempre todo o movimento do ano selecinado.
   - Na pasta DataBase tem DDL SQL para a criação das Tabelas.

## Boss como gerenciador de dependencias para Delphi
  - para instalar boos
    https://github.com/HashLoad/boss
   
  - pós Clonar executar Boss Install. Caso não Queira usar o Boss você pode clonar  manualmente com o git clone e adicionar no path do Delphi. Mais instrucoes no GitHub Boss
  - e no git do DataSet Serialize
  
## DataSet Serialize for Delphi and Lazarus (FPC)

### Converte JSON para DATASET e DATASET para JSON

#### https://github.com/viniciussanchez/dataset-serialize/

DataSet Serialize is a set of features to make working with JSON and DataSet simple. It has features such as exporting or importing records into a DataSet, validate if JSON has all required attributes (previously entered in the DataSet), exporting or importing the structure of DataSet fields in JSON format. In addition to managing nested JSON through master detail or using TDataSetField (you choose the way that suits you best). All this using class helpers, which makes it even simpler and easier to use.

- ---------------------------------------------------------------------------------------------------------

# Notas

- Os arquivos CSV fornecidos pelo download no site, não vem com uma linha de cabeçalho, por isso foram usados arrays para definir os mesmos assim como foi usado tambem para definir os tipos de dados para gerar o JSON corretamente.
- Voce pode usar o aplicativo apenas para gerar arquivos JSON dos dados Baixados
- Ele converte os 3 tipos de Arquivos disponivies no site, abaixo link do mesmo, Pedido, Recurso e Solicitante.
- 1 = Inteiro/Numerico, 2 = String, 3 = Date
- Na Pasta Arrays estao disponivveis o arrays usados. Pode ser usado para converter qualquer  que nao disponha de "Cabeçalho" padrao na linha 1, de arquivo CSV em Json
- O Tipo DATE no firebird Deve ser usado no padrao aaaa-mm-dd devido ao firedac-ETL
- Foi usado um filtro na leitura do arquivo CSV baixado, exclundo "Federal" e incluindo "Roraima" para separar apenas para meu estado. Altere para atender as suas necessidades
- 
- https://falabr.cgu.gov.br/publico/DownloadDados/DownloadDadosLai.aspx 




### Duvida Sugestões ... entre em contato. Qualquer melhora nos codigos será bem Vinda

# Divirta-se e aproveite



## screen

![image](https://user-images.githubusercontent.com/12707032/134814237-70e04e26-071d-4a46-9871-d0f2c0a37c0a.png)





