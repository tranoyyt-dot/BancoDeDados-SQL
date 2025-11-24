CREATE DATABASE cinema_db;
USE cinema_db;
CREATE TABLE clientes_db(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)
);

ALTER TABLE clientes_db
ADD COLUMN data_cadastro DATE,
ADD COLUMN possui_cartao_fidelidade TINYINT(1),
ADD COLUMN telefone VARCHAR(20);

ALTER TABLE clientes_db
DROP COLUMN possui_cartao_fidelidade;

ALTER TABLE clientes_db
RENAME TO clientes_cinema;
SELECT * FROM clientes_db