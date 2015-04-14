CREATE TABLE CondicaoDeOcupacao (
 codigoCondicaoDeOcupacao INT NOT NULL,
 descricao VARCHAR(300)
);

ALTER TABLE CondicaoDeOcupacao ADD CONSTRAINT PK_CondicaoDeOcupacao PRIMARY KEY (codigoCondicaoDeOcupacao);


CREATE TABLE Pessoa (
 situacao INT NOT NULL,
 codigoTrabalho CHAR(10) NOT NULL,
 codigo CHAR(10) NOT NULL,
 sexo CHAR(10),
 dataDeNascimento CHAR(10),
 condicaoDomicilio CHAR(10),
 condicaoFamilia CHAR(10),
 identificacaoFamilia CHAR(10),
 cor CHAR(10)
);

ALTER TABLE Pessoa ADD CONSTRAINT PK_Pessoa PRIMARY KEY (situacao,codigoTrabalho,codigo);


CREATE TABLE Questionário (
);


CREATE TABLE RM (
 codigo CHAR(10) NOT NULL,
 nome CHAR(10)
);

ALTER TABLE RM ADD CONSTRAINT PK_RM PRIMARY KEY (codigo);


CREATE TABLE Trabalho (
 codigoTrabalho CHAR(10) NOT NULL,
 Tipo CHAR(10),
 ocupacaoExercida CHAR(10),
 tempoDePermanencia CHAR(10),
 atividadePrincipal CHAR(10),
 numeroDeOcupadosEmprendimento CHAR(10),
 remuneracaoMensalHabitual CHAR(10),
 remuneracaoRealRecebida CHAR(10),
 horasEfetivamenteTrabalhadas CHAR(10),
 contribuicao CHAR(10)
);

ALTER TABLE Trabalho ADD CONSTRAINT PK_Trabalho PRIMARY KEY (codigoTrabalho);


ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_0 FOREIGN KEY (situacao) REFERENCES CondicaoDeOcupacao (codigoCondicaoDeOcupacao);
ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_1 FOREIGN KEY (codigoTrabalho) REFERENCES Trabalho (codigoTrabalho);
ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_2 FOREIGN KEY (codigo) REFERENCES RM (codigo);


