create database VitaTech;
use VitaTech;

/*Atividade 1*/
create table paciente(
codPaciente int not null auto_increment,
nomePaciente varchar(45),
dataNascimento date,
convenio varchar(45),

constraint pkcodPaciente primary key (codPaciente));

create table medico(
crm varchar(45) not null,
nomeMedico varchar(45),
especialidade varchar(45),

constraint pkcrm primary key (crm));

create table tipoExame(
codExame int not null auto_increment,
nomeExame varchar(45),
valorBase float,
setor varchar(45),

constraint pkcodExame primary key (codExame));

create table consuta(
codConsuta int not null auto_increment,
codPaciente int,
crm varchar(45),
dataConsuta date,

constraint pkcodCunsuta primary key (codConsuta),
constraint fkcodPaciente foreign key (codPaciente) references paciente(codPaciente),
constraint fkcrm foreign key (crm) references medico(crm));

create table solicitacaoExame(
codSolicitacao int not null auto_increment,
codConsuta int,
codExame int,
dataColeta date,
statusExame varchar(45),

constraint pkcodSolicitacao primary key (codSolicitacao),
constraint fkcodConsuta foreign key (codConsuta) references consuta(codConsuta),
constraint fkcodExame  foreign key (codExame) references tipoExame(codExame));

create table unidade(
codUnidade int not null auto_increment,
nomeUnidade varchar(45),
endereco varchar(45),

constraint pkcodUnidade primary key (codUnidade));

create table resultadoExame(
codResultado int not null auto_increment,
codSolicitacao int,
codUnidade int,
dataLiberacao date,
valorResultado float,
referencia varchar(45),

constraint pkcodResultado primary key (codResultado),
constraint fkcodSolicitacao foreign key (codSolicitacao) references solicitacaoExame(codSolicitacao),
constraint fkcodUnidade foreign key (codUnidade) references unidade(codUnidade));

create table convenio(
nomeConvenio varchar(45) not null,
cnpj varchar(20),
descontoPadrao decimal,

constraint pknomeConvenio primary key (nomeConvenio));

/*Atividade 2*/
select*from paciente;
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (1, 'ana costa', '1985-04-12', 'unimed');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (2, 'marcos ferreira', '1990-09-21', 'bradesco saude');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (3, 'paulo silva', '1978-11-05', 'particular');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (4, 'juliana santos', '2001-02-18', 'amil');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (5, 'carla oliveira', '1994-06-30', 'unimed');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (6, 'ricardo almeida', '1988-12-25', 'hapvida');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (7, 'felipe cardoso', '1999-03-10', 'sulamerica');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (8, 'lucas mendes', '1982-07-14', 'particular');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (9, 'mariana vieira', '1997-01-27', 'amil');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (10, 'gabriel araujo', '2003-08-09', 'unimed');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (11, 'sofia ramos', '1996-12-02', 'bradesco saude');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (12, 'bruno teixeira', '1981-05-19', 'particular');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (13, 'aline nogueira', '1989-10-28', 'sulamerica');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (14, 'joao pedro', '2000-04-03', 'hapvida');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (15, 'laura pinheiro', '1984-09-16', 'amil');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (16, 'carlos henrique', '1975-03-22', 'unimed');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (17, 'patricia moraes', '1993-11-11', 'bradesco saude');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (18, 'daniel lopes', '1998-02-07', 'particular');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (19, 'renata dias', '2002-05-25', 'sulamerica');
insert into paciente (codpaciente, nomepaciente, datanascimento, convenio) values (20, 'thiago martins', '1979-07-08', 'hapvida');

select*from medico;
insert into medico (crm, nomemedico, especialidade) values (1001, 'dr. ricardo souza', 'cardiologia');
insert into medico (crm, nomemedico, especialidade) values (1002, 'dr. fernanda albuquerque', 'pediatria');
insert into medico (crm, nomemedico, especialidade) values (1003, 'dr. joao carvalho', 'clinico geral');
insert into medico (crm, nomemedico, especialidade) values (1004, 'dr. marina santos', 'dermatologia');
insert into medico (crm, nomemedico, especialidade) values (1005, 'dr. lucas fonseca', 'neurologia');
insert into medico (crm, nomemedico, especialidade) values (1006, 'dr. julia pereira', 'oftalmologia');
insert into medico (crm, nomemedico, especialidade) values (1007, 'dr. pedro mendes', 'ortopedia');
insert into medico (crm, nomemedico, especialidade) values (1008, 'dr. ana beatriz', 'ginecologia');
insert into medico (crm, nomemedico, especialidade) values (1009, 'dr. carla dias', 'cardiologia');
insert into medico (crm, nomemedico, especialidade) values (1010, 'dr. thiago ramos', 'urologia');
insert into medico (crm, nomemedico, especialidade) values (1011, 'dr. roberta lima', 'pediatria');
insert into medico (crm, nomemedico, especialidade) values (1012, 'dr. andre silveira', 'endocrinologia');
insert into medico (crm, nomemedico, especialidade) values (1013, 'dr. renata marques', 'clinico geral');
insert into medico (crm, nomemedico, especialidade) values (1014, 'dr. felipe castro', 'gastroenterologia');
insert into medico (crm, nomemedico, especialidade) values (1015, 'dr. sofia almeida', 'hematologia');
insert into medico (crm, nomemedico, especialidade) values (1016, 'dr. gustavo fernandes', 'nefrologia');
insert into medico (crm, nomemedico, especialidade) values (1017, 'dr. patricia rocha', 'pneumologia');
insert into medico (crm, nomemedico, especialidade) values (1018, 'dr. eduardo pires', 'cardiologia');
insert into medico (crm, nomemedico, especialidade) values (1019, 'dr. camila vieira', 'reumatologia');
insert into medico (crm, nomemedico, especialidade) values (1020, 'dr. marcos arruda', 'infectologia');

select*from tipoExame;
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (1, 'hemograma', 35.00, 'hematologia');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (2, 'glicose em jejum', 18.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (3, 'colesterol total', 22.50, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (4, 'triglicerideos', 20.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (5, 'tgo', 15.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (6, 'tgp', 15.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (7, 'tsh', 40.00, 'hormonios');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (8, 't4 livre', 42.00, 'hormonios');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (9, 'ureia', 17.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (10, 'creatinina', 19.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (11, 'ácido úrico', 21.00, 'bioquimica');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (12, 'vitamina d', 58.00, 'hormonios');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (13, 'covid-19 pcr', 95.00, 'urgencia');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (14, 'raio x torax', 70.00, 'imagem');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (15, 'ultrassom abdomen', 85.00, 'imagem');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (16, 'eletrocardiograma', 60.00, 'cardiologia');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (17, 'prolactina', 38.00, 'hormonios');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (18, 'psa total', 45.00, 'uroilogia');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (19, 'coagulograma', 55.00, 'hematologia');
insert into tipoexame (codexame, nomeexame, valorbase, setor) values (20, 'ferretina', 42.00, 'hematologia');

select*from consuta;
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (1, 1, 1001, '2025-09-10');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (2, 2, 1002, '2025-09-12');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (3, 3, 1003, '2025-09-15');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (4, 4, 1004, '2025-09-18');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (5, 5, 1005, '2025-09-20');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (6, 6, 1006, '2025-09-22');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (7, 7, 1007, '2025-09-25');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (8, 8, 1008, '2025-09-28');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (9, 9, 1009, '2025-10-02');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (10, 10, 1010, '2025-10-05');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (11, 11, 1011, '2025-10-08');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (12, 12, 1012, '2025-10-12');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (13, 13, 1013, '2025-10-15');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (14, 14, 1014, '2025-10-18');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (15, 15, 1015, '2025-10-20');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (16, 16, 1016, '2025-10-22');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (17, 17, 1017, '2025-10-25');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (18, 18, 1018, '2025-10-28');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (19, 19, 1019, '2025-11-01');
insert into consuta (codconsuta, codpaciente, crm, dataconsuta) values (20, 20, 1020, '2025-11-03');

select*from solicitacaoexame;
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (1, 1, 1, '2025-01-10', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (2, 1, 3, '2025-01-11', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (3, 2, 4, '2025-01-15', 'coletado');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (4, 2, 2, '2025-01-16', 'concluido');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (5, 3, 1, '2025-02-01', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (6, 3, 5, '2025-02-02', 'coletado');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (7, 4, 2, '2025-02-10', 'concluido');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (8, 4, 4, '2025-02-12', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (9, 5, 3, '2025-03-05', 'coletado');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (10, 5, 5, '2025-03-06', 'concluido');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (11, 6, 1, '2025-03-12', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (12, 6, 4, '2025-03-13', 'coletado');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (13, 7, 2, '2025-03-18', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (14, 7, 5, '2025-03-19', 'concluido');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (15, 8, 3, '2025-03-22', 'coletado');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (16, 8, 1, '2025-03-23', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (17, 9, 4, '2025-03-28', 'coletado');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (18, 9, 2, '2025-03-29', 'concluido');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (19, 10, 3, '2025-04-03', 'pendente');
insert into solicitacaoexame (codsolicitacao, codconsuta, codexame, datacoleta, statusexame) values (20, 10, 5, '2025-04-04', 'coletado');

select*from unidade;
insert into unidade (codunidade, nomeunidade, endereco) values (1, 'unidade central', 'rua das flores, 120 - centro');
insert into unidade (codunidade, nomeunidade, endereco) values (2, 'unidade norte', 'avenida brasil, 980 - bairro norte');
insert into unidade (codunidade, nomeunidade, endereco) values (3, 'unidade sul', 'rua dom pedro ii, 45 - bairro sul');
insert into unidade (codunidade, nomeunidade, endereco) values (4, 'unidade leste', 'avenida esperança, 300 - bairro leste');
insert into unidade (codunidade, nomeunidade, endereco) values (5, 'unidade oeste', 'rua santo antônio, 77 - bairro oeste');
insert into unidade (codunidade, nomeunidade, endereco) values (6, 'unidade jardim', 'rua ipê amarelo, 500 - jardim primavera');
insert into unidade (codunidade, nomeunidade, endereco) values (7, 'unidade industrial', 'avenida metalúrgicos, 1100 - distrito');
insert into unidade (codunidade, nomeunidade, endereco) values (8, 'unidade mar azul', 'rua oceano pacífico, 20 - vila marítima');
insert into unidade (codunidade, nomeunidade, endereco) values (9, 'unidade morada nova', 'rua das acácias, 315 - morada nova');
insert into unidade (codunidade, nomeunidade, endereco) values (10, 'unidade santa clara', 'avenida santos dumont, 640 - santa clara');
insert into unidade (codunidade, nomeunidade, endereco) values (11, 'unidade bela vista', 'rua dos cravos, 142 - bela vista');
insert into unidade (codunidade, nomeunidade, endereco) values (12, 'unidade panorama', 'avenida horizonte azul, 410 - panorama');
insert into unidade (codunidade, nomeunidade, endereco) values (13, 'unidade liberdade', 'rua nova esperança, 811 - liberdade');
insert into unidade (codunidade, nomeunidade, endereco) values (14, 'unidade vila nova', 'rua projetada a, 212 - vila nova');
insert into unidade (codunidade, nomeunidade, endereco) values (15, 'unidade campo verde', 'rua das palmeiras, 990 - campo verde');
insert into unidade (codunidade, nomeunidade, endereco) values (16, 'unidade tirol', 'avenida dos pioneiros, 33 - tirol');
insert into unidade (codunidade, nomeunidade, endereco) values (17, 'unidade jardim europa', 'alameda portugal, 50 - jardim europa');
insert into unidade (codunidade, nomeunidade, endereco) values (18, 'unidade recanto', 'rua do sol nascente, 78 - recanto doce lar');
insert into unidade (codunidade, nomeunidade, endereco) values (19, 'unidade santos reis', 'avenida são miguel, 280 - santos reis');
insert into unidade (codunidade, nomeunidade, endereco) values (20, 'unidade vale azul', 'rua lagoa serena, 900 - vale azul');

select*from resultadoexame;
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (1, 1, 1, '2025-11-01', 12.5, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (2, 2, 2, '2025-11-02', 8.4, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (3, 3, 3, '2025-11-03', 15.1, 'alterado');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (4, 4, 4, '2025-11-04', 9.8, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (5, 5, 5, '2025-11-05', 22.0, 'alto');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (6, 6, 6, '2025-11-06', 10.0, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (7, 7, 7, '2025-11-07', 17.3, 'alterado');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (8, 8, 8, '2025-11-08', 11.1, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (9, 9, 9, '2025-11-09', 6.9, 'baixo');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (10, 10, 10, '2025-11-10', 13.7, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (11, 11, 1, '2025-11-11', 9.2, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (12, 12, 2, '2025-11-12', 14.8, 'alterado');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (13, 13, 3, '2025-11-13', 7.3, 'baixo');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (14, 14, 4, '2025-11-14', 20.4, 'alto');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (15, 15, 5, '2025-11-15', 16.0, 'alterado');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (16, 16, 6, '2025-11-16', 12.0, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (17, 17, 7, '2025-11-17', 18.2, 'alterado');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (18, 18, 8, '2025-11-18', 10.5, 'normal');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (19, 19, 9, '2025-11-19', 5.8, 'baixo');
insert into resultadoexame (codresultado, codsolicitacao, codunidade, dataliberacao, valorresultado, referencia) values (20, 20, 10, '2025-11-20', 21.9, 'alto');

select*from convenio;
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('unimed', '11.111.111/0001-11', 10);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('bradesco saude', '22.222.222/0001-22', 8);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('amil', '33.333.333/0001-33', 12);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('hapvida', '44.444.444/0001-44', 15);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('sulamerica', '55.555.555/0001-55', 9);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('notredame', '66.666.666/0001-66', 7);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('saude total', '77.777.777/0001-77', 5);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('vida melhor', '88.888.888/0001-88', 6);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('cuidar mais', '99.999.999/0001-99', 11);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('saude vip', '10.101.010/0001-10', 4);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('premium health', '12.121.212/0001-12', 10);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('plus saude', '13.131.313/0001-13', 8);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('clin vida', '14.141.414/0001-14', 6);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('vida plena', '15.151.515/0001-15', 7);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('eco saude', '16.161.616/0001-16', 13);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('saude junior', '17.171.717/0001-17', 9);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('rede bem estar', '18.181.818/0001-18', 5);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('plano popular', '19.191.919/0001-19', 3);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('bem viver', '20.202.020/0001-20', 4);
insert into convenio (nomeconvenio, cnpj, descontopadrao) values ('santa saude', '21.212.121/0001-21', 6);

/*Atividade 3*/
alter table tipoExame add tempoJejum int;
describe tipoExame;

/*Atividade 4*/
update tipoExame set valorbase = valorbase * 1.15 where setor = 'hematologia' and valorbase < 50.00;

/*Atividade 5*/
/*O codigo abaixo nao rodou pois a crm do medico esta amarrada a consuta*/
delete from medico where especialidade = 'clínico geral' or nomemedico like 'j%';

/*Atividade 6*/
select crm as registroProfissional, nomeMedico from medico order by especialidade desc;

/*Atividade 7*/
select nomepaciente, datanascimento from paciente where datanascimento between '1980-01-01' and '1995-12-31';

/*Atividade 8*/
select nomeexame, setor from tipoExame where nomeexame not like '%glicose%' and setor like '%bio%';

/*Atividade 9*/
select nomeunidade, endereco from unidade where endereco in ('avenida santos dumont, 640 - santa clara', 'rua das acácias, 315 - morada nova', 'rua das flores, 120 - centro');

/*Atividade 10*/
select nomepaciente, convenio from paciente where convenio not in ('unimed', 'bradesco saúde', 'particular');

/*Atividade 11*/
select paciente.nomepaciente, medico.nomemedico, consuta.dataconsuta
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join medico on consuta.crm = medico.crm
where consuta.dataconsuta > '2025-09-01';

/*Atividade 12*/
select paciente.nomepaciente, tipoexame.nomeexame, solicitacaoexame.statusexame
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
order by paciente.nomepaciente asc;

/*Atividade 13*/
select paciente.nomepaciente, tipoexame.nomeexame, unidade.nomeunidade
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join resultadoexame on resultadoexame.codsolicitacao = solicitacaoexame.codsolicitacao
inner join unidade on resultadoexame.codunidade = unidade.codunidade
inner join tipoexame on tipoexame.codexame = solicitacaoexame.codexame
where resultadoexame.valorresultado > 15
and tipoexame.nomeexame = 'hemograma';

/*Atividade 14*/
select medico.nomemedico, medico.especialidade, tipoexame.nomeexame
from medico
inner join consuta on medico.crm = consuta.crm
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
where medico.especialidade = 'cardiologia'
or tipoexame.setor = 'urgência';

/*Atividade 15*/
select medico.nomemedico, count(*) as totalconsultas
from medico
inner join consuta on medico.crm = consuta.crm
group by medico.nomemedico;

/*Atividade 16*/
select setor, min(valorbase) as valorminimo
from tipoexame
group by setor;

/*Atividade 17*/
select paciente.nomepaciente, max(resultadoexame.valorresultado) as resultadomaximo
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join resultadoexame on solicitacaoexame.codsolicitacao = resultadoexame.codsolicitacao
group by paciente.nomepaciente;

/*Atividade 18*/
select paciente.nomepaciente, tipoexame.nomeexame
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
where paciente.datanascimento >= '1990-01-01'
and consuta.crm not between 5000 and 8000;

/*Atividade 19*/
select nomeunidade, endereco
from unidade
where nomeunidade like 'unidade central%'
and codunidade between 1 and 10;

/*Atividade 20*/
select paciente.nomepaciente, medico.nomemedico, tipoexame.nomeexame, solicitacaoexame.statusexame
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join medico on consuta.crm = medico.crm
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
inner join resultadoexame on solicitacaoexame.codsolicitacao = resultadoexame.codsolicitacao
where solicitacaoexame.statusexame in ('pendente', 'coletado')
order by resultadoexame.dataliberacao desc;

/*Atividade 21*/
select paciente.nomepaciente, tipoexame.nomeexame, medico.nomemedico
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join medico on consuta.crm = medico.crm
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
where paciente.nomepaciente not like '%silva%'
or medico.nomemedico not like '%dr.%';

/*Atividade 22*/
select setor, sum(valorbase) as receitaestimada
from tipoexame
group by setor;

/*Atividade 23*/
select paciente.nomepaciente, medico.nomemedico, consuta.dataconsuta
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join medico on consuta.crm = medico.crm
order by medico.especialidade asc, consuta.dataconsuta desc;

/*Atividade 24*/
select paciente.nomepaciente, medico.nomemedico, paciente.convenio
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join medico on consuta.crm = medico.crm
where paciente.convenio = 'unimed'
and medico.especialidade = 'pediatria';

/*Atividade 25*/
select setor, count(distinct nomeexame) as tiposdistintos
from tipoexame
group by setor;

/*Atividade 26*/
select paciente.nomepaciente, unidade.nomeunidade
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join resultadoexame on resultadoexame.codsolicitacao = solicitacaoexame.codsolicitacao
inner join unidade on resultadoexame.codunidade = unidade.codunidade
where paciente.datanascimento not between '1970-01-01' and '1979-12-31'
and resultadoexame.dataliberacao > '2025-11-01';

/*Atividade 27*/
select paciente.nomepaciente, tipoexame.nomeexame
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
where tipoexame.nomeexame like 't%'
or paciente.nomepaciente like '%ferreira%';

/*Atividade 28*/
select paciente.convenio, avg(tipoexame.valorbase) as valormedio
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
group by paciente.convenio;

/*Atividade 29*/
select medico.nomemedico, unidade.nomeunidade, resultadoexame.dataliberacao
from medico
inner join consuta on medico.crm = consuta.crm
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join resultadoexame on resultadoexame.codsolicitacao = solicitacaoexame.codsolicitacao
inner join unidade on resultadoexame.codunidade = unidade.codunidade
where unidade.codunidade in (1, 5, 10)
and medico.especialidade in ('neurologia', 'oftalmologia');

/*Atividade 30*/
select paciente.nomepaciente, medico.nomemedico, paciente.convenio, tipoexame.nomeexame
from paciente
inner join consuta on paciente.codpaciente = consuta.codpaciente
inner join medico on consuta.crm = medico.crm
inner join solicitacaoexame on consuta.codconsuta = solicitacaoexame.codconsuta
inner join tipoexame on solicitacaoexame.codexame = tipoexame.codexame
where paciente.convenio = 'sus'
or tipoexame.nomeexame = 'eletrocardiograma';