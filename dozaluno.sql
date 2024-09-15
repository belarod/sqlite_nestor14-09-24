CREATE TABLE professor(
    cpf VARCHAR(11),
    nome VARCHAR(50),
    ctps VARCHAR(11),
    PRIMARY KEY (cpf)
);

CREATE TABLE aluno(
    cpf VARCHAR(11),
    nome VARCHAR(50),
    matricula VARCHAR(7) UNIQUE,
    PRIMARY KEY (cpf)
);

CREATE TABLE disciplina(
    nome VARCHAR(30),
    capacidade INT,
    CHECK ( capacidade>=0 ),
    PRIMARY KEY (nome)
);

CREATE TABLE sala(
    nome VARCHAR(3) PRIMARY KEY,
    id_disciplina REFERENCES disciplina(nome)
);

CREATE TABLE ministra(
    id_prof REFERENCES professor(cpf),
    id_disc REFERENCES disciplina(nome),
    CONSTRAINT professor_disciplina PRIMARY KEY (id_prof, id_disc)
);

CREATE TABLE estuda(
    id_aluno REFERENCES aluno(cpf),
    id_disc REFERENCES disciplina(nome),
    CONSTRAINT aluno_disciplina PRIMARY KEY (id_aluno, id_disc)
);