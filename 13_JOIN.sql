SELECT  T1.*,
        T2.DescNomeProduto

FROM transacao_produto AS T1

INNER JOIN produtos AS T2
ON T1.IdProduto = T2.IdProduto

ORDER BY T2.DescNomeProduto;