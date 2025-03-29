CREATE DATABASE TESTENIVELAMENTO3
CHARACTER SET utf8
COLLATE utf8_general_ci;

USE TESTENIVELAMENTO3;

CREATE TABLE operadora(
REGISTRO_OPERADORA varchar(6) not null,
CNPJ char(14) not null,
Razao_Social varchar(140) not null,
Nome_Fantasia varchar(140),
Modalidade varchar(40) not null, -- deveria ser 2, porem todos os dados tem tamanho maior que 2, sendo o maior 34
Logradouro varchar(40) not null,
Numero varchar(20) not null,
Complemento varchar(40),
Bairro varchar(30) not null,
Cidade varchar(30) not null,
UF Char(2) not null,
CEP char(8) not null,
DDD varchar(4),
Telefone varchar(20),
Fax varchar(20),
Endereco_eletronico varchar(255),
Representante varchar(50) not null,
Cargo_Representante varchar(40) not null,
Regiao_de_Comercializacao char(1),
Data_Registro_ANS datetime not null);

-- TROCAR O ENDERECO DAQUI PARA O CAMINHO DO ARQUIVO CERTO

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/Relatorio_cadop.csv' INTO TABLE operadora
Fields terminated BY ';'
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\r\n'
ignore 1 Rows;

select * FROM operadora;