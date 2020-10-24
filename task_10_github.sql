-- Os endereços de entrega são os mesmos dos endereços de cobrança? 
-- Are delivery addresses the same as billing addresses?

WITH t1 AS (
	SELECT 
		c.Address AS endereco,
		i.BillingAddress AS bill_endereco,
		CASE
			WHEN c.Address = i.BillingAddress THEN 1
			ELSE 0
		END AS booleano_
	FROM Invoice i
	INNER JOIN Customer c
	ON i.CustomerId = c.CustomerId
)
SELECT

AVG(booleano_)*100 AS 'equal_addresses (%)'
FROM t1

;
