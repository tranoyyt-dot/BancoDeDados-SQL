CREATE DATABASE clinica_db;
USE clinica_db;
CREATE TABLE pacientes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
cpf VARCHAR(14)
);
ALTER TABLE pacientes
ADD data_nascimento DATE,
ADD plano_saude VARCHAR(50),
ADD ativo TINYINT(1);
ALTER TABLE pacientes
MODIFY cpf VARCHAR(20);
ALTER TABLE pacientes
CHANGE nome nome_completo VARCHAR(100);