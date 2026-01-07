--Qual o produto mais transacionado?

SELECT count(IdTransacao) AS TotalTransacoes,
        IdProduto

FROM transacao_produto

GROUP BY IdProduto
ORDER BY TotalTransacoes DESC

LIMIT 5;