-- Total de vendas feitas por cada funcionário
-- Total sales for each employee

SELECT e.FirstName ||" "||e.LastName as "Sales Agent",
	round(SUM(i.Total),2) as "Total_vendas"
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;