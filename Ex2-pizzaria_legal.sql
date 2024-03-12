create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	id BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categorias(Nome, Descricao)
values("Doce","Pizza pode conter tipos de chocolate e frutas"),
("Salgada","Pizza com ingredientes salgados em geral"),
("Vegetariana","Pizza contém: molho de tomate, mussarela, ervilha, milho e palmito."),
("Vegana","Pizza contém: tomate, cebola, abobrinha e azeitona"),
("Sem glúten","Massa feita com Amido de milho, fécula de mandioca, farinha de arroz integral");

select * from tb_categorias;

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(255),
    descricao_pizza VARCHAR(255),
    preco DECIMAL(6,2),
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

insert into tb_pizzas (nome_pizza, descricao_pizza, preco, categoriaid)
values("Pizza de Calabresa","Calabresa acebolada",45.00,2),
("Pizza de Brigadeiro","Brigadeiro chocolate branco",58.00,1),
("Pizza Vegetariana","Ingredientes escolhidos pelo cliente",79.00,3),
("Pizza Sem Glúten","Massa diferenciada, Ingredientes a gosto, sem borda",82.00,5),
("Pizza Vegana","Ingredientes escolhidos pelo cliente",67.00,4),
("Pizza de Atum","Atum acebolado",48.00,2),
("Pizza Sem Glúten","Massa diferenciada, Ingredientes a gosto",97.00,5),
("Pizza de Brigadeiro","Brigadeiro chocolate amargo",53.00,1);

select * from tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT nome_pizza, descricao_pizza, preco, tb_categorias.Nome
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;


-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, traga pizzas que pertençam a uma categoria específica
SELECT nome_pizza, descricao_pizza, preco, tb_categorias.Nome
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.Nome = 'Doce';
