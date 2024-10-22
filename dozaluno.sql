CREATE TABLE professor(
    cpf VARCHAR(11),
    nome VARCHAR(50),
    ctps VARCHAR(11),
    PRIMARY KEY (cpf)
);

CREATE TABLE aluno(
    cpf VARCHAR(11),
    nome VARCHAR(50),
    matricula VARCHAR(7),
    PRIMARY KEY (cpf)
);

CREATE TABLE disciplina(
    nome VARCHAR(30),
    capacidade INT,
    CHECK (capacidade >= 0),
    PRIMARY KEY (nome)
);

CREATE TABLE sala(
    nome VARCHAR(3) PRIMARY KEY,
    id_disciplina VARCHAR(30) REFERENCES disciplina(nome)
);

CREATE TABLE ministra(
    id_prof VARCHAR(11) REFERENCES professor(cpf),
    id_disc VARCHAR(30) REFERENCES disciplina(nome),
    CONSTRAINT professor_disciplina PRIMARY KEY (id_prof, id_disc)
);

CREATE TABLE estuda(
    id_aluno VARCHAR(11) REFERENCES aluno(cpf),
    id_disc VARCHAR(30) REFERENCES disciplina(nome),
    CONSTRAINT aluno_disciplina PRIMARY KEY (id_aluno, id_disc)
);

-- Insert into professor (no duplicates)
INSERT INTO professor (cpf, nome, ctps) VALUES
('12345678901', 'Alice Silva', '12345678901'),
('23456789012', 'Bruno Costa', '23456789012'),
('34567890123', 'Carla Mendes', '34567890123'),
('45678901234', 'Daniel Oliveira', '45678901234'),
('56789012345', 'Eva Santos', '56789012345'),
('67890123456', 'Felipe Rocha', '67890123456'),
('78901234567', 'Gina Almeida', '78901234567'),
('89012345678', 'Hugo Pereira', '89012345678'),
('90123456789', 'Isabel Fernandes', '90123456789'),
('01234567890', 'João Martins', '01234567890'),
('12345098761', 'Karen Lima', '12345098761'),
('23456109872', 'Lucas Carvalho', '23456109872'),
('34567210983', 'Marta Ribeiro', '34567210983'),
('45678321094', 'Nina Soares', '45678321094'),
('56789432105', 'Otávio Pires', '56789432105');

-- Insert into aluno
INSERT INTO aluno (cpf, nome, matricula) VALUES
('09876543210', 'Paula Souza', '2023001'),
('10987654321', 'Ricardo Gomes', '2023002'),
('21098765432', 'Sofia Lima', '2023003'),
('32109876543', 'Tiago Alves', '2023004'),
('43210987654', 'Ursula Costa', '2023005'),
('54321098765', 'Victor Hugo', '2023006'),
('65432109876', 'Wanda Mendes', '2023007'),
('76543210987', 'Xuxa Pereira', '2023008'),
('87654321098', 'Yuri Ribeiro', '2023009'),
('98765432109', 'Zara Almeida', '2023010'),
('09812345674', 'Aline Santos', '2023011'),
('10923456785', 'Bruno Silva', '2023012'),
('21034567896', 'Clara Costa', '2023013'),
('32145678907', 'Davi Oliveira', '2023014'),
('43256789018', 'Eva Ribeiro', '2023015');

-- Insert into disciplina
INSERT INTO disciplina (nome, capacidade) VALUES
('Matematica', 30),
('Fisica', 25),
('Quimica', 20),
('Historia', 35),
('Geografia', 40),
('Biologia', 30),
('Ingles', 25),
('Portugues', 30),
('Ed. Fisica', 20),
('Artes', 15),
('Musica', 25),
('Programacao', 30),
('Economia', 35),
('Sociologia', 40),
('Filosofia', 30);

-- Insert into sala
INSERT INTO sala (nome, id_disciplina) VALUES
('A1', 'Matematica'),
('A2', 'Fisica'),
('B1', 'Quimica'),
('B2', 'Historia'),
('C1', 'Geografia'),
('C2', 'Biologia'),
('D1', 'Ingles'),
('D2', 'Portugues'),
('E1', 'Ed. Fisica'),
('E2', 'Artes'),
('F1', 'Musica'),
('F2', 'Programacao'),
('G1', 'Economia'),
('G2', 'Sociologia'),
('H1', 'Filosofia');

-- Insert into ministra
INSERT INTO ministra (id_prof, id_disc) VALUES
('12345678901', 'Matematica'),
('23456789012', 'Fisica'),
('34567890123', 'Quimica'),
('45678901234', 'Historia'),
('56789012345', 'Geografia'),
('67890123456', 'Biologia'),
('78901234567', 'Ingles'),
('89012345678', 'Portugues'),
('90123456789', 'Ed. Fisica'),
('01234567890', 'Artes'),
('12345098761', 'Musica'),
('23456109872', 'Programacao'),
('34567210983', 'Economia'),
('45678321094', 'Sociologia'),
('56789432105', 'Filosofia');

-- Insert into estuda
INSERT INTO estuda (id_aluno, id_disc) VALUES
('09876543210', 'Matematica'),
('10987654321', 'Fisica'),
('21098765432', 'Quimica'),
('32109876543', 'Historia'),
('43210987654', 'Geografia'),
('54321098765', 'Biologia'),
('65432109876', 'Ingles'),
('76543210987', 'Portugues'),
('87654321098', 'Ed. Fisica'),
('98765432109', 'Artes'),
('09812345674', 'Musica'),
('10923456785', 'Programacao'),
('21034567896', 'Economia'),
('32145678907', 'Sociologia'),
('43256789018', 'Filosofia');

--

ALTER TABLE professor ADD salario INT;

UPDATE professor SET salario = 1000
WHERE salario is null;

UPDATE professor
SET salario = salario + 300
WHERE ctps LIKE '%3' OR ctps LIKE '%5' OR ctps LIKE '%3'

