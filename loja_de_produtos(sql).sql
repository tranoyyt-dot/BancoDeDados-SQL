CREATE DATABASE loja_produtos;
USE loja_produtos;
CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
preco DECIMAL(10,2)
);
ALTER TABLE produtos
ADD estoque INT,
ADD ativo TINYINT(1);
ALTER TABLE produtos
MODIFY nome VARCHAR(150);
ALTER TABLE produtos
CHANGE preco preco_unitario DECIMAL(10,2);