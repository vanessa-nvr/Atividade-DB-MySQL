/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.*/

#Cria o banco de dados e o utiliza
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

#Cria a tabela das categorias
create table tb_categoria(
	id bigint auto_increment,
    departamento varchar(50) ,
    fabricante varchar(20),
    item varchar(255),
    
    primary key(id)
);

#Cria a tabela de produtos
create table tb_produto(
	produtoID bigint auto_increment,
    largura int(8),
    altura int(8),
    peso varchar(5),
    tipo varchar(20),
    preco decimal(6,2),
    categoria_id bigint not null,
    
    primary key(produtoID),
    foreign key(categoria_id) references tb_categoria(id)
);

#Populando tb_categoria com 5 dados
insert into tb_categoria(departamento,fabricante,item) 
	values("Janelas & Portas","Brimak","Janela");
insert into tb_categoria(departamento,fabricante,item) 
	values("Janelas & Portas","Sasazaki","Janela");
insert into tb_categoria(departamento,fabricante,item) 
	values("Janelas & Portas","Brimak","Porta");
insert into tb_categoria(departamento,fabricante,item) 
	values("Argamassas & Rejuntes","Quartzolit","Rejunte");
insert into tb_categoria(departamento,fabricante,item) 
	values("Argamassas & Rejuntes","Quartzolit","Argamassa");

    
#Populando tb_produto com 8 dados
insert into tb_produto(largura, altura,peso, tipo, preco,categoria_id) 
	values(80,60,null,"Maxim-Ar",429.99,1);
insert into tb_produto(largura, altura,peso, tipo, preco,categoria_id) 
	values(120,100,null,"Correr",449.99,1);
insert into tb_produto(largura, altura, peso, tipo, preco,categoria_id) 
	values(100,60,null,"Maxim-Ar",559.99,2);
insert into tb_produto(largura, altura, peso, tipo, preco,categoria_id) 
	values(40,40,null,"Basculante",189.99,2);
insert into tb_produto(largura, altura, peso, tipo, preco,categoria_id) 
	values(80,210,null,"Basculante",1049.99,3);    
insert into tb_produto(largura, altura, peso, tipo, preco,categoria_id) 
	values(null,null,1,"Ceramica Bege",8.99,4);
insert into tb_produto(largura, altura, peso, tipo, preco,categoria_id) 
	values(null,null,1,"Acrilico Bege",39.90,4);
insert into tb_produto(largura, altura, peso, tipo, preco,categoria_id) 
	values(null,null,20, "Interna",14.89,5);
    
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
    where tb_categoria.departamento="Argamassas & Rejuntes";
