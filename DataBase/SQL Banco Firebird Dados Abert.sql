-- Drop table

-- DROP TABLE PEDIDO;

CREATE TABLE PEDIDO (
    IDPEDIDO INTEGER NOT NULL,
    PROTOCOLOPEDIDO VARCHAR(17),
    ESFERA VARCHAR(30),
    UF VARCHAR(60),
    MUNICIPIO VARCHAR(200),
    ORGAODESTINATARIO VARCHAR(250),
    SITUACAO VARCHAR(199),
    DATAREGISTRO DATE,
    PRAZOATENDIMENTO DATE,
    FOIPRORROGADO CHAR(3),
    FOIREENCAMINHADO VARCHAR(3),
    FORMARESPOSTA VARCHAR(200),
    ORIGEMSOLICITACAO VARCHAR(50),
    IDSOLICITANTE INTEGER,
    ASSUNTOPEDIDO VARCHAR(200),
    SUBASSUNTOPEDIDO VARCHAR(200),
    DATARESPOSTA DATE,
    DECISAO VARCHAR(100),
    ESPECIFICACAODECISAO VARCHAR(200),
    CONSTRAINT INTEG_11 PRIMARY KEY (IDPEDIDO)
);
CREATE UNIQUE INDEX RDB$PRIMARY4 ON PEDIDO (IDPEDIDO);



-- DROP TABLE RECURSO;

CREATE TABLE RECURSO (
    IDRECURSO INTEGER NOT NULL,
    IDRECURSOPRECEDENTE INTEGER,
    IDPEDIDO INTEGER,
    IDSOLICITANTE INTEGER,
    PROTOCOLOPEDIDO VARCHAR(17),
    ESFERA VARCHAR(30),
    UF VARCHAR(60),
    MUNICIPIO VARCHAR(200),
    ORGAODESTINATARIO VARCHAR(250),
    INSTANCIA VARCHAR(80),
    SITUACAO VARCHAR(80),
    DATAREGISTRO DATE,
    PRAZOATENDIMENTO DATE,
    ORIGEMSOLICITACAO VARCHAR(50),
    TIPORECURSO VARCHAR(80),
    DATARESPOSTA DATE,
    TIPORESPOSTA VARCHAR(80),
    CONSTRAINT INTEG_7 PRIMARY KEY (IDRECURSO)
);
CREATE UNIQUE INDEX RDB$PRIMARY2 ON RECURSO (IDRECURSO);



-- Drop table

-- DROP TABLE SOLICITANTE;

CREATE TABLE SOLICITANTE (
    IDSOLICITANTE INTEGER NOT NULL,
    TIPODEMANDANTE VARCHAR(15),
    DATANASCIMENTO DATE,
    GENERO VARCHAR(13),
    ESCOLARIDADE VARCHAR(200),
    PROFISSAO VARCHAR(200),
    TIPOPESSOAJURIDICA VARCHAR(200),
    PAIS VARCHAR(200),
    UF VARCHAR(60),
    MUNICIPIO VARCHAR(200),
    CONSTRAINT INTEG_5 PRIMARY KEY (IDSOLICITANTE)
);
CREATE UNIQUE INDEX RDB$PRIMARY1 ON SOLICITANTE (IDSOLICITANTE);
