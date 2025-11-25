create database bd2;
use bd2;

create table cliente(
codCli int not null auto_increment,
nome varchar(45),
endereco varchar(45),
bairro varchar(45),
cidade varchar(45),
UF varchar(2),
telefone varchar(45),

constraint pkcodCli primary key (codCli));

create table titulo(
codTitulo int not null auto_increment,
nome varchar(45),
tipo varchar(45),
locado bit(1),

constraint pkcodTitulo primary key (codtitulo));

create table locacoes(
codloc int not null auto_increment,
codCli int,
codTitulo int,
dataSaida datetime,
dataRetorno datetime,

constraint pkcodloc primary key (codloc),
constraint fkcodCli foreign key (codCli) references cliente(codCli),
constraint fkcodTitulo foreign key (codTitulo) references titulo(codTitulo));

insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (1, 'Lavínya Fátima', 'Rua da vaje', 'Bom Jesus', 'Muriaé', 'MG', '(32) 98400-0977');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (2, 'Kauã Anderson', 'Rua da Mina', 'Bom Jesus', 'Muriaé', 'MG', '(32) 98450-9977');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (3, 'Lucca Felipe', 'Rua da vaje', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9840-0677');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (4, 'Damião Sotero', 'Rua da vaje', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9840-9536');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (5, 'Lauriene Juliele', 'Rua da vaje', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9845-8757');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (6, 'Anderson Luiz', 'Rua da Mina', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9844-0215');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (7, 'Priscila flauzino', 'Rua da Mina', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9840-2315');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (8, 'Kaio Luiz', 'Rua da Mina', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9847-9856');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (9, 'Amanda Souza', 'Rua da 10', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9848-0754');
insert into cliente (codCli, nome, endereco, bairro, cidade, UF, telefone) values (10, 'Vitoria Souza', 'Rua da 10', 'Bom Jesus', 'Muriaé', 'MG', '(32) 9847-3265');

insert into titulo (codTitulo, nome, tipo, locado) values (1, 'O Pequeno Príncipe', 'Infantil', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (2, 'Harry Potter', 'Fantasia', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (3, 'O Senhor dos Anéis', 'Aventura', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (4, 'Dom Casmurro', 'Romance', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (5, 'Percy Jackson', 'Fantasia', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (6, 'A Cabana', 'Drama', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (7, 'Diário de um Banana', 'Infantil', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (8, 'Sherlock Holmes', 'Suspense', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (9, '1984', 'Ficção', 0);
insert into titulo (codTitulo, nome, tipo, locado) values (10, 'A Arte da Guerra', 'Estratégia', 0);

insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (1, 1, 3, '2025-11-01 10:00:00', '2025-11-08 10:00:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (2, 2, 1, '2025-11-02 14:00:00', '2025-11-09 14:00:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (3, 3, 2, '2025-11-03 09:30:00', '2025-11-10 09:30:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (4, 4, 5, '2025-11-04 15:00:00', '2025-11-11 15:00:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (5, 5, 4, '2025-11-05 11:00:00', '2025-11-12 11:00:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (6, 6, 7, '2025-11-06 16:45:00', '2025-11-13 16:45:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (7, 7, 6, '2025-11-07 08:00:00', '2025-11-14 08:00:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (8, 8, 9, '2025-11-08 13:20:00', '2025-11-15 13:20:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (9, 9, 8, '2025-11-09 12:10:00', '2025-11-16 12:10:00');
insert into locacoes (Codloc, CodCli, CodTitulo, dataSaida, dataRetorno) values (10, 10, 10, '2025-11-10 17:00:00', '2025-11-17 17:00:00');

describe locacoes;
select*from locacoes;