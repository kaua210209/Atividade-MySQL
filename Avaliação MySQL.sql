create database HotelParaiso;
use HotelParaiso;

create table hospede(
codHospede int not null auto_increment,
nomeHos varchar(45),
cpfHos varchar(45),
telHos varchar(45),
endHos varchar(45),

constraint pkcodHospede primary key (codHospede));

create table quarto(
codQuarto int not null auto_increment,
tipoQuarto varchar(45),
precodiaria float,
statusQuarto varchar(45),

constraint pkcodQuarto primary key (codQuarto));

create table servico(
codServ int not null auto_increment,
nomeServ varchar(45),
precoUnitario float,

constraint pkcodServ primary key (codServ));

create table reserva(
codReserva int not null auto_increment,
dataCheckin date,
dataCheckout date,
valorTotal float,
codHospede int,
codQuarto int,

constraint pkcodReserva primary key (codReserva),
constraint fkcodHospede foreign key (codHospede) references Hospede(codHospede),
constraint fkcodQuarto foreign key (codQuarto) references Quarto(codQuarto));

create table consumo(
codConsumo int not null auto_increment,
quantConsumo int,
codReserva int,
codServico int,

constraint pkcodConsumo primary key (codConsumo),
constraint fkcodReserva foreign key (codReserva) references reserva(codReserva),
constraint fkcodServ foreign key (codServico) references servico(codServ));

insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (1,'Ana Silva', '111.111.111-11', '(32) 9999-1001', 'Rua A, 10');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (2,'Bruno Costa', '222.222.222-22', '3299991002', 'Rua B, 20');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (3,'Carlos Ferreira', '333.333.333-33', '3299991003', 'Rua C, 30');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (4,'Daniela Souza', '444.444.444-44', '3299991004', 'Rua D, 40');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (5,'Eduardo Lima', '555.555.555-55', '3299991005', 'Rua E, 50');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (6,'Fernanda Rocha', '666.666.666-66', '3299991006', 'Rua F, 60');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (7,'Gabriel Almeida', '777.777.777-77', '3299991007', 'Rua G, 70');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (8,'Helena Martins', '888.888.888-88', '3299991008', 'Rua H, 80');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (9,'Igor Batista', '999.999.999-99', '3299991009', 'Rua I, 90');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (10,'Julia Ramos', '101.101.101-10', '3299991010', 'Rua J, 100');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (11,'Kleber Andrade', '202.202.202-20', '3299991011', 'Rua K, 110');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (12,'Larissa Gomes', '303.303.303-30', '3299991012', 'Rua L, 120');
insert into Hospede (codHospede, nomeHos, cpfHos, telHos, endHos) values (13,'Marcos Vinicius', '404.404.404-40', '3299991013', 'Rua M, 130');

insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (101, 'Standard', 150.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (102, 'Standard', 150.00, 'Ocupado');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (103, 'Standard', 150.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (104, 'Standard', 150.00, 'Manutenção');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (201, 'Luxo', 250.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (202, 'Luxo', 250.00, 'Ocupado');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (203, 'Luxo', 250.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (204, 'Luxo', 250.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (301, 'Master', 350.00, 'Ocupado');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (302, 'Master', 350.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (303, 'Master', 350.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (401, 'Premium', 450.00, 'Manutenção');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (402, 'Premium', 450.00, 'Livre');
insert into quarto (codQuarto, tipoQuarto, precoDiaria, statusQuarto) values (403, 'Premium', 450.00, 'Ocupado');

insert into servico (codServ, nomeServ, precoUnitario) values (1,'Lavanderia', 30.00);
insert into servico (codServ, nomeServ, precoUnitario) values (2,'Frigobar', 15.00);
insert into servico (codServ, nomeServ, precoUnitario) values (3,'Serviço de Quarto', 25.00);
insert into servico (codServ, nomeServ, precoUnitario) values (4,'Café da Manhã', 20.00);
insert into servico (codServ, nomeServ, precoUnitario) values (5,'Almoço', 35.00);
insert into servico (codServ, nomeServ, precoUnitario) values (6,'Jantar', 40.00);
insert into servico (codServ, nomeServ, precoUnitario) values (7,'Spa', 80.00);
insert into servico (codServ, nomeServ, precoUnitario) values (8,'Piscina Aquecida', 50.00);
insert into servico (codServ, nomeServ, precoUnitario) values (9,'Academia', 10.00);
insert into servico (codServ, nomeServ, precoUnitario) values (10,'Estacionamento', 25.00);
insert into servico (codServ, nomeServ, precoUnitario) values (11,'Traslado', 60.00);
insert into servico (codServ, nomeServ, precoUnitario) values (12,'Passeio Turístico', 120.00);

insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (1, '2025-01-10', '2025-01-12', 300.00, 1, 101);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (2,'2025-01-11', '2025-01-15', 600.00, 2, 102);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (3,'2025-02-01', '2025-02-03', 300.00, 3, 103);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (4,'2025-02-05', '2025-02-06', 150.00, 4, 201);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (5,'2025-02-08', '2025-02-10', 500.00, 5, 202);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (6,'2025-03-01', '2025-03-05', 700.00, 6, 203);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (7,'2025-03-10', '2025-03-12', 700.00, 7, 204);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (8,'2025-03-15', '2025-03-17', 700.00, 8, 301);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (9,'2025-03-20', '2025-03-22', 700.00, 9, 302);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (10,'2025-03-25', '2025-03-28', 1050.00, 10, 303);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (11,'2025-04-01', '2025-04-05', 1800.00, 11, 402);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (12,'2025-04-10', '2025-04-12', 900.00, 12, 403);
insert into Reserva (codReserva, dataCheckin, dataCheckout, valorTotal, codhospede, codquarto) values (13,'2025-04-15', '2025-04-18', 1350.00, 13, 401);

insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (1, 2, 1, 1);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (2, 3, 2, 2);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (3, 1, 3, 4);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (4, 2, 4, 3);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (5, 1, 5, 7);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (6, 4, 6, 2);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (7, 2, 7, 5);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (9, 1, 8, 6);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (10, 3, 9, 1);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (11, 1, 10, 8);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (12, 2, 11, 10);
insert into Consumo (codconsumo, quantconsumo, codreserva, codservico) values (13, 1, 12, 12);