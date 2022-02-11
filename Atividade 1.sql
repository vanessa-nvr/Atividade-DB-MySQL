/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade. */

#Cria o banco de dados e o utiliza
create database db_funcionarios;
use db_funcionarios;

#Cria a tabela dentro do banco de dados
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int(3) not null,
    ingressoEmpresa date,
    salario decimal(9,2),
    
    primary key(id)
);

#Inserindo dados na tabela de funcionários
insert into tb_funcionarios(nome,idade,ingressoEmpresa,salario) values("Ana", 25, "2018/06/01",6800.00);
insert into tb_funcionarios(nome,idade,ingressoEmpresa,salario) values("Bruno", 30, "2015/01/01",11000.00);
insert into tb_funcionarios(nome,idade,ingressoEmpresa,salario) values("Carolina", 36, "2011/01/01",15000.00);
insert into tb_funcionarios(nome,idade,ingressoEmpresa,salario) values("Daniel", 28, "2016/06/30",8000.00);
insert into tb_funcionarios(nome,idade,ingressoEmpresa,salario) values("Fernanda", 22, "2021/01/15",3200.00);

#Selecionando salário maior que 2000,00
select * from tb_funcionarios where salario > 2000.00; 

#Selecionando salário menor 2000,00
select * from tb_funcionarios where salario < 2000.00; 

update tb_funcionarios set salario=1500.00 where id=5

