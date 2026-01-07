-- Em qual mês tivemos mais lista de presença assinada?

SELECT 
        SUBSTR(T1.DtCriacao, 1, 7) AS AnoMês,
        COUNT(DISTINCT T1.IdTransacao) AS TotalTransacoes

FROM transacoes AS T1

    LEFT JOIN transacao_produto AS T2
    ON T1.IdTransacao = T2.IdTransacao

    LEFT JOIN produtos AS T3
    ON T2.IdProduto = T3.IdProduto

WHERE T3.DescNomeProduto = 'Lista de presença'

GROUP BY AnoMês
ORDER BY TotalTransacoes DESC;