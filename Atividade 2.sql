/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

#Cria o banco de dados e o utiliza
create database db_produtos;
use db_produtos;

#Cria a tabela dentro do banco de dados
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int(10),
    valor decimal(9,2),
    ativo boolean,
    
    primary key(id)
);

#Inserindo dados na tabela de produtos
insert into tb_produtos(nome,quantidade,valor,ativo) values("SmartTV Philco", 400, 2500.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("SmartTV Philips", 350, 4500.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("SmartTV Samsung", 200, 2600.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("SmartTV AOC", 450, 1800.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("SmartTV LG", 300, 2300.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("Tablet Samsung", 300, 2400.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("Tablet Multilase", 200, 450.00,true);
insert into tb_produtos(nome,quantidade,valor,ativo) values("Tablet Philco", 230, 580.00,true);

#Selecionando produtos com valor maior que 500,00
select * from tb_produtos where valor > 500.00; 

#Selecionando produtos com valor menor que 500,00
select * from tb_produtos where valor < 500.00; 

#Atualizando um nome errado
update tb_produtos set nome="Tablet Multilaser" where id=7;