/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

#Cria o banco de dados e o seleciona
create database db_registroEscolar;
use db_registroEscolar;

#Cria a tabela de estudantes
create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int(2),
    media float(2,1),
    ativo boolean,
    
    primary key(id)
);

#Inserindo dados na tabela de estudantes
insert into tb_estudantes(nome,idade,media,ativo) values("Ana", 12, 7.5,true);
insert into tb_estudantes(nome,idade,media,ativo) values("Bruno", 12, 5.3,true);
insert into tb_estudantes(nome,idade,media,ativo) values("Carolina", 12, 6.4,true);
insert into tb_estudantes(nome,idade,media,ativo) values("Daniel", 12, 4.5,true);
insert into tb_estudantes(nome,idade,media,ativo) values("Fernanda", 12, 8.0,true);

#Selecionando alunos com nota maior ou igual a 7
select * from tb_estudantes where media >= 7.0; 

#Selecionando alunos com nota menor que 7
select * from tb_estudantes where media < 7.0; 

#Atualizando a nota da Carolina
update tb_estudantes set media=7.0 where id=3;