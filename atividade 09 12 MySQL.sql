create database TECNOINOVA;
use TECNOINOVA;
show tables;

create table FUNCIONARIO (
codFuncionario int not null auto_increment,
nomeFuncionario varchar(45),
cargo varchar(45),
salarioHora decimal,

constraint pkcodFuncionario primary key (codFuncionario));

create table PROJETO (
codProjeto int not null auto_increment,
nomeProjeto VARCHAR(100),
dataInicio date,
statusProjeto varchar(45),
constraint pkcodProjeto primary key (codProjeto));

create table TECNOLOGIA (
nomeTecnologia varchar(45) not null,
descricao varchar(45),

constraint pknomeTecnologia primary key (nomeTecnologia));

create table projetoTecnologia (
codProjeto int,
nomeTecnologia varchar(45),
nivelNecessario varchar(45),

constraint pkcodProjeto primary key (codProjeto, nomeProjeto),
constraint fkcodProjeto foreign key (codProjeto) references projeto(codProjeto),
constraint fknomeTecnologia foreign key (nomeTecnologia) references tecnologia(nomeTecnologia));

insert into funcionario (codFuncionario, nomeFuncionario, cargo, salarioHora) values (1, 'Ana Torres', 'Desenvolvedor', 60.00);
insert into funcionario (codFuncionario, nomeFuncionario, cargo, salarioHora) values (2, 'Carlos Lima', 'Gerente', 90.00);
insert into funcionario (codFuncionario, nomeFuncionario, cargo, salarioHora) values (3, 'Juliana Prado', 'Analista', 55.00);
insert into funcionario (codFuncionario, nomeFuncionario, cargo, salarioHora) values (4, 'Rafael Souza', 'Desenvolvedor', 62.00);
insert into funcionario (codFuncionario, nomeFuncionario, cargo, salarioHora) values (5, 'Beatriz Melo', 'Estagiário', 25.00);

insert into projeto (codProjeto, nomeProjeto, dataInicio, status) values (10, 'Sistema Web', '2025-06-15', 'Em andamento');
insert into projeto (codProjeto, nomeProjeto, dataInicio, status) values (11, 'Migração Servidores', '2024-05-10', 'Concluído');
insert into projeto (codProjeto, nomeProjeto, dataInicio, status) values (12, 'App Financeiro', '2025-07-20', 'Pendente');

insert into tecnologia (nomeTecnologia, descricao) values ('Java', 'Linguagem backend');
insert into tecnologia (nomeTecnologia, descricao) values ('SQL', 'Banco de dados relacional');
insert into tecnologia (nomeTecnologia, descricao) values ('JavaScript', 'Front-end e APIs');
insert into tecnologia (nomeTecnologia, descricao) values ('Python', 'Automação e IA');
insert into tecnologia (nomeTecnologia, descricao) values ('Docker', 'Contêineres e DevOps');

insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (10, 'Java', 'Avançado');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (10, 'JavaScript', 'Básico');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (11, 'SQL', 'Avançado');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (11, 'Python', 'Intermediário');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (12, 'Java', 'Básico');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (12, 'Docker', 'Intermediário');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (12, 'SQL', 'Básico');
insert into projetotecnologia (codProjeto, nomeTecnologia, nivelNecessario) values (10, 'Python', 'Intermediário');

alter table funcionario modify cargo varchar(50);
describe projetoTecnologia;
update funcionario set salarioHora = 65.00 where cargo = 'Desenvolvedor';
delete from projeto where statusProjeto = 'Pendente';

select*from projeto;
describe projeto;
