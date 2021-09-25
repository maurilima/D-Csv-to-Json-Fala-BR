## Dicionarios de Dados Transparência Fala-BR

------------------------------
-- CAMPOS: PEDIDOS
------------------------------
- IdPedido - inteiro: identificador único do pedido (não mostrado no sistema);
- ProtocoloPedido - texto(17): número do protocolo do pedido;
- Esfera - texto(30): descrição da esfera do pedido;
- UF - texto(2): Sigla da UF do pedido quando não federal;
- Municipio - texto(200): Nome do município do pedido quando não federal;
- OrgaoDestinatario  - texto(250): nome do órgão destinatário do pedido;
- Situacao - texto(200): descrição da situação do pedido;
- DataRegistro - Data DD/MM/AAAA HH:MM:SS : data de abertura do pedido;
- PrazoAtendimento - Data DD/MM/AAAA HH:MM:ss : data limite para atendimento ao pedido;
- FoiProrrogado - texto(3) "Sim" ou "Não" : informa se houve prorrogação do prazo do pedido;
- FoiReencaminhado - texto(3) "Sim" ou "Não": informa se o pedido foi reencaminhado;
- FormaResposta - texto(200): tipo de resposta escolhida pelo solicitante na abertura do pedido;
- OrigemSolicitacao - texto(50): informa se o pedido foi aberto em um Balcão SIC ou pela Internet;
- IdSolicitante - inteiro: identificador único do solicitante (não mostrado no sistema);
- AssuntoPedido - texto(200) : assunto do pedido atribuído pel SIC;
- SubAssuntoPedido - texto(200) : subassunto do pedido atribuída pelo SIC;
- DataResposta - Data DD/MM/AAAA HH:MM:SS : data da resposta ao pedido (campo em branco para pedidos que ainda estejam na situação "Em Tramitação");
- Decisao - texto(100) : tipo resposta dada ao pedido (campo em branco para pedidos que ainda estejam na situação "Em Tramitação");
- EspecificacaoDecisao - texto(200): subtipo da resposta dada ao pedido (campo em branco para pedidos que ainda estejam na situação "Em Tramitação");


------------------------------
-- CAMPOS: RECURSOS
------------------------------

- IdRecurso - inteiro: identificador único do recurso (não mostrado no sistema);
- IdRecursoPrecedente - inteiro: identificador único do recurso que precedeu este (não mostrado no sistema e em branco no caso de Recursos de 1ª Instância e Reclamações);
- IdPedido - inteiro: identificador único do pedido ao qual o recurso pertence (não mostrado no sistema);
- IdSolicitante - inteiro: identificador único do solicitante (não mostrado no sistema);
- ProtocoloPedido - texto(17): número do protocolo do pedido ao qual o recurso pertence;
- Esfera - texto(30): descrição da esfera do recurso;
=> UF - texto(2): Sigla da UF do recurso quando não federal; Obs. No Arquivo a UF vem com o Nome Compelto. Deve foi aumentado para 60
   posições
- Municipio - texto(200): Nome do município do recurso quando não federal;
- OrgaoDestinatario - texto(250): nome do órgão destinatário do recurso;
- Instancia - texto(80): descrição da instância do recurso;
- Situacao - texto(80): descrição da situação do recurso;
- DataRegistro - Data DD/MM/AAAA HH:MM:SS : data de abertura do recurso;
- PrazoAtendimento - Data DD/MM/AAAA HH:MM:SS : data limite para atendimento ao recurso;
- OrigemSolicitacao - texto(50): informa se o recurso foi aberto em um Balcão SIC ou pela Internet;
- TipoRecurso - texto(80): motivo de abertura do recurso;
- DataResposta - Data DD/MM/AAAA HH:MM:SS : data da resposta ao recurso (campo em branco para recursos que ainda estejam na situação "Em Tramitação");
- TipoResposta - texto(80): tipo resposta dada ao recurso (campo em branco para recursos que ainda estejam na situação "Em Tramitação");


// ///////////////////////////////////////////////////////////////////




------------------------------
-- CAMPOS: SOLICITANTES
------------------------------

- IdSolicitante - inteiro: identificador único do solicitante (não mostrado no sistema);
- TipoDemandante - texto(15): Pessoa Fìsica ou Pessoa Jurídica;
- DataNascimento - Data DD/MM/AAAA : data de nascimento do solicitante;
- Genero - texto(13) : Masculino, Feminino ou Outro(em branco para pessoa jurídica);
- Escolaridade - texto(200): Escolaridade do solicitante (em branco para pessoa jurídica);
- Profissao - texto(200): Profissão do solicitante (em branco para pessoa jurídica);
- TipoPessoaJuridica - texto(200): tipo de Pessoa Jurídica do solicitante (em branco para pessoa física)
- Pais - texto(200): país de residência do solicitante;
- UF - texto(2): UF de residência do solicitante;
- Municipio - texto(200): Município de residência do solicitante;



// ////////////////////////////////////////////////////////////


Dados dos pedidos de acesso à informação e solicitantes
Os arquivos abaixo apresentam:

Dicionário de Dados dos Relatórios de Pedidos

Dicionário de Dados de Solicitantes


Atualização dos arquivos: Diária


Modelos do nome do arquivo

1. Para arquivos CSV:

AAAAMMDD_relatorio_pedidos_AAAA.csv

AAAAMMDD _solicitantes_AAAA.csv


2. Para arquivos XML:

AAAAMMDD_relatorio_pedidos_AAAA.xml

AAAAMMDD _solicitantes_AAAA.xml


Origem das informações: Plataforma Integrada de Ouvidoria e Acesso à Informação (Fala.BR).

// ///////////////////////////////////////////////////////



Dados dos recursos e reclamações
Os arquivos abaixo apresentam:

Dicionário de Dados dos Recursos e Reclamações

Dicionário de Dados de Solicitantes


Atualização dos arquivos: Diária


Modelos do nome do arquivo

1. Para arquivos CSV:

AAAAMMDD_relatorio_recursos_reclamacoes_AAAA.csv

AAAAMMDD _solicitantes_AAAA.csv


2. Para arquivos XML:

AAAAMMDD_relatorio_recursos_reclamacoes_AAAA.xml

AAAAMMDD _solicitantes_AAAA.xml


Origem das informações: Plataforma Integrada de Ouvidoria e Acesso à Informação (Fala.BR).


Base do ano corrente: 2021

