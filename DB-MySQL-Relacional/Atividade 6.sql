/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/

#Cria o banco de dados e o utiliza
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

#Cria a tabela das categorias
create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(50) ,
    tema varchar(50),
    formato varchar(255),
    
    primary key(id)
);

#Cria a tabela de produtos
create table tb_curso(
	produtoID bigint auto_increment,
    tema varchar(50),
    nivel varchar(20),
    horas int(5),
    aulas int(5),
    preco decimal(6,2),
    categoria_id bigint not null,
    
    primary key(produtoID),
    foreign key(categoria_id) references tb_categoria(id)
);

#Populando tb_categoria com 5 dados
insert into tb_categoria(categoria,tema,formato) 
	values("Desenvolvimento","Data Science","EAD");
insert into tb_categoria(categoria,tema,formato) 
	values("Desenvolvimento","Data Science","Presencial");
insert into tb_categoria(categoria,tema,formato) 
	values("Desenvolvimento","Engenharia de Software","EAD");
insert into tb_categoria(categoria,tema,formato) 
	values("Finanças e Contabilidade","Economia","EAD");
insert into tb_categoria(categoria,tema,formato) 
	values("Finanças e Contabilidade","Economia","Presencial");

    
#Populando tb_produto com 8 dados
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Python","Iniciante",16,32,34.99,1);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Python","Intermediário",32,64,84.99,2);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Java","Iniciante",16,32,34.99,1);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Java","Intermediário",32,64,84.99,2);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Estrutura de Dados","Iniciante",8,16,15.99,3);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Micro Economia","Iniciante",16,32,34.99,4);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Micro Economia","Iniciante",16,32,64.99,5);
insert into tb_curso(tema, nivel, horas,aulas, preco,categoria_id) 
	values("Macro Economia","Iniciante",16,32,34.99,4);

    
#Produtos com valor maior que 50 reais
select * from tb_curso where preco>50.00;

#Produtos com valor entre 3 e 60 reais
select * from tb_curso where preco>3 and preco<60;

#Produtos que contenham a letra j
select * from tb_curso where tema like "%j%";

#Select com Inner Join
select * from tb_curso
	inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id; #Mostra a intersecção das tabelas

#Encontra cursos de Java
select * from tb_curso
	inner join tb_categoria on tb_categoria.id=tb_curso.categoria_id
    where tb_curso.tema="Java";
