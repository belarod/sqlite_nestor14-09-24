CREATE TABLE produto(
    sku VARCHAR(8) PRIMARY KEY,
    nome VARCHAR(50),
    quantidade INT,
    validade DATE,
    CHECK ( quantidade>=0 )
);

CREATE TABLE passo_a_passo(
    id_pap INTEGER PRIMARY KEY AUTOINCREMENT,
    ordem VARCHAR(20),
    quantidade INT,
    CHECK ( quantidade>=0 )
);

CREATE TABLE instrucao(
    nome VARCHAR(20) PRIMARY KEY,
    id_passo REFERENCES passo_a_passo(id_pap)
);

CREATE TABLE lanche(
    nome VARCHAR(30) PRIMARY KEY
);

CREATE TABLE receita(
    id_produto REFERENCES produto(sku),
    id_lanche REFERENCES lanche(nome),
    id_pap REFERENCES passo_a_passo(id_pap),
    CONSTRAINT id_receita PRIMARY KEY (id_produto, id_lanche, id_pap)
);