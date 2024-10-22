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
    sku INT,
    nome INT,
    id INT,
    id_produto REFERENCES produto(sku),
    id_lanche REFERENCES lanche(nome),
    id_pap REFERENCES passo_a_passo(id_pap),
    CONSTRAINT id_receita PRIMARY KEY (id_produto, id_lanche, id_pap)
);

-- Insert into produto
INSERT INTO produto (sku, nome, quantidade, validade) VALUES
('SKU001', 'Pão', 50, '2025-12-31'),
('SKU002', 'Queijo', 30, '2024-11-30'),
('SKU003', 'Presunto', 20, '2024-10-15'),
('SKU004', 'Tomate', 40, '2024-09-20'),
('SKU005', 'Alface', 25, '2024-10-10'),
('SKU006', 'Maionese', 15, '2025-05-01'),
('SKU007', 'Mostarda', 10, '2025-07-01'),
('SKU008', 'Ketchup', 12, '2025-08-15'),
('SKU009', 'Cebola', 18, '2024-11-01'),
('SKU010', 'Batata Frita', 22, '2025-02-14'),
('SKU011', 'Frango', 35, '2024-04-30'),
('SKU012', 'Carne Moída', 28, '2025-03-01'),
('SKU013', 'Ovo', 45, '2024-06-30'),
('SKU014', 'Peixe', 10, '2025-09-15'),
('SKU015', 'Cerveja', 50, '2025-01-01');

-- Insert into passo_a_passo
INSERT INTO passo_a_passo (ordem, quantidade) VALUES
('Passo 1', 1),
('Passo 2', 2),
('Passo 3', 3),
('Passo 4', 1),
('Passo 5', 2),
('Passo 6', 1),
('Passo 7', 2),
('Passo 8', 1),
('Passo 9', 2),
('Passo 10', 1),
('Passo 11', 2),
('Passo 12', 3),
('Passo 13', 1),
('Passo 14', 2),
('Passo 15', 1);

-- Insert into instrucao
INSERT INTO instrucao (nome, id_passo) VALUES
('Misturar', 1),
('Cortar', 2),
('Aquecer', 3),
('Montar', 4),
('Servir', 5),
('Degustar', 6),
('Refrigerar', 7),
('Temperar', 8),
('Adicionar', 9),
('Retirar', 10),
('Misturar novamente', 11),
('Deixar descansar', 12),
('Finalizar', 13),
('Empratar', 14),
('Limpar', 15);

-- Insert into lanche
INSERT INTO lanche (nome) VALUES
('Sanduíche'),
('Salada'),
('Wrap'),
('Taco'),
('Burguer'),
('Hot Dog'),
('Panqueca'),
('Torta'),
('Pão de Queijo'),
('Brigadeiro'),
('Bolo'),
('Brownie'),
('Pizza'),
('Empada'),
('Sushi');

-- Insert into receita
INSERT INTO receita (sku, nome, id, id_produto, id_lanche, id_pap) VALUES
(1, 1, 1, 'SKU001', 'Sanduíche', 1),
(2, 2, 2, 'SKU002', 'Salada', 2),
(3, 3, 3, 'SKU003', 'Wrap', 3),
(4, 4, 4, 'SKU004', 'Taco', 4),
(5, 5, 5, 'SKU005', 'Burguer', 5),
(6, 6, 6, 'SKU006', 'Hot Dog', 6),
(7, 7, 7, 'SKU007', 'Panqueca', 7),
(8, 8, 8, 'SKU008', 'Torta', 8),
(9, 9, 9, 'SKU009', 'Pão de Queijo', 9),
(10, 10, 10, 'SKU010', 'Brigadeiro', 10),
(11, 11, 11, 'SKU011', 'Bolo', 11),
(12, 12, 12, 'SKU012', 'Brownie', 12),
(13, 13, 13, 'SKU013', 'Pizza', 13),
(14, 14, 14, 'SKU014', 'Empada', 14),
(15, 15, 15, 'SKU015', 'Sushi', 15);