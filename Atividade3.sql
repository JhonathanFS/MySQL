CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    classe VARCHAR(10) NOT NULL,
    nota Decimal (2,1) NOT NULL,
	ra VARCHAR(7) NOT NULL,
    
	PRIMARY KEY(id)
);

INSERT INTO tb_aluno (nome, idade, classe, nota, ra) 
	VALUES 	("Igor", 12,"5ºB",7.5,4561237);
INSERT INTO tb_aluno (nome, idade, classe, nota, ra) 
	VALUES 	("Natalia", 15,"8ºD",5,1425639);
INSERT INTO tb_aluno (nome, idade, classe, nota, ra) 
	VALUES 	("Felipe", 10,"3ºC",9.5,9685746);
INSERT INTO tb_aluno (nome, idade, classe, nota, ra) 
	VALUES 	("Julia", 14,"7ºB",8,8486253);
INSERT INTO tb_aluno (nome, idade, classe, nota, ra) 
	VALUES 	("Luiz", 1,"1ºB",3,1793137);
    
SELECT * FROM tb_aluno WHERE nota > 7;
SELECT * FROM tb_aluno WHERE nota < 7;
UPDATE tb_aluno SET nota = 10
	WHERE id = 2;