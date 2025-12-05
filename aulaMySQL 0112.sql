create database BD2711;
use bd2711;

create table Cliente(
codCliente int not null auto_increment,
nomeCliente varchar(45),
bairroCliente varchar(45),

constraint pkcodCliente primary key (codCliente));

insert into cliente (codCliente, nomeCliente, bairroCliente) values (1, 'Kauã Cunha', 'Bom Jesus');
insert into cliente (codCliente, nomeCliente, bairroCliente) values (2, 'Kaio Luiz', 'Bom Jesus');
insert into cliente (codCliente, nomeCliente, bairroCliente) values (3, 'Anderson Luiz', 'Porto');
insert into cliente (codCliente, nomeCliente, bairroCliente) values (4, 'Priscia Cunha', 'Porto');
insert into cliente (codCliente, nomeCliente, bairroCliente) values (5, 'Gabriel Silva', 'Centro');

select * from cliente where bairroCliente='Bom Jesus';
select nomeCliente from cliente where bairroCliente='Bom Jesus';
select codCliente, nomeCliente from cliente where bairroCliente='Bom Jesus';
select codCliente, nomeCliente from cliente where codCliente>3;
alter table cliente add profCliente varchar(45);
alter table cliente add emailCliente varchar(45);
describe cliente;
select * from cliente;

update cliente set emailCliente = 'kauacunhaf2009@gamil.com' where codCliente=1;
update cliente set emailCliente = 'kaioluiz0210@gamil.com' where codCliente=2;
update cliente set emailCliente = 'andersonluizfeliciano1@gamil.com' where codCliente=3;
update cliente set emailCliente = 'priscilacunhaf123@gamil.com' where codCliente=4;
update cliente set emailCliente = 'gabrielsilva4355@gamil.com' where codCliente=5;

update cliente set profCliente = 'Programador' where codCliente=1;
update cliente set profCliente = 'Uber' where codCliente=2;
update cliente set profCliente = 'Fiscal' where codCliente=3;
update cliente set profCliente = 'Enfermeira' where codCliente=4;
update cliente set profCliente = 'Professor' where codCliente=5;

delete from cliente where codCliente=6;

alter table cliente add cpfCliente int;
alter table cliente add dataNasc date;

update cliente set cpfCliente = 64651554 where codCliente=1;
update cliente set cpfCliente = 32487677 where codCliente=2;
update cliente set cpfCliente = 43710903 where codCliente=3;
update cliente set cpfCliente = 64198483 where codCliente=4;
update cliente set cpfCliente = 56654389 where codCliente=5;

update cliente set dataNasc = '2009/02/21' where codCliente=1;
update cliente set dataNasc = '2010/10/02' where codCliente=2;
update cliente set dataNasc = '1998/01/06' where codCliente=3;
update cliente set dataNasc = '1992/04/17' where codCliente=4;
update cliente set dataNasc = '1993/08/19' where codCliente=5;

select * from cliente where codCliente between 2 and 4;
select * from cliente where nomeCliente like 'Ka%';
select * from cliente where nomeCliente like '%Cunha';
select * from cliente where bairroCliente in ('Bom Jesus','Porto');
select * from cliente where bairroCliente = 'Bom Jesus' and profcliente = 'Programador';
select * from cliente where bairroCliente = 'Bom Jesus' or profcliente = 'Programador';
select * from cliente where not profCliente = 'Programador';

insert into cliente (codCliente, nomeCliente, bairroCliente, profCliente, emailCliente, cpfCliente, dataNasc) values (6, 'João Souza', 'Centro', 'Estudante', 'joao123@email.com', '12345678', '2007-05-12');
insert into cliente (codCliente, nomeCliente, bairroCliente, profCliente, emailCliente, cpfCliente, dataNasc) values (7, 'Bruno Almeida', 'São José', 'Atendente', 'bruno456@email.com', '23456789', '2006-11-30');
insert into cliente (codCliente, nomeCliente, bairroCliente, profCliente, emailCliente, cpfCliente, dataNasc) values (8, 'Carlos Ferreira', 'Boa Vista', 'Professor', 'carlos789@email.com', '34567890', '1999-08-21');
insert into cliente (codCliente, nomeCliente, bairroCliente, profCliente, emailCliente, cpfCliente, dataNasc) values (9, 'Diego Martins', 'Santo Antônio', 'Vendedor', 'diego987@email.com', '45678901', '2003-02-14');
insert into cliente (codCliente, nomeCliente, bairroCliente, profCliente, emailCliente, cpfCliente, dataNasc) values (10, 'Eduardo Lima', 'Centro', 'Designer', 'eduard0654@email.com', '56789012', '2000-09-03');

select * from cliente order by nomeCliente asc;

insert into cliente (codCliente, nomeCliente, bairroCliente, profCliente, emailCliente, cpfCliente, dataNasc) values (11, 'Carlos Alberto', 'Centro', 'Professor', 'carlos@email.com', 64328386, '1990-05-12');
alter table cliente modify cpfCliente varchar(15);
update cliente set bairroCliente = 'Santa Cruz' where codCliente = 1;

delete from cliente where codCliente=1;
describe cliente;
select nomeCliente, profCliente, dataNasc from cliente order by dataNasc asc;
select * from cliente order by nomeCliente desc;
select nomeCliente, emailCliente from cliente where bairroCliente = 'Porto' and dataNasc < '2012-01-01';
select codCliente, nomeCliente, profCliente from cliente where profCliente = 'Enfermeira' or emailCliente like '%@gmail.com';
select * from cliente where bairroCliente <> 'Cerâmica';
select nomeCliente, bairroCliente from cliente where dataNasc between '2010-01-01' and '2015-12-31' and bairroCliente in ('Centro', 'Porto');
select nomeCliente, cpfCliente from cliente where dataNasc not between '2005-01-01' and '2010-12-31';
select * from cliente where nomeCliente not like 'M%' and bairroCliente = 'Porto';
select * from cliente where bairrocliente not in ('Porto','centro') order by profcliente asc;
select nomecliente, profcliente from cliente where profcliente <> 'professor' and dataNasc > '2011-01-01' and bairrocliente = 'Porto';
select * from cliente where profcliente <> 'analista' or dataNasc < '2005-01-01' order by codcliente desc;

create table funcionario(
codfuncionario int not null auto_increment, 
nomefuncionario varchar(45), 
cargofuncionario varchar(45), 
salario float, 
dataAdmissao date, 
bairrofuncionario varchar(45),

constraint pkcodFuncionario primary key(codFuncionario));

alter table funcionario drop column cargofuncionario;

describe funcionario;