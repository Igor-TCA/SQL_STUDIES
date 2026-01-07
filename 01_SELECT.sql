
SELECT *
FROM clientes
WHERE qtdePontos > 500
LIMIT 10;

SELECT COUNT(idCliente) 
FROM clientes
WHERE qtdePontos > 500;

SELECT * 
from produtos
where DescNomeProduto like '%churn%';
