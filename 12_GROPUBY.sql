SELECT IdCliente,
        SUM(QtdePontos) AS Pontos,
        COUNT(IdTransacao) AS Transacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao <= '2025-08-01'

GROUP BY IdCliente
HAVING Pontos >= 4000

ORDER BY Pontos DESC

LIMIT 10