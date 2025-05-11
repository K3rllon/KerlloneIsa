create database loja;
use loja;
create table cliente(
	id int primary key,
    nome varchar(50) not null,
	email varchar(50) unique,
    data_cadastro date
);

create table pedidos(
	id int primary key, 
    data_pedido date,
    valor_total decimal,
    foreign key (id_cliente) references cliente(id)
);

alter table cliente
add column telefone int(11);

alter table pedidos 
modify column valor_total decimal(10,2);

alter table pedidos
rename column data_pedido to datas;

drop table pedidos;

insert into cliente(id,nome,email,data_cadastro)
value(1,"Isadora","isa.dora@gmail.com","28-08-2008"),
(2,"Kerllon","sousa.keke@gmail.com",25-06-2008);

truncate cliente;

create table produtos(
	id int primary key,
    nome varchar(50),
    preço int,
    constraint check (preço > 10)
);

create index indexclientes on cliente (email);

rename table cliente to ClientesAtivos;




