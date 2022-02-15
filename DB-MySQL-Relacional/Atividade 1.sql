/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.*/

#Cria o banco de dados e o utiliza
create database db_generation_game_online;
use db_generation_game_online;

#Cria a tabela dos personagens
create table tb_personagem(
	id bigint auto_increment,
    personagem varchar(255) ,
    ataque int(4),
    defesa int(4),
    hp int(3),
    mp int(3),
   
    primary key(id)
);

#Cria a tabela das classes
create table tb_classe(
	classeID bigint auto_increment,
    classe varchar(255) not null,
    habilidade varchar(255),
    presencaPet boolean,
    personagem_id bigint not null,
    
    primary key(classeID),
    foreign key(personagem_id) references tb_personagem(id) #Relaciona as duas tabelas. A chave estrangeira "personagem_id" é referenciada/relacionada pela chave primária do personagem (id)
);

#Populando personagem com 8 dados
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Vastaya",7000,1000,60,0);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Scarlet159",6000,2000,50,10);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Rarker",3000,10,40,20);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Millian",4000,2000,30,30);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Ezior",3000,4000,20,40);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Anandra",2000,3000,10,50);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Tiarah",1000,2000,45,15);
insert into tb_personagem(personagem,ataque,defesa,hp,mp) 
	values("Amina",1500,6500,35,25);
    
#Populando classe com 5 dados
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Arqueiro","Rajada de Flechas",true,1);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Mago","Escudo Mágico",true,2);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Espadachim","Ataque Fatal",true,3);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Mercenário","Envenenar",false,4);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Noviço","Curar",false,8);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Arqueiro","Rajada de Flechas",true,5);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Mago","Escudo Mágico",true,6);
insert into tb_classe(classe,habilidade,presencaPet,personagem_id) 
	values("Espadachim","Ataque Fatal",true,7);

 
#Personagens com ataque maior que 2000
select * from tb_personagem where ataque>2000;

#Personagens com defesa entre 1000 e 2000
select * from tb_personagem where defesa>1000 and defesa<2000;

#Personagens que contenham a letra c
select * from tb_personagem where personagem like "%c%";

#Select com Inner Join
select * from tb_classe
	inner join tb_personagem on tb_personagem.id=tb_classe.personagem_id; #Mostra a intersecção das tabelas

#Select de personagens com classes iguais
select * from tb_classe
	inner join tb_personagem on tb_personagem.id=tb_classe.personagem_id
    where tb_classe.classe="Arqueiro";
