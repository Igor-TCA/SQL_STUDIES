--Quantos clientes tem email cadastrado?

SELECT count(*) as ClientesComEmail 

FROM clientes

WHERE flEmail = 1;