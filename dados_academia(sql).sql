CREATE DATABASE academia_db;
USE academia_db;
CREATE TABLE alunos_academia (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
plano VARCHAR(30)
);
ALTER TABLE alunos_academia
ADD data_matricula DATE,
ADD ativo TINYINT(1);
ALTER TABLE alunos_academia
MODIFY plano VARCHAR(50);
ALTER TABLE alunos_academia
CHANGE nome nome_completo VARCHAR(100);