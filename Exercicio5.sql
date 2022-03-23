CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT,
	categoria VARCHAR(255),
    estoque BOOLEAN,
    tipo VARCHAR(255),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    preco DOUBLE,
    quantidade VARCHAR(255),
	prontaEntrega BOOLEAN,
    marca VARCHAR(255),
	categoria_id BIGINT NOT NULL,

	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria (categoria, estoque, tipo)
	VALUES	("Alvenaria",true,"Material");
INSERT INTO tb_categoria (categoria, estoque, tipo)
	VALUES	("Alvenaria",false,"Material");
INSERT INTO tb_categoria (categoria, estoque, tipo)
	VALUES	("Alvenaria",true,"Ferramentes");
INSERT INTO tb_categoria (categoria, estoque, tipo)
	VALUES	("Carpitaria",true,"Tintas");
INSERT INTO tb_categoria (categoria, estoque, tipo)
	VALUES	("Jardinagem",true,"Ferramentas");

INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Saco de Cimento",27.89,"50 kg",true,"Votoran",1);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Tijolo",109.99,"100 blocos",true,"Leroy Merlin",2);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Colher de Pedreiro",7.99,"1 Unidade",true,"Tramontina",3);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Cortador de Grama",132.99,"1 Unidade",false,"Tekna",5);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Tinta Latex",158.39,"1 lata(3,2L)",true,"Suvinil",4);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Areia",120.00,"metrô quadrado", true, "Leroy Merlin",1);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Cerra Circular",369.99,"1 Unidade",false,"Makita",3);
INSERT INTO tb_produto (nome, preco, quantidade, prontaEntrega, marca, categoria_id)
	VALUES	("Tinta Acrílica",194.99,"1 lata(3,2L)",false,"LuxColor",4);

SELECT * FROM tb_produto WHERE preco > 100;
SELECT * FROM tb_produto WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";
SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto WHERE tb_categoria = 1;