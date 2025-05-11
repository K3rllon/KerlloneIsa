create database RegistroDeVendas;
use RegistroDeVendas;
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    cliente VARCHAR(100),
    cidade VARCHAR(100),
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    data_venda DATE
);

INSERT INTO vendas (id_venda, cliente, cidade, produto, quantidade, preco_unitario, data_venda) VALUES
(1, 'Ana', 'São Paulo', 'Camiseta', 2, 50.00, '2024-01-10'),
(2, 'Bruno', 'Rio de Janeiro', 'Calça', 1, 120.00, '2024-02-05'),
(3, 'Ana', 'São Paulo', 'Jaqueta', 1, 250.00, '2024-03-15'),
(4, 'Carla', 'Belo Horizonte', 'Camiseta', 3, 50.00, '2024-04-02'),
(5, 'Daniel', 'Fortaleza', 'Camiseta', 1, 50.00, '2024-04-20'),
(6, 'Bruno', 'Rio de Janeiro', 'Camiseta', 2, 50.00, '2024-05-01');

select * from vendas;

select distinct cliente
from vendas;

select * from vendas
where cidade = 'São Paulo';

select * from vendas
where produto = 'Camiseta'
order by data_venda desc;

select produto, sum(quantidade) as quantidade_total, avg(preco_unitario) as preco_medio
from vendas
group by produto;

select produto, sum(quantidade) as quantidade_total
from vendas
group by produto
having sum(quantidade) > 3;

select * from vendas 
order by data_venda asc
limit 3;

select cliente
from vendas
where quantidade is null;

select cliente as "Nome do cliente", preco_unitario as "Preço por unidade"
from vendas; 

select cliente as "Nome do Cliente"
from vendas;

select preco_unitario as "Preço por Unidade"
from vendas;