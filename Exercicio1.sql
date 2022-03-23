CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
	id BIGINT AUTO_INCREMENT,
    profissao VARCHAR(255),
    arma VARCHAR(255),
    passiva Varchar(255),
	
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
	ataque INT,
    defesa INT,
    vida INT,
    raça VARCHAR(255),
    classe_id BIGINT NOT NULL,
    
	FOREIGN KEY (classe_id) REFERENCES tb_classe(id),
    PRIMARY KEY (id)
);

INSERT INTO tb_classe (profissao, arma, passiva)
	VALUES ("Espachim","Espada de duas mãos","Pericia em Espada");
INSERT INTO tb_classe (profissao, arma, passiva)
	VALUES ("Ladino","Gládio","Furtividade");
INSERT INTO tb_classe (profissao, arma, passiva)
	VALUES ("Arcano","Orbe catalizador","Resistencia a magia");  
INSERT INTO tb_classe (profissao, arma, passiva)
	VALUES ("Noviço","Maça","Resistencia a estatos negativos");
INSERT INTO tb_classe (profissao, arma, passiva)
	VALUES ("Bardo","Alaúde","Carisma");

INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Sigmount",2700,1200,2100,"Elfo Negro",3);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Lucoa",1400,2300,1600,"Elfo",5);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Tobias",800,2800,3200,"Draconato",4);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Homura",3000,1400,900,"Tiefling",2);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Oz",1500,1800,1300,"Humano",1);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Hanabi",1600,3100,2700,"Orc",3);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Alfred",2000,1700,1300,"Elfo Negro",1);
INSERT INTO tb_personagem (nome, ataque, defesa, vida, raça, classe_id)
	VALUES ("Cael",4000,2300,5000,"Demihumano",3);

tb_categoriasSELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe on tb_personagem.classe_id = tb_classe.id;
SELECT * FROM tb_personagem WHERE classe_id = 3;