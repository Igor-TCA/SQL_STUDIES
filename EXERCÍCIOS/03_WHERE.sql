--Lista de clientes com 0 (zero) pontos;
SELECT count(*) as ClientesComZeroPontos

from clientes

WHERE qtdePontos = 0;