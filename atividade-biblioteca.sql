create database biblioteca;
use biblioteca;
create table livro(
	titulo varchar(50) primary key,
    autor varchar(50),
    preço decimal,
    estoque int
);

insert into livro(titulo, autor, preço, estoque)
values('Metamorfose', 'Franz Kafka', 80, 5),
	('Ensaio Sobre a Cegueira', 'José Saramago', 40, 8),
	('Dom Quixote de La Mancha', 'Miguel de Cervantes', 90, 10),
    ('Alice no pais das maravilhas', 'Lewis Carroll', 40, 10),
	('Crime e Castigo', 'Fiódor Dostoiévsky', 30, 9);

update livro
set preço = 88
where titulo = 'Metamorfose';

update livro
set preço = 44
where titulo = 'Ensaio Sobre a Cegueira';

update livro
set preço = 44
where titulo = 'Alice no pais das maravilhas';
select * from livro; 

update livro
set estoque = 15
where titulo = 'Ensaio Sobre a Cegueira';

update livro
set estoque = 30
where titulo = 'Alice no pais das maravilhas';
select * from livro; 

insert into livro(titulo, autor, preço, estoque)
values('Os Miseráveis', 'Victor Hugo', 80, 0),
	('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 40, 0);
    
set sql_safe_updates = 0;
delete from livro
where estoque = 0;
select * from livro;

select titulo, autor from livro
where preço < 50;

select * from livro
where estoque > 5;

select titulo, preço from livro
order by preço desc
limit 1;

update livro
set preço = 120
where titulo = 'Alice no pais das maravilhas';
select * from livro; 

set sql_safe_updates = 0;
delete from livro
where preço > 100;
select * from livro;