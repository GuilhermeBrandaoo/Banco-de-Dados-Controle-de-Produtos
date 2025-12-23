create database controledeprodutos;

use controledeprodutos;

create table produtos (
	id int not null auto_increment,
    nome_produto varchar(30) not null,
    preco decimal(5,2),
    quantidade_estoque int,
    categoria varchar(20),
    primary key(id)
) default charset = utf8;

insert into produtos 
(nome_produto, preco, quantidade_estoque, categoria) values
("Tênis", "149.99", "100", "Esporte"),
("Camisa Manga Longa", "89.00", "200", "Esporte"),
("Bola de Futebol", "100.00", "100", "Esporte");

insert into produtos 
(nome_produto, preco, quantidade_estoque, categoria) values
("Short", "149.99", "100", "Futebol"),
("Tênis de corrida", "89.00", "200", "Corrida"),
("Bola de Basquete", "100.00", "100", "Basquete");

alter table produtos
modify column nome_produto varchar(30) not null unique;

update produtos
set preco = "199.00"
where id = "1";

update produtos 
set quantidade_estoque = "500"
where id = "2";

update produtos
set quantidade_estoque = "0"
where id = 2;

delete from produtos 
where quantidade_estoque = "0";

delete from produtos 
where categoria = "Basquete";

alter table produtos
add column fornecedor varchar(20);

update produtos 
set categoria = "Futebol"
where categoria = "Esporte"
limit 5;

update produtos 
set preco = preco * 1.10;

describe produtos;

select * from produtos