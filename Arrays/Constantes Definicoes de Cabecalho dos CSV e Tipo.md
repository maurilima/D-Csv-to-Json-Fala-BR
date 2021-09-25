# Constantes Definicoes de Cabecalho dos CSV e Tipo
 
## Pedidos
   - --------------------------------------------------------------------------------------------------------

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

## Recursos 
        - -----------------------------------------------------------------------------------------------
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


## Solicitantes
   - ------------------------------------------------------------------------------------------------ 
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



