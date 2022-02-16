/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.*/

#Cria o banco de dados e o utiliza
create database db_cidade_das_frutas;
use db_cidade_das_frutas;

#Cria a tabela das categorias
create table tb_categoria(
	id bigint auto_increment,
    departamento varchar(20) ,
    fabricante varchar(20),
    item varchar(255),
    
    primary key(id)
);

#Cria a tabela de produtos
create table tb_produto(
	produtoID bigint auto_increment,
    quantidade varchar(20),
    caract varchar(255),
    tipo varchar(20),
    preco decimal(6,2),
    categoria_id bigint not null,
    
    primary key(produtoID),
    foreign key(categoria_id) references tb_categoria(id)
);

#Populando tb_categoria com 5 dados
insert into tb_categoria(departamento,fabricante,item) 
	values("Mercearia","Italac","Leite Condensado");
insert into tb_categoria(departamento,fabricante,item) 
	values("Mercearia","Nestlé","Leite Condensado");
insert into tb_categoria(departamento,fabricante,item) 
	values("Bebidas","Original","Cerveja");
insert into tb_categoria(departamento,fabricante,item) 
	values("Bebidas","Skol","Cerveja");
insert into tb_categoria(departamento,fabricante,item) 
	values("Hortifrúti",null,"Banana");

    
#Populando tb_produto com 8 dados
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("395g","Semidesnatado","Caixa",4.69,1);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("395g","Sem Lactose","Caixa",6.09,1);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("395g","Moça","Lata",6.89,2);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("395g","Moça Light","Caixa",5.99,2);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("350 ml",null,"Lata",3.49,3);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("269 ml",null,"Lata",2.39,4);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("269ml","Puro Malte","Lata",2.49,4);
insert into tb_produto(quantidade, caract, tipo, preco,categoria_id) 
	values("200g","Prata",null,2.20,5);
    
#Produtos com valor maior que 50 reais
select * from tb_produto where preco>50.00;

#Produtos com valor entre 3 e 60 reais
select * from tb_produto where preco>3 and preco<60;

#Produtos que contenham a letra c
select * from tb_categoria where item like "%c%";

#Select com Inner Join
select * from tb_produto
	inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id; #Mostra a intersecção das tabelas

select * from tb_produto
	inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id
    where tb_categoria.departamento="Bebidas";
