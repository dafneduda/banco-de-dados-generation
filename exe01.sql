CREATE DATABASE db_rh;
use db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL,
    Telefone INT NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
    Salario DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

select * from tb_colaboradores;

INSERT INTO tb_colaboradores (Nome, Email, Telefone, Cargo, Salario)
VALUES ("João Silva","joao@empresa.com", 987654321,"Supervisor",6500.00);

INSERT INTO tb_colaboradores (Nome, Email, Telefone, Cargo, Salario)
VALUES ("Maria Pedroso","msantos@empresa.com", 932169874,"Assistente Adm",1800.00);

INSERT INTO tb_colaboradores (Nome, Email, Telefone, Cargo, Salario)
VALUES ("Joana Arruda","jarruda@empresa.com", 998653321,"Diretora",9900.00);

INSERT INTO tb_colaboradores (Nome, Email, Telefone, Cargo, Salario)
VALUES ("Marcelo Santos","msantos@empresa.com", 986393998,"Estagiário",900.00);

INSERT INTO tb_colaboradores (Nome, Email, Telefone, Cargo, Salario)
VALUES ("Ana Januário","ajanuario@empresa.com", 999652331,"Vendedora",3300.00);

INSERT INTO tb_colaboradores (Nome, Email, Telefone, Cargo, Salario)
VALUES ("Mario Silva","msilva@empresa.com", 999687723,"Auxiliar Adm",1000.00);

select * from tb_colaboradores;

-- SELECT retorne colaboradores com o salário < 2000 e < 2000.
SELECT * FROM tb_colaboradores WHERE Salario < 2000.00;
SELECT * FROM tb_colaboradores WHERE Salario > 2000.00;

-- query de atualização
UPDATE tb_colaboradores SET Nome = "Mario Silva Sodré" WHERE Id = 6;

select * from tb_colaboradores;