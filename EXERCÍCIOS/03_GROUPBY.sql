--Qual cliente fez mais transações no ano de 2024?

SELECT  IdCliente,
        COUNT(IdTransacao) TotalTransacoes

FROM transacoes

GROUP BY IdCliente
ORDER BY TotalTransacoes DESC

LIMIT 1;