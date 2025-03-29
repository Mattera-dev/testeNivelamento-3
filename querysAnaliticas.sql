
-- QUERY ANALITICA


-- 3.5.1
-- Quais as 10 operadoras com maiores despesas em "EVENTOS/ SINISTROS CONHECIDOS OU
-- AVISADOS DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último trimestre?

SELECT 
    op.Razao_Social AS Nome_empresa,
    op.Nome_Fantasia AS Nome_fantasia,
    FORMAT(SUM(dm.VL_SALDO_INICIAL - dm.VL_SALDO_FINAL),
        2) AS Despesa,
    COUNT(dm.REG_ANS) AS Registros
FROM
    demoContabeis dm
        INNER JOIN
    operadora op ON dm.REG_ANS = op.REGISTRO_OPERADORA
WHERE
    DESCRICAO = 'EVENTOS/SINISTROS CONHECIDOS OU AVISADOS DE ASSISTÊNCIA À SAÚDE'
        AND DATA BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY dm.REG_ANS , op.Razao_Social
ORDER BY SUM(dm.VL_SALDO_INICIAL - dm.VL_SALDO_FINAL) DESC
LIMIT 10;


-- 3.5.2

-- Quais as 10 operadoras com maiores despesas nessa categoria no último ano?

SELECT 
    op.Razao_Social AS Nome_empresa,
    op.Nome_Fantasia AS Nome_fantasia,
    FORMAT(SUM(dm.VL_SALDO_INICIAL - dm.VL_SALDO_FINAL),
        2) AS Despesa,
    COUNT(dm.REG_ANS) AS Registros
FROM
    demoContabeis dm
        INNER JOIN
    operadora op ON dm.REG_ANS = op.REGISTRO_OPERADORA
WHERE
    DESCRICAO = 'EVENTOS/SINISTROS CONHECIDOS OU AVISADOS DE ASSISTÊNCIA À SAÚDE'
        AND `dm`.`DATA` BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY dm.REG_ANS , op.Razao_Social
-- TIRAR O COMENTARIO DEBAIXO FAZ TIRAR AS DESPESAS QUE SAO ZERO
-- HAVING SUM(dm.VL_SALDO_INICIAL - dm.VL_SALDO_FINAL) <> 0
ORDER BY SUM(dm.VL_SALDO_INICIAL - dm.VL_SALDO_FINAL) DESC
LIMIT 10;