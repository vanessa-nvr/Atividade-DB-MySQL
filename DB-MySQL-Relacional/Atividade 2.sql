/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

#Cria o banco de dados e o utiliza
create database db_pizzaria_legal;
use db_pizzaria_legal;

#Cria a tabela das categorias
create table tb_categoria(
	id bigint auto_increment,
    tamanho varchar(6) ,
    tipoMassa varchar(6),
    bordaRecheada boolean,
    
    primary key(id)
);

#Cria a tabela das pizzas
create table tb_pizza(
	pizzaID bigint auto_increment,
    nome varchar(20),
    queijo boolean,
    calabresa boolean,
    brigadeiro boolean,
    catupiry boolean,
    valor decimal(5,2),
    categoria_id bigint not null,
    
    primary key(pizzaID),
    foreign key(categoria_id) references tb_categoria(id)
);

#Populando categoria com 5 dados
insert into tb_categoria(tamanho,tipoMassa,bordaRecheada) 
	values("Grande","Fina",false);
insert into tb_categoria(tamanho,tipoMassa,bordaRecheada) 
	values("Broto","Fina",true);
insert into tb_categoria(tamanho,tipoMassa,bordaRecheada) 
	values("Grande","Grossa",true);
insert into tb_categoria(tamanho,tipoMassa,bordaRecheada) 
	values("Broto","Fina",false);
insert into tb_categoria(tamanho,tipoMassa,bordaRecheada) 
	values("Grande","Fina",true);
    
#Populando tab_pizza com 8 dados
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("Calabresa",false,true,false,false,45.90,1);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("Calabrella",true,true,false,false,55.90,2);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("Mussarela",true,false,false,false,45.90,3);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id)  
	values("Catupiry",false,false,false,true,55.90,4);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("Catubresa",false,true,false,true,65.90,5);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("2 queijos",true,false,false,false,65.90,1);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("Moda da Casa",true,true,false,true,75.90,2);
insert into tb_pizza(nome,queijo,calabresa,brigadeiro,catupiry,valor,categoria_id) 
	values("Brigadeiro",false,false,true,false,45.90,3);
    
#Pizzas com valor maior que 45 reais
select * from tb_pizza where valor>45.00;

#Pizzas com valor entre 29 e 60 reais
select * from tb_pizza where valor>29 and valor<60;

#Pizzas que contenham a letra c
select * from tb_pizza where nome like "%c%";

#Select com Inner Join
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id; #Mostra a intersecção das tabelas

#Pizzas doces
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id
    where tb_pizza.brigadeiro=true;
