CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    tamanho VARCHAR(255),
    vegana BOOLEAN,
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizza (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    ingrediente VARCHAR(255),
	borda VARCHAR(255),
    preco DOUBLE,
    prontaEntrega BOOLEAN,
    categoria_id BIGINT NOT NULL,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categoria (sabor, tamanho, vegana)
	VALUES ("Salgado","Grande",0);
INSERT INTO tb_categoria (sabor, tamanho, vegana)
	VALUES ("Doce","Grande",0);
INSERT INTO tb_categoria (sabor, tamanho, vegana)
	VALUES ("Salgado","Pequeno",0);
INSERT INTO tb_categoria (sabor, tamanho, vegana)
	VALUES ("Doce","Pequeno",0);
INSERT INTO tb_categoria (sabor, tamanho, vegana)
	VALUES ("Salgado","Grande",1);
    
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Calabresa","Calabresa, cebola, óregano.",false,31.99,true,1);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Portuguesa","Ovos, cebola, azeitona, ervilha, muçarela e presunto.",true,49.99,true,3);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Califórnia","Queijo, pêssego, goiaba, figo e abacaxi,",true,44.99,false,4);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Berinjela","tomate, queijo vegetal, pimenta, sal e orégan",false,37.99,false,5);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Romeu e Julieta","Queijo e Goiabada",true,39.99,true,2);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Tofupiry","Pimentão, cebola, champignon, azeitona preta, milho-verde, tomate, tomate-seco, orégano e tofupiry.",true,35.99,true,5);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Marguerita","Muçarela, tomate e manjericão",true,29.99,true,1);
INSERT INTO tb_pizza (nome, ingrediente, borda, preco, prontaEntrega, categoria_id)
	VALUES ("Brigadeiro","Brigadeiro e leite condensado",false,38.99,false,2);

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE nome LIKE "%C%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria on tb_personagem.categoria_id = tb_categoria.id;
SELECT * FROM tb_pizza WHERE borda = true;
