-- Em 2024 quantas transações de Lovers tivemos?

SELECT  T2.DescCategoriaProduto AS Categoria,
        ABS(SUM(T3.QtdePontos)) AS TotalGasto,
        COUNT(DISTINCT T1.IdTransacao) AS TotalTransacoes
        

FROM transacao_produto AS T1

        LEFT JOIN produtos AS T2
        ON T1.IdProduto	= T2.IdProduto

        LEFT JOIN transacoes AS T3
        ON T1.IdTransacao = T3.IdTransacao

WHERE T2.DescCategoriaProduto LIKE 'Lovers' AND 
substr(T3.DtCriacao, 1,4) = '2024'

GROUP BY T2.DescCategoriaProduto;