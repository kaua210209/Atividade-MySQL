create database bd3;
use bd3;

create table motorista(
id int not null auto_increment,
nome varchar(45),
fone varchar(45),

constraint pkid primary key (id));

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

insert into motorista (id, nome, fone) values (1, 'Carlos Almeida', '(32) 99000-1111');
insert into motorista (id, nome, fone) values (2, 'Rafael Souza', '(32) 99000-2222');
insert into motorista (id, nome, fone) values (3, 'Marcos Vieira', '(32) 99000-3333');
insert into motorista (id, nome, fone) values (4, 'João Pedro', '(32) 99000-4444');
insert into motorista (id, nome, fone) values (5, 'Bruno Mendes', '(32) 99000-5555');
insert into motorista (id, nome, fone) values (6, 'Daniel Martins', '(32) 99000-6666');
insert into motorista (id, nome, fone) values (7, 'Leonardo Lima', '(32) 99000-7777');
insert into motorista (id, nome, fone) values (8, 'Eduardo Ramos', '(32) 99000-8888');
insert into motorista (id, nome, fone) values (9, 'Felipe Rocha', '(32) 99000-9999');
insert into motorista (id, nome, fone) values (10, 'Thiago Ribeiro', '(32) 99000-1010');

insert into cliente (id, nome, fone, endereco) values (1, 'Maria Silva', '3299001-1111', 'Rua A, 123');
insert into cliente (id, nome, fone, endereco) values (2, 'João Pereira', '3299001-2222', 'Rua B, 45');
insert into cliente (id, nome, fone, endereco) values (3, 'Ana Costa', '3299001-3333', 'Av. Brasil, 500');
insert into cliente (id, nome, fone, endereco) values (4, 'Paula Santos', '3299001-4444', 'Rua C, 78');
insert into cliente (id, nome, fone, endereco) values (5, 'Lucas Andrade', '3299001-5555', 'Av. Minas, 200');
insert into cliente (id, nome, fone, endereco) values (6, 'Ricardo Lima', '3299001-6666', 'Rua D, 19');
insert into cliente (id, nome, fone, endereco) values (7, 'Fernanda Dias', '3299001-7777', 'Rua E, 51');
insert into cliente (id, nome, fone, endereco) values (8, 'Gabriel Souza', '3299001-8888', 'Rua F, 88');
insert into cliente (id, nome, fone, endereco) values (9, 'Juliana Ribeiro', '3299001-9999', 'Rua G, 300');
insert into cliente (id, nome, fone, endereco) values (10, 'Carlos Mendes', '3299001-1010', 'Rua H, 12');

insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (1, 'ABC1A11', 'Gol', 'Prata', 2015, 1);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (2, 'BCD2B22', 'Onix', 'Branco', 2018, 2);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (3, 'CDE3C33', 'Fiesta', 'Preto', 2014, 3);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (4, 'DEF4D44', 'Celta', 'Vermelho', 2012, 4);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (5, 'EFG5E55', 'Palio', 'Azul', 2016, 5);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (6, 'FGH6F66', 'HB20', 'Cinza', 2019, 6);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (7, 'GHI7G77', 'Civic', 'Prata', 2017, 7);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (8, 'HIJ8H88', 'Corolla', 'Branco', 2018, 8);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (9, 'IJK9I99', 'Uno', 'Preto', 2013, 9);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (10, 'JKL0J00', 'Cruze', 'Vermelho', 2020, 10);

insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (1, '2025-11-01', '08:00:00', 25.50, 'Centro', 'Barra', 1, 1);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (2, '2025-11-02', '09:30:00', 30.00, 'Centro', 'Aeroporto', 2, 2);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (3, '2025-11-03', '10:15:00', 18.75, 'Planalto', 'Centro', 3, 3);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (4, '2025-11-04', '11:50:00', 42.00, 'Barra', 'Hospital', 4, 4);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (5, '2025-11-05', '14:20:00', 55.90, 'Centro', 'Universidade', 5, 5);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (6, '2025-11-06', '15:10:00', 22.00, 'São Pedro', 'Centro', 6, 6);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (7, '2025-11-07', '16:45:00', 31.40, 'Aeroporto', 'Centro', 7, 7);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (8, '2025-11-08', '17:30:00', 27.80, 'Hospital', 'Centro', 8, 8);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (9, '2025-11-09', '18:00:00', 60.00, 'Centro', 'Fábrica', 9, 9);
insert into viagem (id, dataviagem, horarioviagem, valor, origem, destino, idcliente, idmotorista) values (10, '2025-11-10', '19:15:00', 48.50, 'Centro', 'Shopping', 10, 10);

select*from viagem;