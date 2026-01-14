-- Clientes mais antigos, tem mais frequência de transação?
SELECT  T1.idCliente,
        ROUND(julianday('now') - julianday(T1.DtCriacao)) AS Idade,
        COUNT(T2.IdTransacao) AS QantTransacoes

FROM clientes AS T1

    LEFT JOIN transacoes AS T2
    ON T1.IdCliente = T2.IdCliente

GROUP BY T1.IdCliente
ORDER BY QantTransacoes DESC;;