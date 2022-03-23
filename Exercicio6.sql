CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    modalidade VARCHAR(255),
	certificado BOOLEAN,

    PRIMARY KEY(id)
);

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    duracao VARCHAR(255),
    idioma VARCHAR(255),
    preco DOUBLE,
    vagas BOOLEAN,
	categoria_id BIGINT NOT NULL,

	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria (tipo, modalidade, certificado)
	VALUES	("Idiomas","Online",true);
INSERT INTO tb_categoria (tipo, modalidade, certificado)
	VALUES	("Linguagem de Programação","Online",true);
INSERT INTO tb_categoria (tipo, modalidade, certificado)
	VALUES	("Curso Livre","Presencial",true);
INSERT INTO tb_categoria (tipo, modalidade, certificado)
	VALUES	("Linguagem de Programação","Online",false);
INSERT INTO tb_categoria (tipo, modalidade, certificado)
	VALUES	("Curso Livre","Presencial",false);

INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Inglês","80 horas","Português",799.99,true,1);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Flutter","68 horas","Português",1330,true,2);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Paneficação","30 horas","Português",259.99,false,3);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Python","42 horas","Inglês",699.99,true,4);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Datilografia","20 horas","Inglês",98.99,false,5);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Francês","120 horas","Francês",849.99,true,1);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("JavaScript","68 horas","Inglês",739.99,false,2);
INSERT INTO tb_cursos (nome, duracao, idioma, preco, vagas, categoria_id)
	VALUES ("Admistração","42 horas","Português",299.00,false,3);
    
SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";
SELECT * FROM tb_cursos INNER JOIN tb_categoria on tb_cursos.categoria_id = tb_categoria.id;
SELECT * FROM tb_cursos WHERE tb_categoria = 1