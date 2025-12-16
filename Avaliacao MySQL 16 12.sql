create database GlobalTech;
use globalTech;

create table campus (
codCampus int not null auto_increment,
nomeCampus varchar(45),
endereco varchar(45),
telefone varchar(20),

constraint pkcodCampus primary key (codCampus));

create table departamento (
coddepartamento int not null auto_increment,
nomedepartamento varchar(45),
codCampus int,

constraint pkcoddepartamento primary key (coddepartamento),
constraint fkcodCampus foreign key (codCampus) references campus(codCampus));

create table sala (
codsala int not null auto_increment,
nomesala varchar(45),
codcampus int,

constraint pkcodsala primary key (codsala),
constraint fksalacampus foreign key (codcampus) references campus(codcampus));

create table cargo (
codcargo int not null auto_increment,
nomecargo varchar(45),

constraint pkcodcargo primary key (codcargo));

create table professor (
codprofessor int not null auto_increment,
nomeprofessor varchar(45),
email varchar(45),
datacontratacao date,
coddepartamento int,

constraint pkcodprofessor primary key (codprofessor),
constraint fkprofessordepartamento foreign key (coddepartamento) references departamento(coddepartamento));

create table aluno (
codaluno int not null auto_increment,
nomealuno varchar(45),
datanascimento date,
codcampus int,

constraint pkcodaluno primary key (codaluno),
constraint fkalunocampus foreign key (codcampus) references campus(codcampus));

create table funcionario (
codfuncionario int not null auto_increment,
nomefuncionario varchar(45),
salario decimal(10,2),
codcargo int,
codcampus int,

constraint pkcodfuncionario primary key (codfuncionario),
constraint fkfuncionariocargo foreign key (codcargo) references cargo(codcargo),
constraint fkfuncionariocampus foreign key (codcampus) references campus(codcampus));

create table curso (
codcurso int not null auto_increment,
nomecurso varchar(45),
cargahoraria int,
coddepartamento int,

constraint pkcodcurso primary key (codcurso),
constraint fkcursodepartamento foreign key (coddepartamento) references departamento(coddepartamento));

create table disciplina (
coddisciplina int not null auto_increment,
nomedisciplina varchar(45),
codcurso int,
constraint pkcoddisciplina primary key (coddisciplina),
constraint fkdisciplinacurso foreign key (codcurso) references curso(codcurso)
);

create table turma (
codturma int not null auto_increment,
semestre varchar(10),
codprofessor int,
coddisciplina int,
codsala int,

constraint pkcodturma primary key (codturma),
constraint fkturmaprofessor foreign key (codprofessor) references professor(codprofessor),
constraint fkturmadisciplina foreign key (coddisciplina) references disciplina(coddisciplina),
constraint fkturmasala foreign key (codsala) references sala(codsala));

create table matricula (
codmatricula int not null auto_increment,
codaluno int,
codturma int,
datamatricula date,

constraint pkcodmatricula primary key (codmatricula),
constraint fkmatriculaaluno foreign key (codaluno) references aluno(codaluno),
constraint fkmatriculaturma foreign key (codturma) references turma(codturma));

create table historiconota (
codhistorico int not null auto_increment,
codmatricula int,
nota decimal(4,2),
frequencia int,

constraint pkcodhistorico primary key (codhistorico),
constraint fkhistoricomatricula foreign key (codmatricula) references matricula(codmatricula));

insert into campus (nomecampus,endereco,telefone) values ('campus centro','rua a','1111-1111');
insert into campus (nomecampus,endereco,telefone) values ('campus norte','rua b','2222-2222');
insert into campus (nomecampus,endereco,telefone) values ('campus sul','rua c','3333-3333');
insert into campus (nomecampus,endereco,telefone) values ('campus leste','rua d','4444-4444');
insert into campus (nomecampus,endereco,telefone) values ('campus oeste','rua e','5555-5555');
insert into campus (nomecampus,endereco,telefone) values ('campus alpha','rua f','6666-6666');
insert into campus (nomecampus,endereco,telefone) values ('campus beta','rua g','7777-7777');
insert into campus (nomecampus,endereco,telefone) values ('campus gama','rua h','8888-8888');
insert into campus (nomecampus,endereco,telefone) values ('campus delta','rua i','9999-9999');
insert into campus (nomecampus,endereco,telefone) values ('campus virtual','online','0000-0000');

insert into departamento (nomedepartamento,codcampus) values ('engenharia','1');
insert into departamento (nomedepartamento,codcampus) values ('administracao','2');
insert into departamento (nomedepartamento,codcampus) values ('saude','3');
insert into departamento (nomedepartamento,codcampus) values ('direito','4');
insert into departamento (nomedepartamento,codcampus) values ('educacao','5');
insert into departamento (nomedepartamento,codcampus) values ('informatica','6');
insert into departamento (nomedepartamento,codcampus) values ('matematica','7');
insert into departamento (nomedepartamento,codcampus) values ('fisica','8');
insert into departamento (nomedepartamento,codcampus) values ('quimica','9');
insert into departamento (nomedepartamento,codcampus) values ('gestao','10');

insert into sala (nomesala,codcampus) values ('sala 101',1);
insert into sala (nomesala,codcampus) values ('sala 102',1);
insert into sala (nomesala,codcampus) values ('lab 201',2);
insert into sala (nomesala,codcampus) values ('lab 202',2);
insert into sala (nomesala,codcampus) values ('sala 301',3);
insert into sala (nomesala,codcampus) values ('sala 302',3);
insert into sala (nomesala,codcampus) values ('lab 401',4);
insert into sala (nomesala,codcampus) values ('lab 402',4);
insert into sala (nomesala,codcampus) values ('audit 1',5);
insert into sala (nomesala,codcampus) values ('audit 2',6);

insert into cargo (nomecargo) values ('coordenador');
insert into cargo (nomecargo) values ('analista');
insert into cargo (nomecargo) values ('assistente');
insert into cargo (nomecargo) values ('secretario');
insert into cargo (nomecargo) values ('diretor');
insert into cargo (nomecargo) values ('auxiliar');
insert into cargo (nomecargo) values ('supervisor');
insert into cargo (nomecargo) values ('tecnico');
insert into cargo (nomecargo) values ('gestor');
insert into cargo (nomecargo) values ('estagiario');

insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('ana','ana@uni.com','2015-01-10',1);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('bruno','bruno@uni.com','2016-02-11',2);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('carla',null,'2017-03-12',3);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('daniel','daniel@uni.com','2018-04-13',4);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('elaine','elaine@uni.com','2019-05-14',5);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('fabio','fabio@uni.com','2020-06-15',6);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('gabriela','gab@uni.com','2021-07-16',7);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('henrique','hen@uni.com','2022-08-17',8);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('isabela','isa@uni.com','2023-09-18',9);
insert into professor (nomeprofessor,email,datacontratacao,coddepartamento) values ('juliana','jul@uni.com','2024-10-19',10);

insert into aluno (nomealuno,datanascimento,codcampus) values ('maria','2004-05-10',1);
insert into aluno (nomealuno,datanascimento,codcampus) values ('joao','2003-06-11',2);
insert into aluno (nomealuno,datanascimento,codcampus) values ('paulo','2002-07-12',3);
insert into aluno (nomealuno,datanascimento,codcampus) values ('lucas','2006-08-13',4);
insert into aluno (nomealuno,datanascimento,codcampus) values ('sofia','2005-09-14',5);
insert into aluno (nomealuno,datanascimento,codcampus) values ('ana','2007-10-15',6);
insert into aluno (nomealuno,datanascimento,codcampus) values ('pedro','2001-11-16',7);
insert into aluno (nomealuno,datanascimento,codcampus) values ('bruna','2000-12-17',8);
insert into aluno (nomealuno,datanascimento,codcampus) values ('carol','2008-01-18',9);
insert into aluno (nomealuno,datanascimento,codcampus) values ('diego','2009-02-19',10);

insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('roberto',5000,1,1);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('aline',4200,2,2);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('marcos',3800,3,3);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('patricia',4600,4,4);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('silvia',5200,5,5);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('fernando',4100,6,6);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('camila',3900,7,7);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('andre',4300,8,8);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('renata',4800,9,9);
insert into funcionario (nomefuncionario,salario,codcargo,codcampus) values ('thiago',3600,10,10);

insert into curso (nomecurso,cargahoraria,coddepartamento) values ('engenharia de software',180,1);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('marketing',160,2);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('medicina',200,3);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('direito',160,4);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('pedagogia',140,5);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('sistemas de informação',180,6);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('matematica',160,7);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('fisica',180,8);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('quimica',160,9);
insert into curso (nomecurso,cargahoraria,coddepartamento) values ('gestao de pessoas',140,10);

insert into disciplina (nomedisciplina,codcurso) values ('introdução à programação',1);
insert into disciplina (nomedisciplina,codcurso) values ('estruturas de dados',1);
insert into disciplina (nomedisciplina,codcurso) values ('administração financeira',2);
insert into disciplina (nomedisciplina,codcurso) values ('marketing digital',2);
insert into disciplina (nomedisciplina,codcurso) values ('anatomia',3);
insert into disciplina (nomedisciplina,codcurso) values ('bioquímica',3);
insert into disciplina (nomedisciplina,codcurso) values ('direito constitucional',4);
insert into disciplina (nomedisciplina,codcurso) values ('direito penal',4);
insert into disciplina (nomedisciplina,codcurso) values ('psicologia educacional',5);
insert into disciplina (nomedisciplina,codcurso) values ('metodologia de ensino',5);

insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-1',1,1,1);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-1',2,2,2);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-2',3,3,3);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-2',4,4,4);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-1',5,5,5);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-1',6,6,6);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-2',7,7,7);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-2',8,8,8);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-1',9,9,9);
insert into turma (semestre,codprofessor,coddisciplina,codsala) values ('2023-1',10,10,10);

insert into matricula (codaluno,codturma,datamatricula) values (1,1,'2023-01-10');
insert into matricula (codaluno,codturma,datamatricula) values (2,2,'2023-01-11');
insert into matricula (codaluno,codturma,datamatricula) values (3,3,'2023-01-12');
insert into matricula (codaluno,codturma,datamatricula) values (4,4,'2023-01-13');
insert into matricula (codaluno,codturma,datamatricula) values (5,5,'2023-01-14');
insert into matricula (codaluno,codturma,datamatricula) values (6,6,'2023-01-15');
insert into matricula (codaluno,codturma,datamatricula) values (7,7,'2023-01-16');
insert into matricula (codaluno,codturma,datamatricula) values (8,8,'2023-01-17');
insert into matricula (codaluno,codturma,datamatricula) values (9,9,'2023-01-18');
insert into matricula (codaluno,codturma,datamatricula) values (10,10,'2023-01-19');

insert into historiconota (codmatricula,nota,frequencia) values (1,9.5,90);
insert into historiconota (codmatricula,nota,frequencia) values (2,8.0,85);
insert into historiconota (codmatricula,nota,frequencia) values (3,7.5,80);
insert into historiconota (codmatricula,nota,frequencia) values (4,6.0,75);
insert into historiconota (codmatricula,nota,frequencia) values (5,10.0,100);
insert into historiconota (codmatricula,nota,frequencia) values (6,9.0,95);
insert into historiconota (codmatricula,nota,frequencia) values (7,7.0,70);
insert into historiconota (codmatricula,nota,frequencia) values (8,6.5,65);
insert into historiconota (codmatricula,nota,frequencia) values (9,8.5,90);
insert into historiconota (codmatricula,nota,frequencia) values (10,7.0,80);

alter table aluno add email varchar(45);
update aluno set email = 'aluno1@email.com' where codaluno = 1;
update aluno set email = 'aluno2@email.com' where codaluno = 2;
update aluno set email = 'aluno3@email.com' where codaluno = 3;
update aluno set email = 'aluno4@email.com' where codaluno = 4;
update aluno set email = 'aluno5@email.com' where codaluno = 5;
update aluno set email = 'aluno6@email.com' where codaluno = 6;
update aluno set email = 'aluno7@email.com' where codaluno = 7;
update aluno set email = 'aluno8@email.com' where codaluno = 8;
update aluno set email = 'aluno9@email.com' where codaluno = 9;
update aluno set email = 'aluno10@email.com' where codaluno = 10;

/*Atividade 1*/
select nomeprofessor, email, datacontratacao from professor order by datacontratacao asc;

/*Atividade 2*/
select nomealuno from aluno where datanascimento > '2005-01-01';

/*Atividade 3*/
select nomecurso, cargahoraria from curso order by cargahoraria desc;

/*Atividade 4*/
select nomesala from sala where codcampus <> 4;

/*Atividade 5*/
select nomeprofessor from professor where email is null;

/*Atividade 6*/
select codmatricula from historiconota where nota > 8.5;

/*Atividade 7*/
select nomecurso from curso where cargahoraria between 80 and 120;

/*Atividade 8*/
select nomefuncionario from funcionario where codcargo in (1,3,5);

/*Atividade 9*/
select nomeprofessor from professor where nomeprofessor like 'a%';

/*Atividade 10*/
select nomealuno from aluno where datanascimento not between '2000-01-01' and '2004-12-31';

/*Atividade 11*/
select nomedisciplina from disciplina where nomedisciplina like '%básica%';

/*Atividade 12*/
select nomefuncionario from funcionario where salario = 5000.00;

/*Atividade 13*/
select nomeprofessor from professor where nomeprofessor like '%a';

/*Atividade 14*/
select nomealuno, datanascimento from aluno where datanascimento = '2003-05-15';

/*Atividade 15*/
select nomedepartamento from departamento where nomedepartamento like 'engenharia%' and codcampus = 1;

/*Atividade 16*/
select nomecargo from cargo order by nomecargo desc;

/*Atividade 17*/
select codturma from turma where codsala in (10,20);

/*Atividade 18*/
select * from campus where codcampus in (2,5);

/*Atividade 19*/
select nomealuno from aluno where nomealuno like '_____';

/*Atividade 20*/
select nota from historiconota where nota between 5.0 and 7.0 order by nota asc;

/*Atividade 21*/
select aluno.nomealuno, campus.nomecampus 
from aluno 
inner join campus 
on aluno.codcampus = campus.codcampus;

/*Atividade 22*/
select professor.nomeprofessor, departamento.nomedepartamento 
from professor 
inner join departamento 
on professor.coddepartamento = departamento.coddepartamento;

/*Atividade 23*/
select curso.nomecurso, disciplina.nomedisciplina 
from curso 
inner join disciplina 
on curso.codcurso = disciplina.codcurso;

/*Atividade 24*/
select disciplina.nomedisciplina, professor.nomeprofessor, sala.nomesala 
from turma 
inner join disciplina 
on turma.coddisciplina = disciplina.coddisciplina 
inner join professor 
on turma.codprofessor = professor.codprofessor 
inner join sala 
on turma.codsala = sala.codsala;

/*Atividade 25*/
select aluno.nomealuno, disciplina.nomedisciplina, historiconota.nota 
from historiconota 
inner join matricula 
on historiconota.codmatricula = matricula.codmatricula 
inner join aluno 
on matricula.codaluno = aluno.codaluno 
inner join turma 
on matricula.codturma = turma.codturma 
inner join disciplina 
on turma.coddisciplina = disciplina.coddisciplina;

/*Atividade 26*/
select nomefuncionario, codcargo, endereco 
from funcionario 
inner join campus 
on funcionario.codcampus = campus.codcampus;

/*Atividade 27*/
select curso.nomecurso, disciplina.nomedisciplina 
from curso 
left join disciplina 
on curso.codcurso = disciplina.codcurso;

/*Atividade 28*/
select professor.nomeprofessor, turma.codturma 
from professor 
left join turma 
on professor.codprofessor = turma.codprofessor;

/*Atividade 29*/
select departamento.nomedepartamento, professor.nomeprofessor 
from departamento 
right join professor 
on departamento.coddepartamento = professor.coddepartamento;

/*Atividade 30*/
select aluno.nomealuno, turma.codturma 
from aluno 
left join matricula 
on aluno.codaluno = matricula.codaluno 
left join turma 
on matricula.codturma = turma.codturma;

/*Atividade 31*/
select campus.nomecampus, professor.nomeprofessor, sala.nomesala 
from turma 
inner join professor 
on turma.codprofessor = professor.codprofessor 
inner join sala 
on turma.codsala = sala.codsala 
inner join campus 
on sala.codcampus = campus.codcampus;

/*Atividade 32*/
select funcionario.nomefuncionario, campus.nomecampus 
from funcionario 
left join campus 
on funcionario.codcampus = campus.codcampus;

/*Atividade 33*/
select disciplina.nomedisciplina, departamento.nomedepartamento 
from disciplina 
inner join curso 
on disciplina.codcurso = curso.codcurso 
inner join departamento 
on curso.coddepartamento = departamento.coddepartamento;

/*Atividade 34*/
select curso.nomecurso, professor.nomeprofessor 
from curso 
inner join disciplina 
on curso.codcurso = disciplina.codcurso 
inner join turma 
on disciplina.coddisciplina = turma.coddisciplina 
inner join professor 
on turma.codprofessor = professor.codprofessor;

/*Atividade 35*/
select aluno.nomealuno, departamento.nomedepartamento 
from aluno 
inner join matricula 
on aluno.codaluno = matricula.codaluno 
inner join turma 
on matricula.codturma = turma.codturma 
inner join disciplina 
on turma.coddisciplina = disciplina.coddisciplina 
inner join curso 
on disciplina.codcurso = curso.codcurso 
inner join departamento 
on curso.coddepartamento = departamento.coddepartamento;

/*Atividade 36*/
select funcionario.nomefuncionario, cargo.nomecargo 
from funcionario 
inner join cargo 
on funcionario.codcargo = cargo.codcargo;

/*Atividade 37*/
select nomesala 
from sala 
inner join departamento 
on sala.codcampus = departamento.codcampus 
where departamento.coddepartamento = 5;

/*Atividade 38*/
select aluno.nomealuno, disciplina.nomedisciplina, historiconota.nota 
from historiconota 
inner join matricula 
on historiconota.codmatricula = matricula.codmatricula
inner join aluno 
on matricula.codaluno = aluno.codaluno 
inner join turma 
on matricula.codturma = turma.codturma 
inner join disciplina 
on turma.coddisciplina = disciplina.coddisciplina 
where historiconota.nota < 6.0;

/*Atividade 39*/
select professor.nomeprofessor, campus.nomecampus 
from professor 
inner join departamento 
on professor.coddepartamento = departamento.coddepartamento 
inner join campus 
on departamento.codcampus = campus.codcampus;

/*Atividade 40*/
select funcionario.nomefuncionario, campus.nomecampus 
from funcionario 
inner join cargo 
on funcionario.codcargo = cargo.codcargo 
inner join campus 
on funcionario.codcampus = campus.codcampus 
where cargo.nomecargo = 'coordenador';

/*Atividade 41*/
insert into professor (nomeprofessor, email, datacontratacao, coddepartamento) values ('novo professor','prof@email.com','2024-02-01',4);

/*Atividade 42*/
insert into curso (nomecurso, cargahoraria, coddepartamento) values ('análise de dados',120,2);

/*Atividade 43*/
update aluno set email = 'novoemail@email.com' where codaluno = 12;

/*Atividade 44*/
update funcionario set salario = salario * 1.15 where codcargo = 1;

/*Atividade 45*/
delete from funcionario where codfuncionario = 7;

/*Atividade 46*/
insert into campus (nomecampus, endereco, telefone) values ('globaltech virtual','online','0000-0000');

/*Atividade 47*/
update aluno set codcampus = (select codcampus from campus where nomecampus = 'globaltech virtual') where codaluno = 10;

/*Atividade 48*/
update campus set telefone = '0000-0000' where nomecampus like '%norte%';

/*Atividade 49*/
delete from turma where semestre < '2023-01';

/*Atividade 50*/
delete from disciplina where codcurso is null;