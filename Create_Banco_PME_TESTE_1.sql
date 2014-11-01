drop table DOMICILIO cascade;
drop table PESSOA cascade;
drop table Entrevista cascade;
drop table RM cascade;


create table RM(
	RMcodigo int not null primary key,
	RMnome varchar(100)
);

create table ENTREVISTA
(
    	mes int not null,
    	ano int not null,
    	tipo int not null,
    	primary Key (mes, ano, tipo)
);

create table DOMICILIO (
 	NumeroDeSerie int not null,
	NumeroDeControle int not null,
	Painel char not null,
	GrupoRotacional int not null,
	RmCodigo int not null references RM(RMcodigo),	
	PRIMARY KEY (NumeroDeSerie, NumeroDeControle, Painel, GrupoRotacional )

);


create table PESSOA(
	sexo char,
	diaDeNascimento int,
	mesDeNascimento int,
	AnoDeNascimento int,
	idade int,
	condicaoNoDomicilio int,
	condicaoNaFamilia int,
	numeroDaFamilia int,
	corOuRaça int,
	pesoCor1 varchar[7],
	pecExp1 varchar[7],
	sabeLerEscrever int,
	frequentaEscola int,
	cursoSeriado int,
	qualCursoFrequenta int,
	qualSerieFrequenta int,
	anteriormenteFrequentouEscola int,
	qualCursoGrauElevado int,
	cursoAnteriorSeriado int,
	concluiuComAprovacaoPrimeiraSerie int,
	qualAultimaSerieAprovada int,
	concluiuOcursoQueFrequentouAnteriormente int,
	concluiuAlgumCursoProfissionalizante int,
	frequentaCursoProfissional int, 
	qualFoiONivelExigidoCursoProfissionalizante int,	
	NumeroDeSerie int NOT NULL ,
	NumeroDeControle int NOT NULL ,
	Painel char NOT NULL,
	GrupoRotacional int NOT NULL, 	
	FOREIGN KEY (NumeroDeSerie, NumeroDeControle, Painel, GrupoRotacional ) REFERENCES domicilio (NumeroDeSerie, NumeroDeControle, Painel, GrupoRotacional )
);

drop table DOMICILIO_Entrevista cascade;
create table DOMICILIO_ENTREVISTA (
	NumeroDeSerie int not null,
	NumeroDeControle int not null,
	Painel char not null,
	GrupoRotacional int not null,
	mes int not null,
	ano int not null,
	tipo int not null,
	totalDeMoradores int,
	totalDemoradores10Mais int,
	FOREIGN KEY (NumeroDeSerie, NumeroDeControle, Painel, GrupoRotacional ) REFERENCES DOMICILIO (NumeroDeSerie, NumeroDeControle, Painel, GrupoRotacional ),
	FOREIGN KEY (mes, ano,tipo) REFERENCES ENTREVISTA (mes, ano,tipo) 
);




INSERT INTO rm VALUES ( 26, 'Recife' )  ;
INSERT INTO rm VALUES ( 29, 'Salvador' )  ;
INSERT INTO rm VALUES ( 31, 'Belo Horizonte' );  
INSERT INTO rm VALUES ( 33, 'Rio de Janeiro' );  
INSERT INTO rm VALUES ( 35, 'São Paulo' );  
INSERT INTO rm VALUES ( 41, 'Curitiba' );  
INSERT INTO rm VALUES ( 43, 'Porto Alegre' )  








