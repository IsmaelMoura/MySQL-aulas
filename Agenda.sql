/**
	Agenda de contatos
    @author Ismael de Sousa
*/

-- exibir banco de dados do servidor
show databases;

-- criar um novo banco de dados
create database dbagenda;

-- excluir um banco de dados
-- drop database dbteste;

-- selecionar o banco de dados
use dbagenda;

-- verificar tabelas existentes 
show tables;

-- criar uma tabela
-- Toda tabela precisa ter uma chave primária (PK - Primary Key)
-- int (tipo de dados) -> números inteiros
-- primary key -> transforma esse campo em chave primária
-- auto_increment -> numerção automática
--  varchar (tipo de dados equivalente a String (50) -> tamanho máximo de caracteres)
-- not null -> preenchimento obrigatório
-- unique -> não permite valores duplicados na tabela
create table contatos(
	id int primary key auto_increment,
	nome varchar(50) not null,
	fone varchar(15) not null,
	email varchar(50) unique
);

-- descrição da tabela
describe contatos;

-- alterar o nome de um campo na tabela
alter table contatos change nome contato varchar(50) not null;

-- adicionar um novo campo (coluna) a tabela
alter table contatos add column obs varchar(250);

-- adicionar um novo campo (coluna) em um local específico da tabela
alter table contatos add column fone2 varchar(15) after fone;

-- modificar o tipo de dados e/ou validação na coluna
alter table contatos modify column fone2 int;
alter table contatos modify column email varchar(100) not null;

-- excluir uma coluna da tabela
alter table contatos drop column obs;

-- excluir a tabela 
drop table contatos;

-- CRUD (Create Read Update Delete)
-- operações básicas do bando de dados

-- CRUD Create 
insert into contatos (nome,fone,email) values ('Ismael de Sousa','99999-1111','ismael@email.com');
insert into contatos (nome,fone,email) values ('Aryon','99999-2222','aryon@email.com');
insert into contatos (nome,fone,email) values ('Heder Santos','99999-3333','hedersantos@email.com');
insert into contatos (nome,fone,email) values ('Jandira Almeida','99999-4444','jandira@email.com');
insert into contatos (nome,fone,email) values ('Claudio','94569-1221','claudio@email.com');
insert into contatos (nome,fone) values ('Dobervaldo','99999-1111');
insert into contatos (nome,fone,email) values ('Anderson','99999-1234','andersonsilva@email.com');

-- CRUD Read
-- selecionar todos os registros (dados) da tabela
-- não é uma boa prática utilizar o * quando se trata de banco de dados com grande volume de dados
select * from contatos;

-- selecionar colunas específicas da tabela
select nome,fone from contatos;

-- selecionar colunas em ordem crescente e decrescente (asc desc)
select * from contatos order by nome;
select id,nome from contatos order by id desc;

-- uso de filtros
select * from contatos where id = 1;
select * from contatos where nome = 'Aryon';
select * from contatos where nome like 'A%';

-- CRUD Update
-- ATENÇÃO! Não esqueça do where e usar sempre o id para evitar problemas para não ser demitido
update contatos set email='dobervaldosilva@email.com.br' where id = 5;
update contatos set fone='99999-7777' where id = 7;
update contatos set nome='Sergio Berrante',fone='99999-1819',email='sergiosantosberrante@yahoo.com.br' where id=7;

-- CRUD Delete
-- ATENÇÃO! Não esqueça do where e usar sempre o id para evitar problemas para não ser demitido
delete from contatos where id = 7;