create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
  id BIGINT AUTO_INCREMENT,
  Produto varchar(255) not null,
  Preco int,
  Qtde int,
  Cor int,
  Descricao varchar (255),
  PRIMARY KEY (id)
);

select * from tb_produtos;

ALTER TABLE tb_produtos MODIFY Preco DECIMAL(6,2);

ALTER TABLE tb_produtos MODIFY Cor varchar(255);

insert into tb_produtos (Produto, Preco, Qtde, Cor, Descricao)
Values ("Cobertor",98.67,35,"Azul","Manta em algodão"),
("Travesseiro",198.99,65,"Branco","Travesseiro de fibra natural"),
("Lençol",77.00,15,"Bege","Lençol de 300 fios"),
("Fronha",20.00,18,"Bege","Fronha de 300 fios"),
("Pijama",65.00,10,"Verde","Pijama Masculino Tamanho G"),
("Pantufa",200.00,9,"Rosa","Pantufa Feminina Tamanho 36"),
("Almofada",15.99,85,"Branca","Almofada enchimento algodão");

update tb_produtos SET Preco = 830.00 WHERE id = 2;

update tb_produtos SET Preco = 723.00 WHERE id = 1;

select * from tb_produtos;

-- SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE Preco < 500.00;

-- SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE Preco > 500.00;

-- query de atualização.
UPDATE tb_produtos SET Cor = "Pink" WHERE Id = 6;

select * from tb_produtos;