--	Qual a posição ocupada pelo Brasil no ranking mundial de vendas?
-- What is the position occupied by Brazil in the world sales ranking?

SELECT
    BillingCountry AS country_,
	sum(Total) AS sum_country
FROM
    Invoice
GROUP BY
    BillingCountry
ORDER BY
    sum_country DESC

;
