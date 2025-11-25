create table tabCidade (
codCidade int not null auto_increment,
nomeCidade varchar(50),
ufCidade char(2),

constraint pkcodCidade primary key (codCidade));
show tables;
describe tabCidade;

create table tabCliente (
codCliente int not null auto_increment,
nomeCliente varchar(50),
bairroCliente varchar(50),
cpfCliente int,
telClinte int,
codCidade int,

constraint pkcodCliente primary key (codCliente),
constraint fkcodCidade foreign key (codcidade) references tabCidade(codCidade));

show tables;
describe tabCliente;

insert into tabCidade (codCidade, nomeCidade, ufCidade) values (1, 'Muriaé', 'MG');
insert into tabCidade (codCidade, nomeCidade, ufCidade) values (2, 'Laranjal', 'MG');
insert into tabCidade (codCidade, nomeCidade, ufCidade) values (3, 'Leopoldina', 'MG');

insert into tabCliente (codCliente, nomeCliente, bairroCliente, cpfCliente, telClinte, codCidade) values (1, 'Reinaldo', 'barra', 222333, 444444, 1);
insert into tabCliente (codCliente, nomeCliente, bairroCliente, cpfCliente, telClinte, codCidade) values (2, 'Juliana', 'centro', 555544, 333333, 2);
insert into tabCliente (codCliente, nomeCliente, bairroCliente, cpfCliente, telClinte, codCidade) values (3, 'Luciano', 'dornelas', 777788, 222222, 3);

select * from tabCliente