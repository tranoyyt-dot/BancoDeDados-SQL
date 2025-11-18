CREATE DATABASE aula_vadiossauro;
USE aula_vadiossauro;
CREATE TABLE alunos(
id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    dia DATE,
    presenca BOOL
);
INSERT INTO alunos (id, nome, email, dia, presenca) VALUES
(1, "João","joão@gmail.com", '1992-02-10', 1),
(2, "koma","koão@gmail.com", '1992-02-10', 0),
(3, "locao","louco@gmail.com", '1992-02-10', 1);
SELECT * FROM alunos;
SELECT nome, presenca from alunos WHERE presenca = 1;
SELECT nome, presenca from alunos WHERE presenca = 0;

CREATE DATABASE financeiro_escola;
CREATE TABLE mensalidades(
id INT PRIMARY KEY,
    id_aluno INT,
    data_pagamento DATE,
    mensalidade FLOAT(2),
    pago_em_dia BOOL
);
INSERT INTO mensalidades (id, id_aluno, data_pagamento, mensalidade, pago_em_dia) VALUES
(1, 1, '2025-02-01', 350.00, 1),
(2, 1, '2025-03-05', 350.00, 0),
(3, 2, '2025-02-02', 400.50, 1),
(4, 2, '2025-02-10', 400.50, 0),
(5, 3, '2025-02-15', 380.00, 1);
SELECT * FROM mensalidades;
SELECT id_aluno, pago_em_dia FROM mensalidades WHERE pago_em_dia = 1;
SELECT id_aluno, pago_em_dia FROM mensalidades WHERE pago_em_dia = 0;

CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE emprestimo(
id INT PRIMARY KEY,
    id_aluno INT,
    id_livro INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    devolvido BOOL,
multa FLOAT
);
INSERT INTO emprestimo (id, id_aluno, id_livro, data_emprestimo, data_devolucao, devolvido, multa) VALUES
(1, 1, 10, '2025-02-01', '2025-02-10', 1, 0.00),
(2, 1, 11, '2025-02-05', '2025-02-20', 0, 0.00),
(3, 2, 12, '2025-02-03', '2025-02-18', 1, 5.00),
(4, 3, 13, '2025-02-07', '2025-02-25', 0, 10.50),
(5, 2, 14, '2025-02-09', '2025-02-15', 1, 0.00);

SELECT * FROM emprestimo;
SELECT id_aluno, devolvido, multa FROM emprestimo WHERE devolvido =1;
SELECT id_aluno, devolvido, multa FROM emprestimo WHERE devolvido =0;