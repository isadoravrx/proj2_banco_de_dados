-- Inserindo dados na tabela pessoa
INSERT INTO pessoa (data_nascimento, id, nome, sobrenome, sexo, email, numero, bairro, complemento, rua, idade, CPF, RG, fk_recompensa_id_recompensa) VALUES
('1980-01-15', 1001, 'José', 'Silva', 'M', 'jose@example.com', 123, 'Centro', 'Ap. 101', 'Rua Principal', 42, '123.456.789-00', '1234567', NULL),
('1985-03-20', 1002, 'Ana', 'Santos', 'F', 'ana@example.com', 456, 'Bairro A', 'Ap. 202', 'Rua Secundária', 37, '987.654.321-00', '7654321', NULL),
('1978-07-10', 1003, 'Carlos', 'Oliveira', 'M', 'carlos@example.com', 789, 'Bairro B', 'Casa', 'Rua dos Fundos', 44, '111.222.333-00', '9876543', NULL);

-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (n__do_pis, conta_bancaria, salario, fk_pessoa_id) VALUES
(123456789, 987654321, 10000, 1001),
(987654321, 123456789, 1300, 1002),
(101010, 202020, 10, 1003);

-- Inserindo dados na tabela departamento
INSERT INTO departamento (nome_do_departamento) VALUES
('RH'),
('Financeiro'),
('Vendas'),
('Produção'),
('Ensino'),
('Logística');

-- Inserindo dados na tabela funcionario_administrativo
INSERT INTO Funcionario_administrativo (registro_cfa, fk_funcionario_n__do_pis, fk_funcionario_conta_bancaria, fk_funcionario_fk_pessoa_id, fk_departamento_nome_do_departamento) VALUES
(123231, 123456789, 987654321, 1001, 'RH');

-- Inserindo dados na tabela professor
INSERT INTO Professor(carteira_de_identificacao_do_professor, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id) VALUES
(321321, 987654321, 123456789, 1002),
(21, 101010, 202020, 1003);

-- Inserindo dados na tabela pessoa
INSERT INTO autor (nome, sobrenome, data_nascimento, id_autor, sexo) VALUES
('Machado', 'de Assis', '1839-06-21', 1, 'M'),
('J.R.R.', 'Tolkien', '1892-01-03', 2, 'M'),
('George', 'Orwell', '1903-06-25', 3, 'M'),
('J.K.', 'Rowling', '1965-07-31', 4, 'F'),
('Jane', 'Austen', '1775-12-16', 5, 'F');

-- Inserindo dados na tabela empresa
INSERT INTO empresa (cnpj, nome, telefone) VALUES
('12345678901234', 'Editora A', '123456789'),
('23456789012345', 'Editora B', '234567890'),
('34567890123456', 'Editora C', '345678901'),
('45678901234567', 'Editora D', '456789012'),
('56789012345678', 'Editora E', '567890123');

-- Inserindo dados na tabela instituição
INSERT INTO instituicao (telefone, rua, numero, bairro, email, cnpj) VALUES
('987654321', 'Rua Instituição 1', 10, 'Bairro Instituição 1', 'instituicao1@example.com', '98765432101234'),
('876543210', 'Rua Instituição 2', 20, 'Bairro Instituição 2', 'instituicao2@example.com', '87654321012345'),
('765432109', 'Rua Instituição 3', 30, 'Bairro Instituição 3', 'instituicao3@example.com', '76543210923456'),
('654321098', 'Rua Instituição 4', 40, 'Bairro Instituição 4', 'instituicao4@example.com', '65432109834567'),
('543210987', 'Rua Instituição 5', 50, 'Bairro Instituição 5', 'instituicao5@example.com', '54321098745678');

-- Inserindo dados na tabela categoria_produto
INSERT INTO categoria_produto (id, nome, endereco_estante) VALUES
(1, 'Livros', 'Terreo'),
(2, 'Papelaria', '1 andar');

-- Inserindo dados na tabela categoria_estante
INSERT INTO categoria_estante (nome, ID, endereco_sessao) VALUES
('Livros de ficção', 1, 'Prateleira 2');

-- Inserindo dados na tabela produto
INSERT INTO produto (id, preco, nome_produto, fk_categoria_produto_id) VALUES
(1, 29.99, 'Dom Casmurro', 1),
(2, 29.99, '1984', 1),
(3, 29.99, 'O Senhor dos Anéis', 1),
(4, 29.99, 'Harry Potter e a Pedra Filosofal', 1),
(5, 19.99, 'Caneta', 2);

-- Inserindo dados na tabela lista_materiais
INSERT INTO lista_materiais (modelo_fardamento, serie) VALUES
('Uniforme A', '1º Ano'),
('Uniforme B', '2º Ano'),
('Uniforme C', '3º Ano');

-- Inserindo dados na tabela material_papelaria
INSERT INTO material_papelaria (vencimento, fk_produto_id, fk_empresa_cnpj, fk_instituicao_cnpj) VALUES
(2025, 1, '12345678901234', '98765432101234'),
(2025, 2, '23456789012345', '87654321012345');

-- Inserindo dados na tabela palestra_debate
INSERT INTO palestra_debate (horario, lotacao, taxa_ingresso, id_evento, sala, livro_tema) VALUES
('15:00:00', 50, 20.00, 1, 'Sala A', 'Dom Casmurro'),
('17:30:00', 80, 15.00, 2, 'Sala B', '1984');


-- Inserindo dados na tabela promove
INSERT INTO promove (fk_instituicao_cnpj, fk_palestra_debate_id_evento) VALUES
('98765432101234', 1),
('87654321012345', 2);

-- Inserindo dados na tabela servico
INSERT INTO servico (id_servico, tipo_servico, taxa_servico) VALUES
(101, 'Entrega', 50),
(102, 'Retirada', 30),
(103, 'Download', 80);

-- Inserindo dados na tabela editora
INSERT INTO editora (email, numero, rua, bairro, telefone, nome) VALUES
('contato@editora1.com', 100, 'Rua Editora 1', 'Bairro Editora 1', '123456789', 'Editora A'),
('contato@editora2.com', 200, 'Rua Editora 2', 'Bairro Editora 2', '234567890', 'Editora B'),
('contato@editora3.com', 300, 'Rua Editora 3', 'Bairro Editora 3', '345678901', 'Editora C'),
('contato@editora4.com', 400, 'Rua Editora 4', 'Bairro Editora 4', '456789012', 'Editora D'),
('contato@editora5.com', 500, 'Rua Editora 5', 'Bairro Editora 5', '567890123', 'Editora E');


-- Inserindo dados na tabela livros
INSERT INTO livro (nome_livro, ano_publicacao, qtd_exemplares, id_livro, fk_produto_id, fk_servico_id_servico, fk_categoria_estante_id, fk_editora_nome) VALUES
('Dom Casmurro', 1899, 100, 1, 1, 101, 1, 'Editora A'),
('1984', 1949, 150, 2, 1, 101, 1, 'Editora B'),
('O Senhor dos Anéis', 1954, 200, 3, 1, 101, 1, 'Editora C'),
('Harry Potter e a Pedra Filosofal', 1997, 180, 4, 1, 101, 1, 'Editora D'),
('Cem Anos de Solidão', 1967, 120, 5, 1, 101, 1, 'Editora E');


UPDATE Funcionario
SET salario = salario * 1.10
WHERE n__do_pis IN (
    SELECT fk_Funcionario_n__do_pis
    FROM Professor
);

DELETE FROM Funcionario
WHERE n__do_pis = (
    SELECT fk_funcionario_n__do_pis
    FROM funcionario_administrativo
    WHERE fk_funcionario_n__do_pis = 123456789
);

