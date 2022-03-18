CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionario(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    ferias BOOLEAN NOT NULL,
    
    PRIMARY KEY(id)
);
    
INSERT INTO tb_funcionario (nome, genero, cargo, salario, ferias) 
	VALUES ("Roberta", "Feminino", "Gerente", 6000.00, false);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, ferias) 
	VALUES ("Sun", "Não-Binário", "Public Manager", 3500.00, true);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, ferias) 
	VALUES ("Fernando", "Masculino", "Estágiario", 1000.00, false);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, ferias) 
	VALUES ("Lina", "Travesti", "Lider de Equipe", 2600.00, false);
INSERT INTO tb_funcionario (nome, genero, cargo, salario, ferias) 
	VALUES ("Túlio", "Masculino", "Redator", 1800.00, false);
    
SELECT * FROM tb_funcionario WHERE salario > 2000;
SELECT * FROM tb_funcionario WHERE salario < 2000;
UPDATE tb_funcionario SET ferias = TRUE
	WHERE id = 4;