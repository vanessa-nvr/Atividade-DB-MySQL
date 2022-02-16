/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

#Cria o banco de dados e o utiliza
create database db_farmacia_do_bem;
use db_farmacia_do_bem;

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
    nome varchar(255),
    quantidade varchar(20),
    principioAtivo varchar(255),
    formaAdm varchar(20),
    preco decimal(6,2),
    categoria_id bigint not null,
    
    primary key(produtoID),
    foreign key(categoria_id) references tb_categoria(id)
);

#Populando tb_categoria com 5 dados
insert into tb_categoria(departamento,fabricante,item) 
	values("Higiene","Dove","Sabonete");
insert into tb_categoria(departamento,fabricante,item) 
	values("Higiene","Dove","Desodorante");
insert into tb_categoria(departamento,fabricante,item) 
	values("Higiene","Cotonete","Hastes Flexíveis");
insert into tb_categoria(departamento,fabricante,item) 
	values("Medicamento","Bayer","Pílula Anticoncepcional");
insert into tb_categoria(departamento,fabricante,item) 
	values("Medicamento","Libbs","Pílula Anticoncepcional");

    
#Populando tb_produto com 8 dados
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Sabonete em barra","90g","Karité","Tópico",2.99,1);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Sabonete em barra","90g","Original","Tópico",2.99,1);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Sabonete líquido","250ml","Micelar","Tópico",11.49,1);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Desodorante Aerosol","150ml","Original","Tópico",18.70,2);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Desodorante Aerosol","150ml","Lavanda","Tópico",18.70,2);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Hastes Flexíveis Cotonetes","75 unidades",null,"Tópico",3.69,3);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Yasmin","21 comprimidos","Drospirenona & Etinilestradiol","Oral",62.16,4);
insert into tb_produto(nome,quantidade, principioAtivo, formaAdm, preco,categoria_id) 
	values("Elani Ciclo","21 comprimidos","Drospirenona & Etinilestradiol","Oral",38.91,5);
    
#Produtos com valor maior que 50 reais
select * from tb_produto where preco>50.00;

#Produtos com valor entre 3 e 60 reais
select * from tb_produto where preco>3 and preco<60;

#Produtos que contenham a letra b
select * from tb_produto where nome like "%b%";

#Select com Inner Join
select * from tb_produto
	inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id; #Mostra a intersecção das tabelas

select * from tb_produto
	inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id
    where tb_categoria.departamento="Higiene";
