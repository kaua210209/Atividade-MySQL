create database CompraFacil;
use CompraFacil;

/*Atividade 1*/
create table cliente(
codCliente int not null auto_increment,
nomeCliente varchar(45),
email varchar(45),
dataCadastro date,

constraint pkcodCliente primary key (codCliente));

create table fornecedor(
codFornecedor int not null auto_increment,
nomeFornecedor varchar(45),
cidade varchar(45),

constraint pkcodFornecedor primary key (codFornecedor));

create table produto(
codProduto int not null auto_increment,
nomeProduto varchar(45),
valorUnitario decimal,
codFornecedor int,

constraint pkcodProduto primary key (codProduto),
constraint fkcodFornecedor foreign key (codFornecedor) references fornecedor(codFornecedor));

create table pedido(
codPedido int not null auto_increment,
codCliente int,
dataPedido date,
valorTotal decimal,

constraint pkcodPedido primary key (codPedido),
constraint fkcodCliente foreign key (codCliente) references cliente(codCliente));

create table itemPedido(
codPedido int,
codProduto int,
quantidade int,
precoVenda decimal,

primary key (codPedido, codProduto),
constraint fkcodPedido foreign key (codPedido) references pedido(codPedido),
constraint fkcodProduto foreign key (codProduto) references produto(codProduto));

create table trasportadora(
codTransportadora int not null auto_increment,
nomeTransportadora varchar(45),
cnpj varchar(18),

constraint pkcodTransportadora primary key (codTransportadora));

create table entrega(
codEntrega int not null auto_increment,
codPedidoE int,
codTransportadora int,
statusEntrega varchar(45),
dataEnvio date,

constraint pkcodEntrega primary key (codEntrega),
constraint fkcodPedidoE foreign key (codPedidoE) references pedido(codPedido),
constraint fkcodTransportadora foreign key (codTransportadora) references trasportadora(codTransportadora));

create table estoque(
codEstoque int not null auto_increment,
codProdutoEs int,
quantidadeAtual int,
localizacao varchar(45),

constraint pkcodEstoque primary key (codEstoque),
constraint fkcodProdutoEs foreign key (codProdutoEs) references produto(codProduto));

/*Atividade 2*/
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (1,'ana silva','ana@gmail.com','2024-01-01');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (2,'bruno lima','bruno@gmail.com','2024-01-02');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (3,'carla souza','carla@gmail.com','2024-01-03');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (4,'diego rocha','diego@gmail.com','2024-01-04');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (5,'eduarda fernandes','edu@gmail.com','2024-01-05');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (6,'felipe costa','felipe@gmail.com','2024-01-06');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (7,'gabriela nunes','gabi@gmail.com','2024-01-07');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (8,'henrique alves','henrique@gmail.com','2024-01-08');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (9,'isabela ramos','isa@gmail.com','2024-01-09');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (10,'joao pereira','joao@gmail.com','2024-01-10');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (11,'karina oliveira','karina@gmail.com','2024-01-11');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (12,'lucas martins','lucas@gmail.com','2024-01-12');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (13,'mariana pires','mariana@gmail.com','2024-01-13');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (14,'nicolas teixeira','nico@gmail.com','2024-01-14');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (15,'otavio mendes','otavio@gmail.com','2024-01-15');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (16,'paula freitas','paula@gmail.com','2024-01-16');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (17,'rafael borges','rafa@gmail.com','2024-01-17');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (18,'sabrina macedo','sabrina@gmail.com','2024-01-18');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (19,'thiago araujo','thiago@gmail.com','2024-01-19');
insert into cliente (codCliente,nomeCliente,email,dataCadastro) values (20,'vanessa cunha','vanessa@gmail.com','2024-01-20');

insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (1,'tech brasil','sao paulo');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (2,'info sul','porto alegre');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (3,'mega info','curitiba');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (4,'alpha tech','campinas');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (5,'byte solutions','santos');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (6,'next hardware','rio de janeiro');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (7,'data core','niteroi');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (8,'smart systems','osasco');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (9,'digital house','barueri');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (10,'eletro max','guarulhos');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (11,'global tech','sorocaba');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (12,'nova era','jundiai');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (13,'info world','limeira');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (14,'prime tech','itu');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (15,'hard plus','americana');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (16,'ultra bits','piracicaba');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (17,'cloud store','paulinia');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (18,'system pro','taubate');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (19,'vision tech','aracatuba');
insert into fornecedor (codFornecedor,nomeFornecedor,cidade) values (20,'power info','ribeirao preto');

insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (1,'mouse',50.00,1);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (2,'teclado',120.00,2);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (3,'monitor',900.00,3);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (4,'notebook',3500.00,4);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (5,'impressora',100.00,5);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (6,'scanner',600.00,6);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (7,'webcam',150.00,7);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (8,'headset',200.00,8);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (9,'hd externo',400.00,9);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (10,'ssd',500.00,10);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (11,'pendrive',40.00,11);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (12,'placa mae',700.00,12);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (13,'processador',1200.00,13);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (14,'memoria ram',300.00,14);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (15,'fonte',250.00,15);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (16,'gabinete',350.00,16);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (17,'cooler',90.00,17);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (18,'roteador',180.00,18);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (19,'switch',600.00,19);
insert into produto (codProduto,nomeProduto,valorUnitario,codFornecedor) values (20,'nobreak',950.00,20);

insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (1,1,'2024-02-01',500.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (2,2,'2024-02-02',1200.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (3,3,'2024-02-03',900.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (4,4,'2024-02-04',3500.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (5,5,'2024-02-05',800.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (6,6,'2024-02-06',600.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (7,7,'2024-02-07',150.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (8,8,'2024-02-08',200.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (9,9,'2024-02-09',400.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (10,10,'2024-02-10',500.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (11,11,'2024-02-11',40.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (12,12,'2024-02-12',700.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (13,13,'2024-02-13',1200.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (14,14,'2024-02-14',300.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (15,15,'2024-02-15',250.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (16,16,'2024-02-16',350.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (17,17,'2024-02-17',90.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (18,18,'2024-02-18',180.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (19,19,'2024-02-19',600.00);
insert into pedido (codPedido,codCliente,dataPedido,valorTotal) values (20,20,'2024-02-20',950.00);

insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (1,1,2,50.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (2,2,1,120.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (3,3,1,900.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (4,4,1,3500.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (5,5,1,800.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (6,6,3,600.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (7,7,1,150.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (8,8,5,200.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (9,9,1,400.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (10,10,1,500.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (11,11,1,40.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (12,12,7,700.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (13,13,1,1200.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (14,14,5,300.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (15,15,6,250.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (16,16,1,350.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (17,17,4,90.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (18,18,8,180.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (19,19,1,600.00);
insert into itemPedido (codPedido,codProduto,quantidade,precoVenda) values (20,20,1,950.00);

insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (1,'correios','00.000.000/0001-01');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (2,'jadlog','11.111.111/0001-11');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (3,'total express','22.222.222/0001-22');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (4,'braspress','33.333.333/0001-33');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (5,'latam cargo','44.444.444/0001-44');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (6,'azul cargo','55.555.555/0001-55');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (7,'dhl','66.666.666/0001-66');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (8,'fedex','77.777.777/0001-77');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (9,'ups','88.888.888/0001-88');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (10,'loggi','99.999.999/0001-99');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (11,'sequoia','10.000.000/0001-10');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (12,'flash courier','12.000.000/0001-12');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (13,'rapidex','13.000.000/0001-13');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (14,'movvi','14.000.000/0001-14');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (15,'tnt','15.000.000/0001-15');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (16,'direct','16.000.000/0001-16');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (17,'cargo x','17.000.000/0001-17');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (18,'kangu','18.000.000/0001-18');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (19,'shopee express','19.000.000/0001-19');
insert into trasportadora (codTransportadora,nomeTransportadora,cnpj) values (20,'mercado envios','20.000.000/0001-20');

insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (1,1,1,'enviado','2024-02-02');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (2,2,2,'entregue','2024-02-03');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (3,3,3,'em transporte','2024-02-04');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (4,4,4,'entregue','2024-02-05');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (5,5,5,'enviado','2024-02-06');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (6,6,6,'entregue','2024-02-07');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (7,7,7,'enviado','2024-02-08');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (8,8,8,'entregue','2024-02-09');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (9,9,9,'em transporte','2024-02-10');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (10,10,10,'entregue','2024-02-11');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (11,11,11,'enviado','2024-02-12');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (12,12,12,'entregue','2024-02-13');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (13,13,13,'enviado','2024-02-14');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (14,14,14,'entregue','2024-02-15');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (15,15,15,'em transporte','2024-02-16');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (16,16,16,'entregue','2024-02-17');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (17,17,17,'pendente','2024-02-18');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (18,18,18,'entregue','2024-02-19');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (19,19,19,'em transporte','2024-02-20');
insert into entrega (codEntrega,codPedidoE,codTransportadora,statusEntrega,dataEnvio) values (20,20,20,'entregue','2024-02-21');

insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (1,1,100,'a1');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (2,2,80,'a2');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (3,3,50,'a3');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (4,4,20,'a4');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (5,5,30,'b1');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (6,6,40,'b2');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (7,7,60,'b3');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (8,8,70,'b4');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (9,9,90,'c1');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (10,10,100,'c2');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (11,11,200,'c3');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (12,12,35,'c4');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (13,13,25,'d1');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (14,14,75,'d2');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (15,15,65,'d3');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (16,16,55,'d4');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (17,17,120,'e1');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (18,18,85,'e2');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (19,19,45,'e3');
insert into estoque (codEstoque,codProdutoEs,quantidadeAtual,localizacao) values (20,20,15,'e4');

/*Atividade 3*/
alter table produto add column descontoMaximo decimal(5,2);

/*Atividade 4*/
update produto set valorUnitario = valorUnitario * 1.10 where codFornecedor = 5 and valorUnitario < 100.00;

/*Atividade 5*/
delete from fornecedor where cidade = 'guarulhos' or nomeFornecedor like 'b%';
update produto set codfornecedor= 6 where codFornecedor =10;

/*Atividade 6*/
select codCliente as identificador, email from cliente order by dataCadastro asc;

/*Atividade 7*/
select nomeCliente, dataCadastro from cliente where dataCadastro between '2024-01-01' and '2024-12-31';

/*Atividade 8*/
select nomeProduto, valorUnitario from produto where nomeProduto not like '%notebook%' and valorUnitario > 500.00;

/*Atividade 9*/
select nomeFornecedor, cidade from fornecedor where cidade in ('sao paulo','rio de janeiro','belo horizonte');

/*Atividade 10*/
select nomeTransportadora from trasportadora where codTransportadora not in (1,5,10,15);

/*Atividade 11*/
select nomeCliente, codPedido, valorTotal
from cliente
inner join pedido on cliente.codCliente = pedido.codCliente
where pedido.valorTotal > 500.00;

/*Atividade 12*/
select nomeProduto,nomeFornecedor,cidade
from produto
inner join fornecedor on produto.codFornecedor = fornecedor.codFornecedor
order by fornecedor.nomeFornecedor desc;

/*Atividade 13*/
select pedido.codPedido, nomeProduto, quantidade
from pedido
inner join itemPedido on pedido.codPedido = itemPedido.codPedido
inner join produto on itemPedido.codProduto = produto.codProduto
where pedido.dataPedido > '2025-01-01'
and itemPedido.quantidade > 2;

/*Atividade 14*/
select nomeCliente, nomeProduto, dataPedido
from cliente
inner join pedido on cliente.codCliente = pedido.codCliente
inner join itempedido on pedido.codPedido = itempedido.codPedido
inner join produto on itempedido.codProduto = produto.codProduto
inner join fornecedor on produto.codFornecedor = fornecedor.codFornecedor
where fornecedor.cidade = 'americana'
or produto.codProduto = 15;

/*Atividade 15*/
select fornecedor.codFornecedor, count(distinct produto.codProduto) as ProdutosFornecidos
from fornecedor
inner join produto on fornecedor.codFornecedor = produto.codFornecedor
group by fornecedor.codFornecedor;

/*Atividade 16*/
select fornecedor.cidade, min(produto.valorUnitario) as ProdutoMaisBarato
from fornecedor
inner join produto on fornecedor.codFornecedor = produto.codFornecedor
group by fornecedor.cidade;

/*Atividade 17*/
select estoque.localizacao, max(estoque.quantidadeAtual) as EstoqueMax
from estoque
inner join produto on estoque.codProdutoEs = produto.codProduto
group by estoque.localizacao;

/*Atividade 18*/
select cliente.nomeCliente, trasportadora.nomeTransportadora
from cliente
inner join pedido on cliente.codCliente = pedido.codCliente
inner join entrega on pedido.codPedido = entrega.codPedidoE
inner join trasportadora on entrega.codTransportadora = trasportadora.codTransportadora
where entrega.statusEntrega <> 'entregue'
and trasportadora.codTransportadora <> 7;

/*Atividade 19*/
select trasportadora.nomeTransportadora, entrega.statusEntrega
from trasportadora
inner join entrega on trasportadora.codTransportadora = entrega.codTransportadora
inner join pedido on entrega.codPedidoE = pedido.codPedido
where trasportadora.nomeTransportadora like 't%'
and entrega.codEntrega between 100 and 200;

/*Atividade 20*/
select cliente.nomeCliente, produto.nomeProduto, pedido.dataPedido, entrega.statusEntrega
from cliente
join pedido on cliente.codCliente = pedido.codCliente
join itemPedido on pedido.codPedido = itemPedido.codPedido
join produto on itemPedido.codProduto = produto.codProduto
join entrega on pedido.codPedido = entrega.codPedidoE
where produto.codProduto in (2,4,6)
order by entrega.dataEnvio desc;

/*Atividade 21*/
select pedido.codPedido,
sum(itemPedido.precoVenda * itemPedido.quantidade) as FaturamentoBruto
from pedido
join itemPedido on pedido.codPedido = itemPedido.codPedido
join produto on itemPedido.codProduto = produto.codProduto
group by pedido.codPedido;

/*Atividade 22*/
select cliente.nomeCliente, pedido.dataPedido, entrega.statusEntrega
from cliente
join pedido on cliente.codCliente = pedido.codCliente
join entrega on pedido.codPedido = entrega.codPedidoE
join trasportadora on entrega.codTransportadora = trasportadora.codTransportadora
where cliente.nomeCliente not like '%junior%'
or entrega.statusEntrega <> 'enviado';

/*Atividade 23*/
select produto.nomeProduto, fornecedor.nomeFornecedor, estoque.quantidadeAtual
from produto
join fornecedor on produto.codFornecedor = fornecedor.codFornecedor
join estoque on produto.codProduto = estoque.codProdutoEs
join itemPedido on produto.codProduto = itemPedido.codProduto
join pedido on itemPedido.codPedido = pedido.codPedido
order by fornecedor.nomeFornecedor asc, estoque.quantidadeAtual desc;

/*Atividade 24*/
select cliente.nomeCliente, produto.nomeProduto, itemPedido.precoVenda
from cliente
join pedido on cliente.codCliente = pedido.codCliente
join itemPedido on pedido.codPedido = itemPedido.codPedido
join produto on itemPedido.codProduto = produto.codProduto
where pedido.dataPedido between '2025-03-01' and '2025-05-31'
and itemPedido.precoVenda > 200.00;

/*Atividade 25*/
select month(pedido.dataPedido) as mes,
count(distinct cliente.codCliente) as TotalClientes
from cliente
join pedido on cliente.codCliente = pedido.codCliente
join itemPedido on pedido.codPedido = itemPedido.codPedido
group by month(pedido.dataPedido);

/*Atividade 26*/
update estoque
join produto on estoque.codProdutoEs = produto.codProduto
set estoque.quantidadeAtual = 0
where produto.codProduto in (7,8,9,11);

/*Atividade 27*/
select cliente.nomeCliente, pedido.dataPedido
from cliente
join pedido on cliente.codCliente = pedido.codCliente
join itemPedido on pedido.codPedido = itemPedido.codPedido
where cliente.email like '%@gmail.com%'
and cliente.codCliente not in (1,2,3);

/*Atividade 28*/
select produto.nomeProduto, min(itemPedido.precoVenda) as MenorPrecoHistorico
from produto
join itemPedido on produto.codProduto = itemPedido.codProduto
join pedido on itemPedido.codPedido = pedido.codPedido
join cliente on pedido.codCliente = cliente.codCliente
group by produto.nomeProduto;

/*Atividade 30*/
select cliente.nomeCliente, produto.nomeProduto,
trasportadora.nomeTransportadora, entrega.statusEntrega
from cliente
join pedido on cliente.codCliente = pedido.codCliente
join itemPedido on pedido.codPedido = itemPedido.codPedido
join produto on itemPedido.codProduto = produto.codProduto
join entrega on pedido.codPedido = entrega.codPedidoE
join trasportadora on entrega.codTransportadora = trasportadora.codTransportadora
where entrega.statusEntrega = 'cancelado'
or trasportadora.nomeTransportadora = 'entrega rapida';
