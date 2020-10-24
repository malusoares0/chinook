--	Qual o ranking entre os estados brasileiros de acordo com a receita gerada?
-- What is the sales ranking among Brazilian states?

SELECT
	BillingState AS brazilian_state,
	sum(total) AS total_invoice
FROM
	Invoice
WHERE BillingCountry = 'Brazil'
GROUP BY BillingState
ORDER BY total DESC
;