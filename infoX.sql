/**
	Sistema para gestão de uma assistência técnica de computadores e periféricos
    @author Ismael de Sousa
*/

create database dbinfox;
use dbinfox;
describe usuarios;
drop table clientes;

create table usuarios(
	id int primary key auto_increment,
    usuario varchar (50) not null,
    login varchar(50) not null unique,
    senha varchar(250) not null,
    perfil varchar(50) not null
);


-- a linha abaixo insere uma senha com criptografia
-- md5() criptografia de senha
insert into usuarios(usuario,login,senha,perfil) values ('Ismael','admin',md5('123456'),'administrador');
insert into usuarios(usuario,login,senha,perfil) values ('Ramiro Xavier','ramiro',md5('123'),'operador');

select * from usuarios;
select * from usuarios where id = 2;

-- selecionando usuario e sua respectiva senha (tela de login)
select * from usuarios where login ='admin' and senha=md5('123456');

update usuarios set usuario='Ramiro Santos Xavier',login='ramirosantos',senha=md5('1234'),perfil='operador' where id = 2;

delete from usuarios where id = 3;

-- char (tipo de dados que aceita uma String de caracteres não variáveis) -> gasta menos memória
create table clientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    cep char(8),
    endereco varchar(50) not null,
    numero varchar(12) not null,
    complemento varchar(30),
    bairro varchar(50) not null,
    cidade varchar(50) not null,
    uf char(2) not null,
    fone varchar(15) not null
);

insert into clientes(nome,cep,endereco,numero,complemento,bairro,cidade,uf,fone)
values ('Gabriel','14350970','Rua Coronel Honório Palma','135','','Centro','Altinópolis','SP','1198702-6271');
insert into clientes(nome,cep,endereco,numero,complemento,bairro,cidade,uf,fone)
values ('Roberto','12938172','AV. Carlos Andrade Xavier','1123','','Bairro Leste','São Paulo','SP','1192312-6121');
insert into clientes(nome,cep,endereco,numero,complemento,bairro,cidade,uf,fone)
values ('Rafael','92384723','Rua Da Marcelina','12','Apartamento','Bairro Norte','Brasilia','DF','1191238-6389');
insert into clientes(nome,cep,endereco,numero,complemento,bairro,cidade,uf,fone)
values ('Ramiro Silva','29384723','Rua Candelabrio','1123','Apartamento','Itaquera','São Paulo','SP','1191238-12983');
insert into clientes(nome,cep,endereco,numero,complemento,bairro,cidade,uf,fone)
values ('Matheus','12983719','Rua dos Andes Alados','9999','','Tatuapé','São Paulo','SP','1192312-6121');

delete from clientes where idcli = 5;

select * from clientes;

