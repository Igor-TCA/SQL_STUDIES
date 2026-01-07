-- Lista de pedidos realizados no fim de semana;
SELECT count(*) AS TotalPedidosFimDeSemana

FROM transacoes

WHERE strftime('%w', DtCriacao) IN ('0', '6');