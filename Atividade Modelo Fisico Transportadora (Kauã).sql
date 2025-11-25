create database bd1;
use BD1;
create table motorista(
id int not null auto_increment,
nome varchar(45),
fone varchar(45),

constraint pkid primary key (id));

show tables;
describe viagem;

create table cliente(
id int not null auto_increment,
nome varchar(45),
fone varchar(45),
endereco varchar(45),

constraint pkid primary key (id));

create table veiculo(
id int not null auto_increment,
placa varchar(45),
modelo varchar(45),
cor varchar(45),
ano int,
idmotorista int,

constraint pkid primary key (id),
constraint fkidmotorista foreign key (idmotorista) references motorista(id));

create table viagem(
id int not null auto_increment,
dataviagem date,
horarioviagem time,
valor float,
origem varchar(45),
destino varchar(45),
idcliente int,
idmotorista int,

constraint pkid primary key (id),
constraint fkidcliente foreign key (idcliente) references cliente(id),
constraint fkidmotoristaviagem foreign key (idmotorista) references motorista(id));

insert into motorista (id, nome, fone) values (1, 'Kauã', '(32) 98452-1595');
insert into motorista (id, nome, fone) values (2, 'Júlia', '(32) 98462-1290');
insert into motorista (id, nome, fone) values (3, 'Juliana', '(32) 96752-2595');
insert into motorista (id, nome, fone) values (4, 'Luciano', '(32) 98442-3595');
insert into motorista (id, nome, fone) values (5, 'Anderson', '(32) 98552-7595');
insert into motorista (id, nome, fone) values (6, 'Priscila', '(32) 98456-8595');
insert into motorista (id, nome, fone) values (7, 'Kaio', '(32) 98455-1585');
insert into motorista (id, nome, fone) values (8, 'Amanda', '(32) 98752-3595');
insert into motorista (id, nome, fone) values (9, 'Vitoria', '(32) 98982-8595');
insert into motorista (id, nome, fone) values (10, 'Felipe', '(32) 98462-3495');


insert into cliente (id, nome, fone, endereco) values (1, 'Andre', '(32) 98452-1595', 'Rua do meio, 10');
insert into cliente (id, nome, fone, endereco) values (2, 'Luan', '(32) 98462-1290', 'Rua do fim, 2');
insert into cliente (id, nome, fone, endereco) values (3, 'Rogerio', '(32) 96752-2595', 'Rua A, 3');
insert into cliente (id, nome, fone, endereco) values (4, 'Rodrigo', '(32) 98442-3595', 'Rua B, 4');
insert into cliente (id, nome, fone, endereco) values (5, 'Gabriel', '(32) 98552-7595', 'Rua C, 5');
insert into cliente (id, nome, fone, endereco) values (6, 'Roberto', '(32) 98456-8595', 'Rua D, 6');
insert into cliente (id, nome, fone, endereco) values (7, 'Simao', '(32) 98455-1585', 'Rua E, 7');
insert into cliente (id, nome, fone, endereco) values (8, 'Luiz', '(32) 98752-3595', 'Rua F, 8');
insert into cliente (id, nome, fone, endereco) values (9, 'Carlos', '(32) 98982-8595', 'Rua G, 9');
insert into cliente (id, nome, fone, endereco) values (10, 'João', '(32) 98462-3495', 'Rua H, 10');

insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (1, 'HLC-CC00', 'MB1150', 'Vermelho', 1979, 9);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (2, 'HLX-CB70', 'T-croos', 'azul', 2025, 1);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (3, 'HLA-CF90', 'Fiat', 'Branco', 2000, 3);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (4, 'HLS-EC50', 'Gol', 'preto', 2002, 8);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (5, 'HLZ-TC20', 'Corola', 'Cinza', 2010, 10);

insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (1, '2025-11-24', '11:13:12', 1520.50, 'Muriae', 'Belo Horizonte', 4, 1);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (2, '2025-11-26', '17:20:02', 1020.00, 'Muriae', 'Rio de janeiro', 2, 9);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (3, '2025-11-15', '16:18:06', 1620.50, 'Muriae', 'São Paulo', 6, 3);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (4, '2025-11-10', '08:10:55', 520.20, 'Muriae', 'Bahia', 5, 8);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (5, '2025-11-08', '10:30:10', 2520.30, 'Muriae', 'Amazonas', 10, 10);

select*from viagem;