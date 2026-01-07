--Lista de clientes com 100 a 200 pontos (inclusive ambos);

SELECT count(*) as Entre100e200

FROM clientes

WHERE QtdePontos >= 100 AND QtdePontos <= 200;