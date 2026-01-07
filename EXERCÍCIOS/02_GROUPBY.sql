--Qual cliente juntou mais pontos positivos em 2025-05?

SELECT idCliente,
        SUM(qtdePontos) as TotalPontos

FROM clientes

WHERE DtAtualizacao >= '2025-05-01'
AND DtAtualizacao <= '2025-06-01'

GROUP BY idCliente

ORDER BY TotalPontos DESC

LIMIT 1;