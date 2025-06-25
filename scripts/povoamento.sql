/* region pessoa */
    -- Inserção de Endereços
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('12345678', 'São Paulo', 'SP');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('87654321', 'Rio de Janeiro', 'RJ');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000001', 'Fortaleza', 'CE');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000002', 'Recife', 'PE');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000003', 'Salvador', 'BA');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000004', 'Belo Horizonte', 'MG');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000005', 'Curitiba', 'PR');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000006', 'Porto Alegre', 'RS');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000007', 'Manaus', 'AM');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000008', 'Belém', 'PA');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000009', 'Goiânia', 'GO');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000010', 'Campinas', 'SP');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000011', 'Niterói', 'RJ');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000012', 'São Luís', 'MA');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000013', 'Teresina', 'PI');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000014', 'Natal', 'RN');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000015', 'João Pessoa', 'PB');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000016', 'Aracaju', 'SE');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000017', 'Vitória', 'ES');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000018', 'Maceió', 'AL');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000019', 'Florianópolis', 'SC');
    INSERT INTO Endereco (cep, cidade, estado) VALUES ('10000020', 'Campo Grande', 'MS');
    -- Inserção de Pessoas
    INSERT INTO Pessoa (id, nome, email, cpf, rua, numero, complemento, bairro, cep_end)
    VALUES (seq_pessoa.NEXTVAL, 'João Silva', 'joao@email.com', '12345678901', 'Rua A', '100', 'Apto 10', 'Centro', '12345678');

    INSERT INTO Pessoa (id, nome, email, cpf, rua, numero, complemento, bairro, cep_end)
    VALUES (seq_pessoa.NEXTVAL, 'Maria Souza', 'maria@email.com', '98765432100', 'Rua B', '200', NULL, 'Bairro B', '87654321');

    INSERT INTO Pessoa (id, nome, email, cpf, rua, numero, complemento, bairro, cep_end) 
    VALUES (seq_pessoa.NEXTVAL, 'Carlos Lima', 'carlos3@email.com', '12345678003', 'Rua X', '103', NULL, 'Centro', '10000001');
    
    INSERT INTO Pessoa (id, nome, email, cpf, rua, numero, complemento, bairro, cep_end)
    VALUES (seq_pessoa.NEXTVAL,'Luciana Prado', 'luciana4@email.com', '12345678004', 'Rua Y', '104', 'Apto 12', 'Jardins', '10000002');
    -- Inserção de Telefones
    INSERT INTO Telefone (id_telefone, id_pessoa, numero) VALUES (seq_telefone.NEXTVAL, 1, '11999999999');
    INSERT INTO Telefone (id_telefone, id_pessoa, numero) VALUES (seq_telefone.NEXTVAL, 2, '21988888888');
    INSERT INTO Telefone (id_telefone, id_pessoa, numero) VALUES (seq_telefone.NEXTVAL, 3, '11999999003');
    INSERT INTO Telefone (id_telefone, id_pessoa, numero) VALUES (seq_telefone.NEXTVAL, 4, '11999999004');

/* endregion pessoa */

---

/* region especificacoes pessoa */
    -- Inserção de Alunos
    INSERT INTO Aluno (id_aluno, matricula) VALUES (1, '2023001');
    INSERT INTO Matricula (matricula, curso, semestre) VALUES ('2023001', 'Engenharia de Software', 3);
    INSERT INTO Aluno (id_aluno, matricula) VALUES (3, '2023100');
    INSERT INTO Matricula (matricula, curso, semestre) VALUES ('2023100', 'Engenharia', 3);
    INSERT INTO Aluno (id_aluno, matricula) VALUES (4, '2023101');
    INSERT INTO Matricula (matricula, curso, semestre) VALUES ('2023101', 'Direito', 4);

    -- Inserção de Funcionários
    INSERT INTO Funcionario (id_funcionario, matricula, cargo, data_admissao, id_supervisor)
    VALUES (2, 'FUNC001', 'Bibliotecário', TO_DATE('2020-01-15', 'YYYY-MM-DD'), NULL);
    INSERT INTO Funcionario (id_funcionario, matricula, cargo, data_admissao, id_supervisor) 
    VALUES (5, 'FUNC002', 'Atendente', TO_DATE('2019-03-10', 'YYYY-MM-DD'), NULL);
    INSERT INTO Funcionario (id_funcionario, matricula, cargo, data_admissao, id_supervisor) 
    VALUES (6, 'FUNC003', 'Bibliotecário', TO_DATE('2020-06-15', 'YYYY-MM-DD'), 5);

/* endregion especificacoes pessoa */

---

/* region livro */
    -- Inserção de Livros
    INSERT INTO Livro (isbn, titulo, editora, ano_publicacao, categoria)
    VALUES ('9781234567890', 'Banco de Dados', 'Editora Exemplo', 2022, 'Tecnologia');
    INSERT INTO Livro (isbn, titulo, editora, ano_publicacao, categoria) 
    VALUES ('9780000000001', 'Livro 1', 'Editora A', 2021, 'Tecnologia');
    INSERT INTO Livro (isbn, titulo, editora, ano_publicacao, categoria) 
    VALUES ('9780000000002', 'Livro 2', 'Editora B', 2020, 'História');

    -- Inserção de Autores
    INSERT INTO Autor_Livro (isbn, autor) VALUES ('9781234567890', 'Carlos Henrique');
    INSERT INTO Autor_Livro (isbn, autor) VALUES ('9781234567890', 'Fernanda Costa');
    INSERT INTO Autor_Livro (isbn, autor) VALUES ('9780000000001', 'Igor José A');
    INSERT INTO Autor_Livro (isbn, autor) VALUES ('9780000000002', 'João Aquino');

    -- Inserção de Exemplar
    INSERT INTO Exemplar (isbn, numero_patrimonio, estado_conservacao, disponivel)
    VALUES ('9781234567890', 1, 'Ótimo', 'S');
    INSERT INTO Exemplar (isbn, numero_patrimonio, estado_conservacao, disponivel) 
    VALUES ('9780000000001', 1, 'Bom', 'S');
    INSERT INTO Exemplar (isbn, numero_patrimonio, estado_conservacao, disponivel) 
    VALUES ('9780000000002', 1, 'Ótimo', 'N');

/* endregion livro */

---

/* region avaliacao */
    INSERT INTO Avaliacao (id_aluno, numero_patrimonio, isbn, data_avaliacao, nota, comentario, id_funcionario_revisor)
    VALUES (1, 1, '9781234567890', SYSDATE, 9.5, 'Livro em excelente estado.', 2);
    INSERT INTO Avaliacao (id_aluno, numero_patrimonio, isbn, data_avaliacao, nota, comentario, id_funcionario_revisor) 
    VALUES (3, 1, '9780000000001', SYSDATE, 8.5, 'Muito bom.', 23);
    INSERT INTO Avaliacao (id_aluno, numero_patrimonio, isbn, data_avaliacao, nota, comentario, id_funcionario_revisor) 
    VALUES (4, 1, '9780000000002', SYSDATE, 7.0, 'Ok.', 24);
   

/* endregion avaliacao */

---

/* region emprestimo */
    INSERT INTO RealizaEmprestimo (id_aluno, isbn, numero_patrimonio, id_funcionario, data_emprestimo, data_prevista, situacao)
    VALUES (1, '9781234567890', 1, 2, SYSDATE, SYSDATE + 7, 'Em aberto');
    INSERT INTO RealizaEmprestimo (id_aluno, isbn, numero_patrimonio, id_funcionario, data_emprestimo, data_prevista, situacao) 
    VALUES (3, '9780000000001', 1, 23, SYSDATE - 10, SYSDATE - 3, 'Devolvido');
    INSERT INTO RealizaEmprestimo (id_aluno, isbn, numero_patrimonio, id_funcionario, data_emprestimo, data_prevista, situacao)
    VALUES (4, '9780000000002', 1, 24, SYSDATE - 2, SYSDATE + 5, 'Em aberto');
    
/* endregion emprestimo */
