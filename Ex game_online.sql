create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
	id BIGINT AUTO_INCREMENT,
	Classe VARCHAR(255) NOT NULL,
	Nivel VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_classes(Classe, Nivel)
values("Duque",3),
("Embaixador",7),
("Assassino",2),
("Condessa",5),
("Capitão",7);

select * from tb_classes;

create table tb_personagens(
	id BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
	Artefato VARCHAR(255) NOT NULL,
	Ataque INT NOT NULL,
    Defesa INT NOT NULL,
    PRIMARY KEY (id)
    );
    
select * from tb_personagens;
    
insert into tb_personagens(Nome,Artefato,Ataque,Defesa)
values ("Duque Abel","Manto de ouro",1500,1300),
("Capitão Bono","Escudo de bronze",2500,3100),
("Embaixador Junio","Bota de couro",1000,980),
("Condessa Alice","Vestido de cetim",1900,3000),
("Assassino Xico","Espada de ferro",4000,1500),
("Assassino Zuno","Espada de cobre",3800,1950),
("Capitão Zeca","Escudo de lata",1300,2700),
("Condessa Miria","Vestido de algodão",800,970);

select * from tb_personagens;

ALTER TABLE tb_personagens ADD classeid BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classeid
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

select * from tb_personagens;

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 5 WHERE id = 2;
UPDATE tb_personagens SET classeid = 2 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 3 WHERE id = 5;
UPDATE tb_personagens SET classeid = 3 WHERE id = 6;
UPDATE tb_personagens SET classeid = 5 WHERE id = 7;
UPDATE tb_personagens SET classeid = 4 WHERE id = 8;

select * from tb_personagens;
SELECT * FROM tb_personagens ORDER BY classeid ASC;

-- ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE Ataque > 2000;

-- defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE Defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE, personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE Nome LIKE "%c%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT Nome, Ataque, Defesa, tb_classes.Classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, traga personagens que pertençam a classe específica
SELECT Nome, Ataque, Defesa, tb_classes.Classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.Classe = 'Capitão';