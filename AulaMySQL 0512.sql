create database aula0412;
use aula0412;

/* Tabela Professor */
create table Professor(
codProfessor int not null auto_increment,
nomeProfessor varchar(45),
especialidade varchar(45),

constraint pkcodProfessor primary key (codProfessor));

/* Tabela Curso */
create table Curso(
codCurso int not null auto_increment,
nomeCurso varchar(45),
cargaHoraria int,
codProfessor int,

constraint pkcodCurso primary key (codCurso),
constraint fkcodProfessor foreign key (codProfessor) references professor(codProfessor));	

/* Tabela Aluno */
create table Aluno(
matricula int not null auto_increment,
nomeAluno varchar(45),
dataNascimento date,
emailAluno varchar(45),

constraint pkmatricula primary key (matricula));

show tables;

alter table Professor add telefone int;
alter table aluno drop column dataNascimento;
describe Professor;
describe Aluno;

insert into Professor (codProfessor, nomeProfessor, especialidade, telefone) values (1, 'Garibaldi Amaral', 'Agroecologia', 32986630);
insert into Professor (codProfessor, nomeProfessor, especialidade, telefone) values (2, 'Lavinya Fatima', 'Psicologia', 32982342);
insert into Professor (codProfessor, nomeProfessor, especialidade, telefone) values (3, 'Kauã Anderson', 'Medico', 32565307);

select * from Professor;

insert into Curso (codCurso, nomeCurso, cargaHoraria, codProfessor) values (1, 'Meio Ambiente', 1200, 2);
insert into Curso (codCurso, nomeCurso, cargaHoraria, codProfessor) values (2, 'Informatica', 1200, 3);
insert into Curso (codCurso, nomeCurso, cargaHoraria, codProfessor) values (3, 'Moda', 800, 1);
insert into Curso (codCurso, nomeCurso, cargaHoraria, codProfessor) values (4, 'Aprendisagem', 760, 1);
insert into Curso (codCurso, nomeCurso, cargaHoraria, codProfessor) values (5, 'Gestao Industrial', 1000, 2);

select * from Curso;

insert into Aluno (matricula, nomeAluno, emailAluno) values (1, 'Alisson Reis', 'alisson@email');
insert into Aluno (matricula, nomeAluno, emailAluno) values (2, 'Pedro Campos', 'pedro@email');
insert into Aluno (matricula, nomeAluno, emailAluno) values (3, 'Luan Isaque', 'Luan@email');
insert into Aluno (matricula, nomeAluno, emailAluno) values (4, 'Kaio Lopes', 'Kaio@email');
insert into Aluno (matricula, nomeAluno, emailAluno) values (5, 'anderson Luiz', 'Anderson@email');
insert into Aluno (matricula, nomeAluno, emailAluno) values (6, 'Lucca Felipe', 'Luaail');

select * from Aluno;

update curso set codProfessor=1 where codCurso in (1,3);
delete from professor where codProfessor=3;
update curso set codProfessor=2 where codCurso=5;
select nomeCurso as 'Nome Curso', min(CargaHoraria) as 'Carga Horaria' from curso group by NomeCurso order by min(cargaHoraria);
delete from curso where codCurso=4;

select * from curso where codProfessor in(1,2,3,5);

/*Inner Join*/
select nomeCurso, nomeProfessor from curso
inner join professor
on Curso.codProfessor = professor.codProfessor;

alter table aluno add codCurso int;
ALTER TABLE Aluno ADD FOREIGN KEY (codCurso) REFERENCES curso(codCurso);

select nomeAluno, nomeCurso from aluno
inner join curso
on Curso.codcurso = aluno.codcurso;