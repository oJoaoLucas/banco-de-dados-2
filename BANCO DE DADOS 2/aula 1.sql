CREATE TABLE ALUNOS (
    RA NUMBER(8) NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    MENSALIDADE NUMBER(12,2) NULL,
    DATA_NASC DATE NULL,
    CONSTRAINT PK_ALUNOS PRIMARY KEY (RA)
);

CREATE TABLE MATERIA(
    ID_MATERIA NUMBER(6),
    DS_MATERIA VARCHAR2(50),
    CONSTRAINT PK_MATERIAS PRIMARY KEY (ID_MATERIA)
);

CREATE TABLE ALUNO_MATERIAS(
    RA NUMBER (8) NOT NULL,
    ID_MATERIA NUNMBER(6) NOT NULL,
    CONSTRAINT PK_ALUNO_MATERIAS PRIMARY KEY (RA, ID_MATERIA)
);

ALTER TABLE ALUNOS_MATERIAS
	ADD CONSTRAINT FK_ALUNO_MATERIAS_RA
		FOREIGN KEY (RA)
		REFERECES ALUNOS(RA);
