CREATE DATABASE agenda;  -- Cria o banco de dados, se ainda não existir
USE agenda;              -- Seleciona o banco de dados

CREATE TABLE contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

SHOW GRANTS FOR 'seu_usuario'@'localhost';

select agenda from id;

CREATE DATABASE agenda;

USE agenda;

CREATE TABLE contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15)
);

CREATE TABLE contatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    estado_civil VARCHAR(50),
    sexo VARCHAR(50)
);

ALTER TABLE contato
ADD COLUMN endereco VARCHAR(255),
ADD COLUMN estadoCivil VARCHAR(50),
ADD COLUMN sexo VARCHAR(20);

ALTER TABLE contato ADD COLUMN endereco VARCHAR(255);

DESCRIBE contato;

SHOW DATABASES;

USE agenda;  -- Substitua 'agenda' pelo nome do seu banco de dados




DESCRIBE contato;  -- Mostre a estrutura da tabela

CREATE TABLE contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    
    
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    sexo VARCHAR(10),
    estado_civil VARCHAR(20)
);



USE agenda;
SHOW TABLES;  -- Verifique se a tabela 'contato' está listada
DESCRIBE contato;  -- Para ver a estrutura da tabela 'contato'

ALTER TABLE contato
ADD COLUMN endereco VARCHAR(255),
ADD COLUMN estado_civil VARCHAR(50),
ADD COLUMN sexo VARCHAR(20);

DROP DATABASE agenda;

CREATE DATABASE agenda;
USE agenda;  -- Seleciona o banco de dados após criá-lo

SHOW TABLES;
DESCRIBE contato;

DESCRIBE contato;

CREATE TABLE contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(255),
    estado_civil VARCHAR(50),
    sexo VARCHAR(20)
);

SHOW TABLES;  -- Lista todas as tabelas no banco de dados
DESCRIBE contato;  -- Mostra a estrutura da tabela 'contato'

INSERT INTO contato (nome, email, telefone, endereco, estado_civil, sexo) 
VALUES ('Cezar Faria', 'CF@email.com', '13 78945-1234', 'Rua Exemplo, 123', 'Solteiro', 'Masculino');
SHOW TABLES;  -- Lista todas as tabelas no banco de dados
DESCRIBE contato;  -- Mostra a estrutura da tabela 'contato';

CREATE TABLE contatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200),
    estado_civil VARCHAR(20),
    sexo VARCHAR(10)
);
