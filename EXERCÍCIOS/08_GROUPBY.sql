-- Qual o produto com mais pontos transacionados?

SELECT IdProduto,
        sum(vlProduto) as TotalPontos

FROM transacao_produto

GROUP BY IdProduto
ORDER BY TotalPontos DESC;