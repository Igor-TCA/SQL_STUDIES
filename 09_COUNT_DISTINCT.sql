SELECT COUNT(*) AS TransacoesJulho
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao <= '2025-07-31'
ORDER BY DtCriacao ASC;


SELECT COUNT(DISTINCT(idCliente)) AS ClientesDistintosJulho
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao <= '2025-07-31'
ORDER BY DtCriacao ASC;