--Qual dia da semana tem mais pedidos em 2025?

SELECT  COUNT(DISTINCT IdTransacao) as TotalTransacoes,
        CASE
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '0' THEN 'DOMINGO'
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '1' THEN 'SEGUNDA'
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '2' THEN 'TERÇA'
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '3' THEN 'QUARTA'
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '4' THEN 'QUINTA'
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '5' THEN 'SEXTA'
            WHEN strftime('%w', substr(DtCriacao, 1,10)) = '6' THEN 'SÁBADO'
        END AS DiaDaSemana

FROM transacoes

--WHERE QtdePontos < 0

GROUP BY DiaDaSemana
ORDER BY TotalTransacoes DESC;