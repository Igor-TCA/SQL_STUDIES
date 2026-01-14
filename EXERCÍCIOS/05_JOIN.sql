-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?
SELECT COUNT(DISTINCT IdCliente)

FROM transacoes AS T1

WHERE T1.idCliente IN (
    SELECT DISTINCT(IdCliente)
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
    )
AND substr(T1.DtCriacao,1,10) = '2025-08-29';