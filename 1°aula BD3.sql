use master;

drop database DB3;
create database DB3;

use DB3;


create table cod_produto(
	id int identity (1,1),
	nome varchar(20) NOT NULL,
	none nvarchar(100) NOT NULL,
	preço decimal (3,2),
	PRIMARY KEY(id)
)
create table prod_vendido(
	id int identity(1,1),
	id_venda int,
	id_prod int,
	quantidade decimal(3,2),
	PRIMARY KEY(id)
)

create table vendas (
	id int identity(1,1),
	data date,
	id_cli int,
	valor decimal(3,2),
	PRIMARY KEY(id)
)

create table clientes(
	id int identity(1,1),
	nome varchar(15) NOT NULL,
	none nvarchar (100) NOT NULL,
	PRIMARY KEY (id)
)

go

alter table prod_vendido
add constraint fk_prod_vendido
foreign key (id_venda) references vendas(id);

alter table prod_vendido
add constraint fk_vendas_prod_vendido
foreign key (id_prod) references cod_produto;

alter table vendas
add constraint fk_clientes_vendas
foreign key (id_cli) references clientes(id);