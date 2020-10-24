--	Quantos atendimentos foram feitos por funcionário?
-- How many calls were made per employee?

SELECT
	e.EmployeeId AS funcionario_id,
	e.FirstName || " " || e.LastName AS nome_funcionario,
	COUNT(e.Title) AS n_atendimentos
FROM Customer c
JOIN Employee e
ON c.SupportRepId=e.EmployeeId
GROUP BY e.FirstName || " " || e.LastName
ORDER BY c.FirstName || " " || c.LastName
;