/*
	
	Author: Leandro de Souza Araújo.
	Faça os comandos entre '/* *'/ separados para não ter problema
	ao criar a base de dados e as tabelas.
	Caso precise de dados para testar use a versão antiga e modifique os campos
	ou dê alguns inserts nesse sql.

*/

-- CREATE DATABASE empresa_webiii_projeto2_modificado;

departamentos
-- CREATE TABLE empregados
create table if not exists empregados(
	matricula 	varchar(6) not null unique,
	nomeempr	varchar(45) not null,
	CPF			char(11) null,
	datanasc	date null,
	sexo		char(1) null,
	salario		decimal(10,2) null,

	primary key(matricula)
);



-- CREATE TABLE dependentes
create table if not exists dependentes(
	dependente_id 	int(11) not null auto_increment,
	matricula	 	varchar(6) not null,
	nomedep			varchar(45) not null,

	primary key(dependente_id),
	foreign key(matricula) references empregados(matricula)
);


-- CREATE TABLE departamentos
create table if not exists departamentos(
	coddepto		int(11) not null auto_increment,
	nomedepto		varchar(40) not null,
	matriculager	varchar(6) null,
	datainiger		date null,
	
	primary key(coddepto),
	foreign key(matriculager) references empregados(matricula)
);
