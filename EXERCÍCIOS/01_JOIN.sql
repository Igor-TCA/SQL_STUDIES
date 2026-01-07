-- Qual categoria tem mais produtos vendidos? E qual o valor gerado nessas transações?
SELECT  T3.DescCategoriaProduto AS Categorias,
        SUM(T2.QtdePontos) AS TotalPontos,
        COUNT(DISTINCT T1.idTransacaoProduto) AS TotalTransacoes

FROM transacao_produto AS T1

LEFT JOIN transacoes AS T2
ON T1.IdTransacao = T2.IdTransacao

LEFT JOIN produtos AS T3
ON T1.IdProduto = T3.IdProduto

GROUP BY T3.DescCategoriaProduto

ORDER BY TotalTransacoes DESC;