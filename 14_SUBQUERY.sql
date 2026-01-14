SELECT *
FROM transacao_produto AS T1

WHERE T1.IdProduto IN (
    SELECT IdProduto 
    FROM produtos
    WHERE DescCategoriaProduto LIKE 'rpg'
    )
;

