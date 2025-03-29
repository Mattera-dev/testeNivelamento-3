USE TESTENIVELAMENTO3;

CREATE TABLE demoContabeis(
DATA date not null,
REG_ANS varchar(8) not null,
CD_CONTA_CONTABIL varchar(9) not null,
DESCRICAO varchar(150),
VL_SALDO_INICIAL decimal(15,2),
VL_SALDO_FINAL decimal(15,2));

SET GLOBAL net_read_timeout = 600; -- Aumentar o tempo de conexao para importar os arquivos grandes, pelo menos no meu computador precisou pois passou dos 30 segundos padrao
SET GLOBAL net_write_timeout = 600;
SET GLOBAL wait_timeout = 28800;
SET GLOBAL interactive_timeout = 28800;

delete from demoContabeis;


LOAD data infile 'C:/www/Github/testeNivelamento-3/data/1T2023.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/2T2023.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/3T2023.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/4T2023.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/1T2024.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/2T2024.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/3T2024.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

LOAD data infile 'C:/www/Github/testeNivelamento-3/data/4T2024.csv' INTO TABLE demoContabeis Fields terminated BY ';' OPTIONALLY ENCLOSED BY '"' lines terminated by '\r\n' ignore 1 Rows (DATA, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @VL_SALDO_INICIAL, @VL_SALDO_FINAL) SET VL_SALDO_INICIAL = REPLACE(@VL_SALDO_INICIAL, ',', '.'), VL_SALDO_FINAL = REPLACE(@VL_SALDO_FINAL, ',', '.');

    