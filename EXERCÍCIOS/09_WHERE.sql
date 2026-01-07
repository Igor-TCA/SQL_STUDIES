--Listar todas as transações adicionando uma coluna nova sinalizando “alto”,
--“médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]

SELECT IdCliente,
        DtCriacao,
        QtdePontos,
        CASE 
            WHEN QtdePontos < 10 THEN 'BAIXO'
            WHEN QtdePontos < 500 THEN 'MÉDIO'
            WHEN QtdePontos >= 500 THEN 'ALTO'
        END AS ValorDosPontos


FROM transacoes
ORDER BY qtdePontos;