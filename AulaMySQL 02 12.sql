create database bd0212;
use bd0212;

create table Funcionario(
codFuncionario int not null auto_increment,
nomeFuncionario varchar(45),
cargoFuncionario varchar(45),
salarioFuncionario float,
dataAdmissao date,
cpfFuncionario int(12),

constraint pkcodFuncionario primary key (codFuncionario));

alter table funcionario rename column salarioFuncionario to salario;
alter table funcionario add telefone varchar(45);
alter table funcionario drop column cpfFuncionario;

describe funcionario;

insert into funcionario (codFuncionario, nomeFuncionario, cargoFuncionario, salario, dataAdmissao, telefone) values (1, 'Jadean', 'Vendedor', 2500.00, '2022-05-10', '32999990001');
insert into funcionario (codFuncionario, nomeFuncionario, cargoFuncionario, salario, dataAdmissao, telefone) values (2, 'Joancélio', 'Gerente', 4500.00, '2021-03-15', '32999990002');
insert into funcionario (codFuncionario, nomeFuncionario, cargoFuncionario, salario, dataAdmissao, telefone) values (3, 'Fabricio', 'Vendedor', 2300.00, '2023-02-20', '32999990003');
insert into funcionario (codFuncionario, nomeFuncionario, cargoFuncionario, salario, dataAdmissao, telefone) values (4, 'Fabiana', 'Analista', 3200.00, '2020-11-01', '32999990004');
insert into funcionario (codFuncionario, nomeFuncionario, cargoFuncionario, salario, dataAdmissao, telefone) values (5, 'Marcilene', 'Vendedor', 2400.00, '2024-01-11', '32999990005');

select * from funcionario;

update funcionario set salario = 2800.00 where codFuncionario = 1;
update funcionario set cargoFuncionario = 'Consultor de Vendas' where codFuncionario = 1;
update funcionario set cargoFuncionario = 'Consultor de Vendas' where codFuncionario = 3;
update funcionario set cargoFuncionario = 'Consultor de Vendas' where codFuncionario = 5;

delete from funcionario where codFuncionario = 5;
select * from funcionario order by salario desc;
select nomeFuncionario, salario from funcionario where salario between 2000 and 3500;
select nomeFuncionario, dataAdmissao from funcionario where dataAdmissao < '2023/01/01';
select * from funcionario where cargoFuncionario in ('Gerente', 'Analista');
select nomeFuncionario, cargoFuncionario, telefone from funcionario where nomeFuncionario like '%LI%';
SELECT nomeFuncionario, cargoFuncionario
FROM funcionario
where cargoFuncionario = 'Vendedor' or cargoFuncionario = 'Técnico' and salario > 4000;