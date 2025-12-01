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