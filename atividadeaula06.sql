create database escola;
use escola;
create table alunos(
	id int primary key,
	nome varchar(50) not null,
	idade int
);

insert into alunos(id, nome, idade)
values (1, 'Isadora Silva',16),
	   (2, 'Kerllon Sousa',16),
       (3, 'João ',16);

update alunos
set idade = 19
where id = 3;
select * from alunos;

select * from alunos
where idade>18;

delete from alunos
where id = 1;





