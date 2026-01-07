--Qual o valor médio de pontos positivos por dia?

SELECT  SUM(qtdePontos) AS TotaldePontos,
        COUNT(DISTINCT SUBSTR(DtCriacao, 1, 10)) AS DiasUnicos,
        SUM(qtdePontos) / COUNT(DISTINCT SUBSTR(DtCriacao, 1, 10)) AS MédiaDePontos

FROM clientes

WHERE qtdePontos > 0;