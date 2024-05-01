-- Inserindo dados na tabela pessoa
INSERT INTO pessoa (data_nascimento, id, nome, sobrenome, sexo, email, numero, bairro, complemento, rua, idade, CPF, RG, fk_recompensa_id_recompensa) VALUES
('1980-01-15', 1001, 'José', 'Silva', 'M', 'jose@example.com', 123, 'Centro', 'Ap. 101', 'Rua Principal', 42, '123.456.789-00', '1234567', NULL),
('1985-03-20', 1002, 'Ana', 'Santos', 'F', 'ana@example.com', 456, 'Bairro A', 'Ap. 202', 'Rua Secundária', 37, '987.654.321-00', '7654321', NULL),
('1978-07-10', 1003, 'Carlos', 'Oliveira', 'M', 'carlos@example.com', 789, 'Bairro B', 'Casa', 'Rua dos Fundos', 44, '111.222.333-00', '9876543', NULL),
('2004-09-25', 1004, 'Mariana', 'Ferreira', 'F', 'mariana@example.com', 321, 'Bairro C', 'Casa 2', 'Rua Nova', 29, '444.555.666-00', '9876544', NULL),
('2004-05-12', 1005, 'Paulo', 'Ribeiro', 'M', 'paulo@example.com', 654, 'Bairro F', 'Ap. 303', 'Rua Velha', 38, '777.888.999-00', '6543210', NULL),
('2004-11-08', 1006, 'Juliana', 'Fernandes', 'F', 'juliana@example.com', 987, 'Bairro F', 'Casa 3', 'Rua Larga', 26, '111.222.333-00', '9876543', NULL),
('2004-03-17', 1007, 'Fernando', 'Souza', 'M', 'fernando@example.com', 741, 'Bairro F', 'Ap. 404', 'Rua Estreita', 49, '222.333.444-00', '3210987', NULL),
('2004-03-17', 1008, 'João', 'Souza', 'M', 'joao@example.com', 741, 'Bairro F', 'Ap. 404', 'Rua torta', 49, '222.333.222-00', '32210987', NULL),
('1978-07-10', 1009, 'Carlos', 'Oliveira', 'M', 'carlos@example.com', 789, 'Bairro F', 'Casa', 'Rua dos Fundos', 44, '111.222.333-00', '9876543', NULL),
('2004-09-25', 1010, 'Mariana', 'Ferreira', 'F', 'mariana@example.com', 321, 'Bairro C', 'Casa 2', 'Rua Nova', 29, '444.555.666-00', '9876544', NULL),
('2004-05-12', 1011, 'Paulo', 'Ribeiro', 'M', 'paulo@example.com', 654, 'Bairro D', 'Ap. 303', 'Rua Velha', 38, '777.888.999-00', '6543210', NULL),
('2004-11-08', 1012, 'Juliana', 'Fernandes', 'F', 'juliana@example.com', 987, 'Bairro E', 'Casa 3', 'Rua Larga', 26, '111.222.333-00', '9876543', NULL),
('2004-03-17', 1013, 'Fernando', 'Souza', 'M', 'fernando@example.com', 741, 'Bairro F', 'Ap. 404', 'Rua Estreita', 49, '222.333.444-00', '3210987', NULL),
('2004-03-17', 1014, 'João', 'Souza', 'M', 'joao@example.com', 741, 'Bairro F', 'Ap. 404', 'Rua torta', 49, '222.333.222-00', '32210987', NULL);



-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (n__do_pis, conta_bancaria, salario, fk_pessoa_id) VALUES
(123456789, 987654321, 10000, 1001),
(987654321, 123456789, 1300, 1002),
(101010, 202020, 10, 1003),
(21213, 111, 10, 1004);

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

INSERT INTO vendedor (regime_trabalho, salario, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id) VALUES
('CLT', 100, 21213, 111, 1004);

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

INSERT INTO Trasportador_escolar (Responsavel_do_veiculo, Numero_da_placa, Quantidade_de_alunos, fk_pessoa_id) VALUES
('Fernando', 'ABC123', 20, 1007);

INSERT INTO Responsavel_financeiro (conta_bancaria, status_pagamento, fk_pessoa_id) VALUES
(987654321, false, 1006);

insert into segmento (nome_do_segmento) VALUES 
('Exatas');

-- Inserindo dados na tabela aluno
INSERT INTO aluno (quantidade_de_faltas, turno, turma, id_da_matricula, saldo_da_cantina, email, serie, telefone, nome, fk_pessoa_id, fk_trasportador_escolar_numero_da_placa, fk_trasportador_escolar_fk_pessoa_id, fk_responsavel_financeiro_conta_bancaria, fk_responsavel_financeiro_fk_pessoa_id, fk_segmento_nome_do_segmento, fk_lista_materiais_serie) VALUES
(5, 'Manhã', '1', 1001, 50.00, 'aluno1@example.com', '1º Serie', '123456789', 'João', 1008, 'ABC123', 1007, 987654321, 1006, 'Exatas', '1º Ano'),
(5, 'Manhã', '1', 1002, 50.00, 'aluno1@example.com', '1º Serie', '123456789', 'Paulo', 1005, 'ABC123', 1007, 987654321, 1006, 'Exatas', '1º Ano'),
(5, 'Manhã', '1', 1003, 50.00, 'aluno1@example.com', '1º Serie', '123456789', 'mariana', 1006, 'ABC123', 1007, 987654321, 1006, 'Exatas', '1º Ano'),
(5, 'Manhã', '1', 1004, 50.00, 'aluno1@example.com', '1º Serie', '123456789', 'João', 1009, 'ABC123', 1007, 987654321, 1006, 'Exatas', '1º Ano'),
(5, 'Manhã', '1', 1005, 50.00, 'aluno1@example.com', '1º Serie', '123456789', 'Paulo', 1010, 'ABC123', 1007, 987654321, 1006, 'Exatas', '1º Ano'),
(5, 'Manhã', '1', 1006, 50.00, 'aluno1@example.com', '1º Serie', '123456789', 'mariana', 1011, 'ABC123', 1007, 987654321, 1006, 'Exatas', '1º Ano');


-- Inserindo dados na tabela cliente
INSERT INTO cliente (fk_pessoa_id) VALUES
(1008),
(1007);

INSERT INTO venda (cupom_desconto, metodo_pagamento, valor_produto, id_venda, valor_total, fk_vendedor_fk_Funcionario_n__do_pis, fk_vendedor_fk_Funcionario_conta_bancaria, fk_vendedor_fk_Funcionario_fk_pessoa_id, fk_cliente_fk_pessoa_id) VALUES 
(null, 'Cartão', 10, 1, 10, 21213, 111, 1004, 1008),
(null, 'Cartão', 10, 2, 10, 21213, 111, 1004, 1008),
(null, 'Dinheiro', 19.99, 3, 39.99, 21213, 111, 1004, 1007),
(null, 'Dinheiro', 19.99, 4, 39.99, 21213, 111, 1004, 1007);



INSERT into contem (fk_venda_id_venda, fk_produto_id, quantidade_produtos) VALUES 
(1, 1, 2),
(2, 2, 1),
(3, 5, 2),
(4, 5, 2);


query:

WITH produtos_mais_comprados AS (
    SELECT
        v.fk_cliente_fk_pessoa_id AS id_cliente,
        c.fk_produto_id AS id_produto,
        SUM(c.quantidade_produtos) AS total_comprado
    FROM
        contem c
    JOIN
        venda v ON c.fk_venda_id_venda = v.id_venda
    GROUP BY
        v.fk_cliente_fk_pessoa_id, c.fk_produto_id
),
ranking_produtos AS (
    SELECT
        id_cliente,
        id_produto,
        total_comprado,
        RANK() OVER(PARTITION BY id_cliente ORDER BY total_comprado DESC) AS ranking
    FROM
        produtos_mais_comprados
)
SELECT
    id_cliente,
    id_produto,
    total_comprado
FROM
    ranking_produtos
WHERE
    ranking = 1;



explicação da query:

1. **WITH produtos_mais_comprados AS (**
   - `WITH`: nos permite definir uma ou mais subconsultas que podem ser referenciadas posteriormente na consulta principal.
   - `produtos_mais_comprados`: Este é o nome atribuído, que representa os produtos mais comprados por cada cliente.

2. **SELECT**
       - `SELECT`: Esta é a parte da consulta onde selecionamos as colunas que queremos retornar.
       - `v.fk_cliente_fk_pessoa_id AS id_cliente`: Aqui estamos selecionando o ID do cliente da tabela `venda` e renomeando-o como `id_cliente`.
       - `c.fk_produto_id AS id_produto`: Esta parte seleciona o ID do produto da tabela `contem` e renomeia-o como `id_produto`.
       - `SUM(c.quantidade_produtos) AS total_comprado`: Aqui estamos usando a função de agregação `SUM()` para somar a quantidade de produtos comprados para cada cliente e produto. Estamos renomeando essa soma como `total_comprado`.

3. **FROM**
       - `FROM`: Aqui especificamos de onde estamos obtendo os dados.
       - `contem c`: Estamos selecionando dados da tabela `contem` e a referenciando como `c`.
       - `JOIN`: Estamos realizando uma junção entre as tabelas `contem` e `venda` com base na coluna `fk_venda_id_venda` de `contem` e `id_venda` de `venda`.
       - `ON`: Aqui especificamos a condição de junção.
       - `c.fk_venda_id_venda = v.id_venda`: Estamos especificando que queremos juntar as linhas onde o ID da venda em `contem` corresponde ao ID da venda em `venda`.

4. **GROUP BY**
       - `GROUP BY`: Aqui estamos agrupando os resultados pela combinação do ID do cliente e do ID do produto, para que possamos calcular o total de produtos comprados por cada cliente e produto.

5. **ranking_produtos AS (**
   - `ranking_produtos`: Este é o nome atribuído à segunda subconsulta, que representa os produtos classificados por cliente com base no total comprado.

6. **SELECT**
       - `SELECT`: Mais uma vez, selecionamos as colunas que queremos retornar.
       - `id_cliente`: Selecionamos o ID do cliente.
       - `id_produto`: Selecionamos o ID do produto.
       - `total_comprado`: Selecionamos o total comprado.
       - `RANK() OVER(PARTITION BY id_cliente ORDER BY total_comprado DESC) AS ranking`: Aqui usamos a função de janela `RANK()` para atribuir um ranking com base no total comprado por cliente, ordenado em ordem decrescente.

7. **FROM**
       - `FROM`: Especificamos de onde estamos obtendo os dados, que é a primeira CTE `produtos_mais_comprados`.

8. **SELECT**
       - `SELECT`: Selecionamos as colunas que queremos retornar na consulta final.
       - `id_cliente`: Retornamos o ID do cliente.
       - `id_produto`: Retornamos o ID do produto.
       - `total_comprado`: Retornamos o total comprado.

9. **FROM**
       - `FROM`: Especificamos de onde estamos obtendo os dados, `ranking_produtos`.

10. **WHERE**
        - `WHERE`: Aqui estamos filtrando os resultados para retornar apenas os produtos com ranking igual a 1, ou seja, o produto mais comprado por cada cliente.


