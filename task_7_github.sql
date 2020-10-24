--	Qual a média de valor de vendas por país? O ranking permanece o mesmo que o ranking da soma total de valores vendidos?
-- What is the average sales value by country? Does the ranking remain the same as the ranking for the total sum of securities sold?

SELECT
    BillingCountry AS country_,
	round(avg(Total),2) AS avg_country
--	row_number() OVER(PARTITION BY country_ ORDER BY avg(Total)
FROM
    Invoice
GROUP BY
    BillingCountry
ORDER BY
    avg_country DESC

;