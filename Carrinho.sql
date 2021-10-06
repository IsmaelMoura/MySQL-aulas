/**
	Atividade 1 - Carrinho de Compras
    @author Ismael de Sousa
*/

create database dbloja;
use dbloja;
describe carrinho;

create table carrinho(
	id int primary key auto_increment,
	produto varchar(50) not null,
    quantidade int(100) not null,
    valor varchar(250) not null
);

-- alterações
alter table carrinho add column id int primary key auto_increment;
alter table carrinho modify column produto varchar(250) not null;

-- decimal (tipo de dado numérico não inteiro 10,2 dez digitos com duas casas decimais
alter table carrinho modify column valor decimal(10,2) not null;

-- CRUD Create
insert into carrinho (produto,quantidade,valor) values ('Caneta Bic CX30',10,18.00);
insert into carrinho (produto,quantidade,valor) values ('Mouse Razer',5,15.50);
insert into carrinho (produto,quantidade,valor) values ('Lavadora de roupas',2,3000.25);
insert into carrinho (produto,quantidade,valor) values ('Fandangos Queijos 140g',3,10.25);
insert into carrinho (produto,quantidade,valor) values ('Computador da Xuxa',2, 7000.00);

-- CRUD Read
select * from carrinho;
select produto from carrinho;
select produto,valor from carrinho order by id asc;
select produto,quantidade,valor from carrinho order by id desc;

-- CRUD Update
update carrinho set valor=5000.00 where id = 5;
update carrinho set quantidade=7 where id = 4;
update carrinho set produto='Fone Redragon Zeus',quantidade=5,valor=350.00 where id = 2;

-- CRUD Delete
delete from carrinho where id = 3;

-- Operações matemáticas no banco de dados
select sum(valor*quantidade) as total from carrinho;





-- timestamp default current_timestamp (data e hora automático)
-- date (tipo de dados relacionados a data) YYYY/MM/DD
create table estoque (
	codigo int primary key auto_increment,
    barcode varchar(50) unique,
    produto varchar(100) not null,
    fabricante varchar(100) not null,
    datacad timestamp default current_timestamp,
    dataval date not null,
    quantidade int not null,
    estoquemin int not null,
    medida varchar(50) not null,
    valor decimal(10,2),
    loc varchar(100)
);

describe estoque;

-- CRUD Create
insert into estoque(produto,fabricante,dataval,quantidade,estoquemin,medida,valor,loc) 
values ('Caneta BIC Verde','BIC',20221005,100,10,'CX',28.75,'Setor A P2');
insert into estoque(produto,fabricante,dataval,quantidade,estoquemin,medida,valor,loc) 
values ('Refrigerador Frost Free','Samsung',20221005,20,2,'UNI',268999.00,'Setor 7 P1');

-- CRUD Read
select * from estoque;

-- CRUD Update
update estoque set valor=26899.00 where codigo = 2;