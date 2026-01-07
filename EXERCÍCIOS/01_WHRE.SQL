--Lista de transações com apenas 1 ponto;

SELECT count(*) as Total1Ponto
FROM transacoes

WHERE QtdePontos = 1;