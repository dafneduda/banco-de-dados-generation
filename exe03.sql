create database db_escola;
use db_escola;

create table tb_estudantes (
id int auto_increment,
Nome varchar (255) not null,
Serie varchar (255),
Disciplina varchar (255),
DataProva varchar (255),
Nota decimal(6,2),
primary key (id)
);

select * from tb_estudantes;

insert into tb_estudantes(Nome, Serie, Disciplina, DataProva, Nota)
values ("Zion Lopes","8ª","Matemática","04-03-2024",7.5),
("Bruno Mendes","7ª","Ciências","05-03-2024",8.75),
("Liana Marques","8ª","Matemática","04-03-2024",5.5),
("Renato Soares","7ª","Ciências","05-03-2024",3.75),
("Aline Silva","7ª","Ciências","05-03-2024",10.0),
("Jessica Bueno","8ª","Matemática","04-03-2024",9.0),
("Vivian Rodrigues","8ª","Matemática","04-03-2024",4.75),
("Gabrielle Matos","8ª","Matemática","04-03-2024",7.00),
("Tifany Costa","7ª","Ciências","05-03-2024",9.5),
("Juarez Maciel","7ª","Ciências","05-03-2024",7.00);

select * from tb_estudantes;

-- SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM tb_estudantes WHERE Nota > 7.00;

-- SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM tb_estudantes WHERE Nota < 7.00;

-- SELECT nota igual a 7.0
SELECT * FROM tb_estudantes WHERE Nota = 7.00;

-- query de atualização.
UPDATE tb_estudantes SET Nota = 4.00 WHERE Id = 4;
UPDATE tb_estudantes SET Nota = 5.00 WHERE Id = 7;

select * from tb_estudantes;