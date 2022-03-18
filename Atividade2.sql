CREATE DATABASE db_ecommerce;

USE db_empresa;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    preco DOUBLE NOT NULL,
    validade DATE NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    estoque BOOLEAN NOT NULL,
    
    PRIMARY KEY(id)
);
    
INSERT INTO tb_produtos (nome, preco, validade, tipo, estoque) 
	VALUES ("212", 1209.99, 20400730, "Perfume", true);
INSERT INTO tb_produtos (nome, preco, validade, tipo, estoque)
	VALUES ("Sundown", 39.99, 20270306, "Protetor Solar", true);
INSERT INTO tb_produtos (nome, preco, validade, tipo, estoque)
	VALUES ("Nivea", 41.99, 20231130, "Hidratante", false);
INSERT INTO tb_produtos (nome, preco, validade, tipo, estoque)
	VALUES ("Salon Line", 16.99, 20230516, "Creme Para Pentear", false);
INSERT INTO tb_produtos (nome, preco, validade, tipo, estoque)
	VALUES ("Tom Ford Neroli", 1750.00, 20401005, "Perfume", false);
    
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;;
UPDATE tb_produtos SET preco = 1300
	WHERE id = 5;