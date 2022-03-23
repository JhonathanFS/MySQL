CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT,
	receita boolean,
	tamanho VARCHAR(255),
    tipo VARCHAR(255),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    preco DOUBLE,
    quantidade VARCHAR(255),
    validade DATE,
    marca VARCHAR(255),
	categoria_id BIGINT NOT NULL,
    
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria (receita, tamanho, tipo)
	VALUES (true,"Pequeno","Antidepressivo");
INSERT INTO tb_categoria (receita, tamanho, tipo)
	VALUES (false,"Pequeno","Calmante");
INSERT INTO tb_categoria (receita, tamanho, tipo)
	VALUES (true,"Médio","Xarope");
INSERT INTO tb_categoria (receita, tamanho, tipo)
	VALUES (true,"Pequeno","Via Oral");
INSERT INTO tb_categoria (receita, tamanho, tipo)
	VALUES (false,"Misto","Cosmetico");
    
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Sertralina",27.90,"30 Comprimidos",20250217,"Eurofarm",1);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Batom",7.99,"30g",20240711,"Avon",5);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("VicVapuru",37.49,"200ml",20270414,"Vic",3);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Dipirona",1.00,"1 comprimido",20230419,"DorFlex",4);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Shampoo",19.99,"500 ml",20231222,"SalonLine",5);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Carbolitio",49.50,"",20220231,"",1);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Dexametasona",52.99,"100 ml",20220231,"",3);
INSERT INTO tb_produto (nome, preco, quantidade, validade, marca, categoria_id)
	VALUES ("Floral",22.99,"200 mg",20220231,"Passiflora",2);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%B%";
SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto WHERE promocao = true;
