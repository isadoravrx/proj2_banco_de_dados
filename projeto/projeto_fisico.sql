/* projeto_logico: */

CREATE TABLE braile (
    fk_livro_id_livro INTEGER,
    fk_livro_fk_produto_id int,
    PRIMARY KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
);

CREATE TABLE servico (
    id_servico INTEGER PRIMARY KEY,
    tipo_servico VARCHAR,
    taxa_servico INTEGER
);

CREATE TABLE audiobook (
    fk_livro_id_livro INTEGER,
    fk_livro_fk_produto_id int,
    PRIMARY KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
);

CREATE TABLE venda (
    cupom_desconto INTEGER,
    metodo_pagamento VARCHAR,
    endereco_entrega VARCHAR,
    valor_produto DOUBLE,
    id_produto INTEGER PRIMARY KEY,
    fk_vendedor_fk_pessoa_id int
);

CREATE TABLE ebook (
    fk_livro_id_livro INTEGER,
    fk_livro_fk_produto_id int,
    fk_cliente_fk_pessoa_id int,
    PRIMARY KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
);

CREATE TABLE livro_fisico (
    fk_livro_id_livro INTEGER,
    fk_livro_fk_produto_id int,
    PRIMARY KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
);

CREATE TABLE cadastro (
    tipo_cadastro varchar,
    login varchar,
    senha varchar,
    fk_vendedor_fk_pessoa_id int
);

CREATE TABLE palestra_debate (
    horario time,
    lotacao int,
    taxa_ingresso double,
    id_evento int PRIMARY KEY,
    sala varchar,
    livro_tema varchar
);

CREATE TABLE livro (
    nome_livro varchar,
    ano_publicacao int,
    qtd_exemplares int,
    id_livro INTEGER,
    fk_produto_id int,
    fk_categoria_id int,
    fk_editora_nome varchar,
    PRIMARY KEY (id_livro, fk_produto_id)
);

CREATE TABLE categoria (
    nome varchar,
    id int PRIMARY KEY,
    endereco_sessao varchar
);

CREATE TABLE avaliacao (
    id_avaliacao int PRIMARY KEY,
    comentario varchar,
    nota double,
    fk_livro_id_livro INTEGER,
    fk_livro_fk_produto_id int,
    fk_pessoa_id int
);

CREATE TABLE instituicao (
    telefone varchar,
    rua varchar,
    numero int,
    bairro varchar,
    email varchar,
    cnpj varchar PRIMARY KEY
);

CREATE TABLE vendedor (
    regime_trabalho varchar,
    salario double,
    fk_pessoa_id int PRIMARY KEY
);

CREATE TABLE editora (
    email varchar,
    numero int,
    rua varchar,
    bairro varchar,
    telefone varchar,
    nome varchar PRIMARY KEY
);

CREATE TABLE Trasportador_escolar (
    Responsavel_do_veiculo VARCHAR,
    Numero_da_placa VARCHAR,
    Quantidade_de_alunos INTEGER,
    fk_pessoa_id int,
    PRIMARY KEY (Numero_da_placa, fk_pessoa_id)
);

CREATE TABLE autor (
    nome varchar,
    sobrenome varchar,
    data_nascimento date,
    id_autor int PRIMARY KEY,
    sexo char
);

CREATE TABLE Departamento (
    nome_do_departamento varchar PRIMARY KEY
);

CREATE TABLE pessoa (
    data_nascimento date,
    id int PRIMARY KEY,
    nome varchar,
    sobrenome varchar,
    sexo char,
    email varchar,
    numero int,
    bairro varchar,
    complemento varchar,
    rua varchar,
    idade int,
    CPF varchar,
    RG varchar,
    fk_Funcionario_da_saude_registro_do_conselho_regional INTEGER,
    fk_Funcionario_da_saude_Profissao VARCHAR,
    fk_Funcionario_da_saude_fk_Funcionario_n__do_pis INTEGER,
    fk_Funcionario_da_saude_fk_Funcionario_conta_bancaria INTEGER,
    fk_Funcionario_da_saude_fk_Funcionario_fk_pessoa_id int,
    fk_recompensa_id_recompensa int
);

CREATE TABLE Funcionario_da_saude (
    registro_do_conselho_regional INTEGER,
    Profissao VARCHAR,
    fk_Funcionario_n__do_pis INTEGER,
    fk_Funcionario_conta_bancaria INTEGER,
    fk_Funcionario_fk_pessoa_id int,
    PRIMARY KEY (registro_do_conselho_regional, Profissao, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
);

CREATE TABLE cliente (
    fk_pessoa_id int PRIMARY KEY
);

CREATE TABLE recompensa (
    beneficio_voucher int,
    id_recompensa int PRIMARY KEY,
    data_vencimento date
);

CREATE TABLE Funcionario_administrativo (
    registro_cfa INTEGER,
    fk_Funcionario_n__do_pis INTEGER,
    fk_Funcionario_conta_bancaria INTEGER,
    fk_Funcionario_fk_pessoa_id int,
    fk_Departamento_nome_do_departamento varchar,
    PRIMARY KEY (registro_cfa, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
);

CREATE TABLE Professor (
    carteira_de_identificacao_do_professor INTEGER,
    fk_Funcionario_n__do_pis INTEGER,
    fk_Funcionario_conta_bancaria INTEGER,
    fk_Funcionario_fk_pessoa_id int,
    PRIMARY KEY (carteira_de_identificacao_do_professor, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
);

CREATE TABLE Funcionario (
    n__do_pis INTEGER,
    conta_bancaria INTEGER,
    fk_pessoa_id int,
    PRIMARY KEY (n__do_pis, conta_bancaria, fk_pessoa_id)
);

CREATE TABLE Responsavel_financeiro (
    conta_bancaria INTEGER,
    fk_pessoa_id int,
    PRIMARY KEY (conta_bancaria, fk_pessoa_id)
);

CREATE TABLE Disciplina (
    nome_da__discplina varchar PRIMARY KEY,
    Carga_horaria int,
    fk_Professor_carteira_de_identificacao_do_professor INTEGER,
    fk_Professor_fk_Funcionario_n__do_pis INTEGER,
    fk_Professor_fk_Funcionario_conta_bancaria INTEGER,
    fk_Professor_fk_Funcionario_fk_pessoa_id int,
    fk_segmento_Nome_do_segmento varchar
);

CREATE TABLE EAD (
    senha varchar,
    usuario varchar,
    FK_Aluno_id_da_matricula int,
    FK_Aluno_fk_pessoa_id int,
    PRIMARY KEY (senha, FK_Aluno_id_da_matricula, FK_Aluno_fk_pessoa_id)
);

CREATE TABLE presencial (
    senha_catraca INTEGER,
    fk_Aluno_id_da_matricula int,
    fk_Aluno_fk_pessoa_id int,
    PRIMARY KEY (senha_catraca, fk_Aluno_id_da_matricula, fk_Aluno_fk_pessoa_id)
);

CREATE TABLE segmento (
    Nome_do_segmento varchar PRIMARY KEY
);

CREATE TABLE Aluno (
    quantidade_de_faltas int,
    Turno varchar,
    Turma char,
    id_da_matricula int,
    saldo_da_cantina double,
    email varchar,
    serie varchar,
    telefone varchar,
    NOME varchar,
    fk_pessoa_id int,
    fk_Trasportador_escolar_Numero_da_placa VARCHAR,
    fk_Trasportador_escolar_fk_pessoa_id int,
    fk_Responsavel_financeiro_conta_bancaria INTEGER,
    fk_Responsavel_financeiro_fk_pessoa_id int,
    fk_segmento_Nome_do_segmento varchar,
    fk_lista_materiais_serie varchar,
    PRIMARY KEY (id_da_matricula, fk_pessoa_id)
);

CREATE TABLE Produtos_cantina (
    nome_produto varchar PRIMARY KEY,
    preco double
);

CREATE TABLE material_papelaria (
    vencimento int,
    fk_produto_id int PRIMARY KEY,
    fk_empresa_cnpj varchar,
    fk_instituicao_cnpj varchar
);

CREATE TABLE produto (
    id int PRIMARY KEY,
    preco double,
    fk_venda_id_produto INTEGER
);

CREATE TABLE empresa (
    cnpj varchar PRIMARY KEY,
    nome varchar,
    telefone varchar
);

CREATE TABLE lista_materiais (
    modelo_fardamento varchar,
    serie varchar PRIMARY KEY
);

CREATE TABLE pertence_a (
    fk_braile_fk_livro_id_livro INTEGER,
    fk_braile_fk_livro_fk_produto_id int,
    fk_servico_id_servico INTEGER
);

CREATE TABLE pertence_a (
    fk_livro_fisico_fk_livro_id_livro INTEGER,
    fk_livro_fisico_fk_livro_fk_produto_id int,
    fk_servico_id_servico INTEGER
);

CREATE TABLE promove (
    fk_instituicao_cnpj varchar,
    fk_palestra_debate_id_evento int
);

CREATE TABLE produz (
    fk_autor_ide_autor int,
    fk_livro_id_livro INTEGER,
    fk_livro_fk_produto_id int
);

CREATE TABLE subordinado_a (
    fk_vendedor_fk_pessoa_id int,
    fk_instituicao_cnpj varchar
);

CREATE TABLE e_ensinado_por (
    fk_Aluno_id_da_matricula int,
    fk_Aluno_fk_pessoa_id int,
    fk_Professor_carteira_de_identificacao_do_professor INTEGER,
    fk_Professor_fk_Funcionario_n__do_pis INTEGER,
    fk_Professor_fk_Funcionario_conta_bancaria INTEGER,
    fk_Professor_fk_Funcionario_fk_pessoa_id int
);

CREATE TABLE estuda__Disciplina_EAD_presencial (
    fk_Disciplina_nome_da__discplina varchar,
    fk_EAD_senha varchar,
    fk_EAD_FK_Aluno_id_da_matricula int,
    fk_EAD_FK_Aluno_fk_pessoa_id int,
    fk_presencial_senha_catraca INTEGER,
    fk_presencial_fk_Aluno_id_da_matricula int,
    fk_presencial_fk_Aluno_fk_pessoa_id int
);

CREATE TABLE compra (
    fk_Aluno_id_da_matricula int,
    fk_Aluno_fk_pessoa_id int,
    fk_Produtos_cantina_nome_produto varchar,
    mes_compra int,
    ano_compra int,
    dia_compra int,
    codigo_recibo int PRIMARY KEY
);

CREATE TABLE composto_por (
    fk_lista_materiais_serie varchar,
    fk_produto_id int
);
 
ALTER TABLE braile ADD CONSTRAINT FK_braile_2
    FOREIGN KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
    REFERENCES livro (id_livro, fk_produto_id)
    ON DELETE CASCADE;
 
ALTER TABLE audiobook ADD CONSTRAINT FK_audiobook_2
    FOREIGN KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
    REFERENCES livro (id_livro, fk_produto_id)
    ON DELETE CASCADE;
 
ALTER TABLE venda ADD CONSTRAINT FK_venda_2
    FOREIGN KEY (fk_vendedor_fk_pessoa_id)
    REFERENCES vendedor (fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE ebook ADD CONSTRAINT FK_ebook_2
    FOREIGN KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
    REFERENCES livro (id_livro, fk_produto_id)
    ON DELETE CASCADE;
 
ALTER TABLE ebook ADD CONSTRAINT FK_ebook_3
    FOREIGN KEY (fk_cliente_fk_pessoa_id)
    REFERENCES cliente (fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE livro_fisico ADD CONSTRAINT FK_livro_fisico_2
    FOREIGN KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
    REFERENCES livro (id_livro, fk_produto_id)
    ON DELETE CASCADE;
 
ALTER TABLE cadastro ADD CONSTRAINT FK_cadastro_1
    FOREIGN KEY (fk_vendedor_fk_pessoa_id)
    REFERENCES vendedor (fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE livro ADD CONSTRAINT FK_livro_2
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE CASCADE;
 
ALTER TABLE livro ADD CONSTRAINT FK_livro_3
    FOREIGN KEY (fk_categoria_id)
    REFERENCES categoria (id)
    ON DELETE RESTRICT;
 
ALTER TABLE livro ADD CONSTRAINT FK_livro_4
    FOREIGN KEY (fk_editora_nome)
    REFERENCES editora (nome)
    ON DELETE RESTRICT;
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
    REFERENCES livro (id_livro, fk_produto_id)
    ON DELETE CASCADE;
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_3
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE vendedor ADD CONSTRAINT FK_vendedor_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE Trasportador_escolar ADD CONSTRAINT FK_Trasportador_escolar_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE pessoa ADD CONSTRAINT FK_pessoa_2
    FOREIGN KEY (fk_Funcionario_da_saude_registro_do_conselho_regional, fk_Funcionario_da_saude_Profissao, fk_Funcionario_da_saude_fk_Funcionario_n__do_pis, fk_Funcionario_da_saude_fk_Funcionario_conta_bancaria, fk_Funcionario_da_saude_fk_Funcionario_fk_pessoa_id)
    REFERENCES Funcionario_da_saude (registro_do_conselho_regional, Profissao, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE pessoa ADD CONSTRAINT FK_pessoa_3
    FOREIGN KEY (fk_recompensa_id_recompensa)
    REFERENCES recompensa (id_recompensa)
    ON DELETE RESTRICT;
 
ALTER TABLE Funcionario_da_saude ADD CONSTRAINT FK_Funcionario_da_saude_2
    FOREIGN KEY (fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
    REFERENCES Funcionario (n__do_pis, conta_bancaria, fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE cliente ADD CONSTRAINT FK_cliente_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE Funcionario_administrativo ADD CONSTRAINT FK_Funcionario_administrativo_2
    FOREIGN KEY (fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
    REFERENCES Funcionario (n__do_pis, conta_bancaria, fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE Funcionario_administrativo ADD CONSTRAINT FK_Funcionario_administrativo_3
    FOREIGN KEY (fk_Departamento_nome_do_departamento)
    REFERENCES Departamento (nome_do_departamento)
    ON DELETE RESTRICT;
 
ALTER TABLE Professor ADD CONSTRAINT FK_Professor_2
    FOREIGN KEY (fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
    REFERENCES Funcionario (n__do_pis, conta_bancaria, fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE Responsavel_financeiro ADD CONSTRAINT FK_Responsavel_financeiro_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_2
    FOREIGN KEY (fk_Professor_carteira_de_identificacao_do_professor, fk_Professor_fk_Funcionario_n__do_pis, fk_Professor_fk_Funcionario_conta_bancaria, fk_Professor_fk_Funcionario_fk_pessoa_id)
    REFERENCES Professor (carteira_de_identificacao_do_professor, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE Disciplina ADD CONSTRAINT FK_Disciplina_3
    FOREIGN KEY (fk_segmento_Nome_do_segmento)
    REFERENCES segmento (Nome_do_segmento)
    ON DELETE RESTRICT;
 
ALTER TABLE EAD ADD CONSTRAINT FK_EAD_2
    FOREIGN KEY (FK_Aluno_id_da_matricula, FK_Aluno_fk_pessoa_id)
    REFERENCES Aluno (id_da_matricula, fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE presencial ADD CONSTRAINT FK_presencial_2
    FOREIGN KEY (fk_Aluno_id_da_matricula, fk_Aluno_fk_pessoa_id)
    REFERENCES Aluno (id_da_matricula, fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_3
    FOREIGN KEY (fk_Trasportador_escolar_Numero_da_placa, fk_Trasportador_escolar_fk_pessoa_id)
    REFERENCES Trasportador_escolar (Numero_da_placa, fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_4
    FOREIGN KEY (fk_Responsavel_financeiro_conta_bancaria, fk_Responsavel_financeiro_fk_pessoa_id)
    REFERENCES Responsavel_financeiro (conta_bancaria, fk_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_5
    FOREIGN KEY (fk_segmento_Nome_do_segmento)
    REFERENCES segmento (Nome_do_segmento)
    ON DELETE CASCADE;
 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_6
    FOREIGN KEY (fk_lista_materiais_serie)
    REFERENCES lista_materiais (serie)
    ON DELETE RESTRICT;
 
ALTER TABLE material_papelaria ADD CONSTRAINT FK_material_papelaria_2
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE CASCADE;
 
ALTER TABLE material_papelaria ADD CONSTRAINT FK_material_papelaria_3
    FOREIGN KEY (fk_empresa_cnpj)
    REFERENCES empresa (cnpj)
    ON DELETE RESTRICT;
 
ALTER TABLE material_papelaria ADD CONSTRAINT FK_material_papelaria_4
    FOREIGN KEY (fk_instituicao_cnpj)
    REFERENCES instituicao (cnpj)
    ON DELETE RESTRICT;
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_2
    FOREIGN KEY (fk_venda_id_produto)
    REFERENCES venda (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE pertence_a ADD CONSTRAINT FK_pertence_a_1
    FOREIGN KEY (fk_braile_fk_livro_id_livro, fk_braile_fk_livro_fk_produto_id)
    REFERENCES braile (fk_livro_id_livro, fk_livro_fk_produto_id)
    ON DELETE RESTRICT;
 
ALTER TABLE pertence_a ADD CONSTRAINT FK_pertence_a_2
    FOREIGN KEY (fk_servico_id_servico)
    REFERENCES servico (id_servico)
    ON DELETE SET NULL;
 
ALTER TABLE pertence_a ADD CONSTRAINT FK_pertence_a_1
    FOREIGN KEY (fk_livro_fisico_fk_livro_id_livro, fk_livro_fisico_fk_livro_fk_produto_id)
    REFERENCES livro_fisico (fk_livro_id_livro, fk_livro_fk_produto_id)
    ON DELETE RESTRICT;
 
ALTER TABLE pertence_a ADD CONSTRAINT FK_pertence_a_2
    FOREIGN KEY (fk_servico_id_servico)
    REFERENCES servico (id_servico)
    ON DELETE SET NULL;
 
ALTER TABLE promove ADD CONSTRAINT FK_promove_1
    FOREIGN KEY (fk_instituicao_cnpj)
    REFERENCES instituicao (cnpj)
    ON DELETE RESTRICT;
 
ALTER TABLE promove ADD CONSTRAINT FK_promove_2
    FOREIGN KEY (fk_palestra_debate_id_evento)
    REFERENCES palestra_debate (id_evento)
    ON DELETE SET NULL;
 
ALTER TABLE produz ADD CONSTRAINT FK_produz_1
    FOREIGN KEY (fk_autor_ide_autor)
    REFERENCES autor (id_autor)
    ON DELETE RESTRICT;
 
ALTER TABLE produz ADD CONSTRAINT FK_produz_2
    FOREIGN KEY (fk_livro_id_livro, fk_livro_fk_produto_id)
    REFERENCES livro (id_livro, fk_produto_id)
    ON DELETE RESTRICT;
 
ALTER TABLE subordinado_a ADD CONSTRAINT FK_subordinado_a_1
    FOREIGN KEY (fk_vendedor_fk_pessoa_id)
    REFERENCES vendedor (fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE subordinado_a ADD CONSTRAINT FK_subordinado_a_2
    FOREIGN KEY (fk_instituicao_cnpj)
    REFERENCES instituicao (cnpj)
    ON DELETE RESTRICT;
 
ALTER TABLE e_ensinado_por ADD CONSTRAINT FK_e_ensinado_por_1
    FOREIGN KEY (fk_Aluno_id_da_matricula, fk_Aluno_fk_pessoa_id)
    REFERENCES Aluno (id_da_matricula, fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE e_ensinado_por ADD CONSTRAINT FK_e_ensinado_por_2
    FOREIGN KEY (fk_Professor_carteira_de_identificacao_do_professor, fk_Professor_fk_Funcionario_n__do_pis, fk_Professor_fk_Funcionario_conta_bancaria, fk_Professor_fk_Funcionario_fk_pessoa_id)
    REFERENCES Professor (carteira_de_identificacao_do_professor, fk_Funcionario_n__do_pis, fk_Funcionario_conta_bancaria, fk_Funcionario_fk_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE estuda__Disciplina_EAD_presencial ADD CONSTRAINT FK_estuda__Disciplina_EAD_presencial_1
    FOREIGN KEY (fk_Disciplina_nome_da__discplina)
    REFERENCES Disciplina (nome_da__discplina)
    ON DELETE NO ACTION;
 
ALTER TABLE estuda__Disciplina_EAD_presencial ADD CONSTRAINT FK_estuda__Disciplina_EAD_presencial_2
    FOREIGN KEY (fk_EAD_senha, fk_EAD_FK_Aluno_id_da_matricula, fk_EAD_FK_Aluno_fk_pessoa_id)
    REFERENCES EAD (senha, FK_Aluno_id_da_matricula, FK_Aluno_fk_pessoa_id)
    ON DELETE NO ACTION;
 
ALTER TABLE estuda__Disciplina_EAD_presencial ADD CONSTRAINT FK_estuda__Disciplina_EAD_presencial_3
    FOREIGN KEY (fk_presencial_senha_catraca, fk_presencial_fk_Aluno_id_da_matricula, fk_presencial_fk_Aluno_fk_pessoa_id)
    REFERENCES presencial (senha_catraca, fk_Aluno_id_da_matricula, fk_Aluno_fk_pessoa_id)
    ON DELETE NO ACTION;
 
ALTER TABLE compra ADD CONSTRAINT FK_compra_2
    FOREIGN KEY (fk_Aluno_id_da_matricula, fk_Aluno_fk_pessoa_id)
    REFERENCES Aluno (id_da_matricula, fk_pessoa_id)
    ON DELETE SET NULL;
 
ALTER TABLE compra ADD CONSTRAINT FK_compra_3
    FOREIGN KEY (fk_Produtos_cantina_nome_produto)
    REFERENCES Produtos_cantina (nome_produto)
    ON DELETE SET NULL;
 
ALTER TABLE composto_por ADD CONSTRAINT FK_composto_por_1
    FOREIGN KEY (fk_lista_materiais_serie)
    REFERENCES lista_materiais (serie)
    ON DELETE RESTRICT;
 
ALTER TABLE composto_por ADD CONSTRAINT FK_composto_por_2
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE RESTRICT;