CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	animal VARCHAR(255),
    estoque BOOLEAN,
    peca BOOLEAN,
	
    PRIMARY KEY(id)
);

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    preco DOUBLE,
    peso VARCHAR(255),
    validade DATE,
    marca VARCHAR(255),
	categoria_id BIGINT NOT NULL,

	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria (animal, estoque, peca)
	VALUES	("Frango",true,false);
INSERT INTO tb_categoria (animal, estoque, peca)
	VALUES	("Bovino",false,false);
INSERT INTO tb_categoria (animal, estoque, peca)
	VALUES	("Suino",true,false);
INSERT INTO tb_categoria (animal, estoque, peca)
	VALUES	("Bovino",true,true);
INSERT INTO tb_categoria (animal, estoque, peca)
	VALUES	("Peixe",true,false);
    
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Sobrecoxa",17.99,"1 kilo",20220524,"Sadia",1);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Coxão Duro",34.99,"1 kilo",20220621,"Aurora",2);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Bisteca",22.99,"1 kilo",20220411,"Friboi",3);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Costela",34.00,"1 kilo",20220328,"Aurora",4);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Tilapia",13.99,"1 kilo",20220315,"Swift",5);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Contrafile",39.99,"1 kil",20220228,"Friboi",2);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Alcatra",50.99,"1 kilo",20220231,"Friboi",2);
INSERT INTO tb_produto (nome, preco, peso, validade, marca, categoria_id)
	VALUES	("Pacu",91.89,"1 kilo",20220310,"Lambari",5);
    
SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";
SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto WHERE tb_categoria = 1;