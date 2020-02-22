use master;

drop database bd3;
create database bd3;

use bd3;

create table tab_vda(
	id int identity(1,1),
	nome varchar(100) not null,
	data date,
	valor decimal(3,2),
	id_cli int,
	primary key(id)
	)
create table tab_cod_prod(
	id int identity(1,1),
	nome varchar(100) not null,
	preco decimal(3,2),
	none nvarchar(100) not null,
	primary key(id)
	)
create table tab_prod_vendido(
	id int identity(1,1),
	id_venda int,
	id_prod int,
	qtf decimal(3,2),
	primary key(id)
	)
create table tab_cliente(
	id int identity(1,1),
	nome varchar(100),
	none nvarchar(100) not null,
	primary key (id)
	)

go

alter table tab_prod_vendido
add constraint fk_vda_prod_vendido
foreign key (id_venda) references tab_vda(id);
	
alter table tab_prod_vendido
add constraint fk_vda_prod_vendidos
foreign key (id_prod) references tab_cod_prod(id);

alter table tab_vda
add constraint fk_tab_vda
foreign key (id_cli) references tab_cliente(id);
