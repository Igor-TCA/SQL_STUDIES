-- Questao 1
SELECT *,
        QtdeProduto * vlProduto AS totalVendas 
FROM transacao_produto
WHERE qtdeProduto = 1
ORDER BY totalVendas DESC;


-- Questao 2
SELECT IdTransacao,
       IdTransacao,
        STRFTIME('%w',DATETIME(DtCriacao)) AS diaSemanaCriacao,
        COUNT( STRFTIME('%w',DATETIME(DtCriacao)) ) AS totalFds

FROM transacoes
WHERE diaSemanaCriacao = '0' OR diaSemanaCriacao = '6';


-- QUESTAO 3
SELECT COUNT(*) AS clientes0Pts
from clientes
WHERE qtdePontos = '0';

-- QUESTAO 4
SELECT COUNT(*) AS entre100e200
FROM clientes
WHERE qtdePontos >= 100 AND qtdePontos <= 200;

-- QUESTAO 5
SELECT *
FROM produtos
WHERE DescNomeProduto like 'Venda de%';

-- QUESTAO 6
SELECT *
FROM produtos
WHERE DescNomeProduto like '%Lover';

-- QUESTAO 7
SELECT *
FROM produtos
WHERE DescNomeProduto like '%Chapéu%';

-- QUESTAO 8
SELECT *
FROM transacao_produto
WHERE IdProduto = '15';

-- QUESTAO 9 
SELECT  IdTransacao,
        QtdePontos,
        CASE
                WHEN QtdePontos < 10 THEN 'Baixo'
                WHEN QtdePontos < 500 THEN 'Medio'
                Else 'Alto'
        END AS TipoTransacao
FROM transacoes
ORDER BY QtdePontos DESC