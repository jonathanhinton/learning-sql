SELECT
 E.FirstName || ' ' || E.Lastname AS " Sales Rep", E.EmployeeId, ROUND(SUM(Total),2) AS 'Dolla Bills'
FROM
  Employee AS E JOIN Customer AS C ON E.EmployeeId == C.SupportRepId
  JOIN Invoice AS I ON I.CustomerId == C.CustomerId
  JOIN InvoiceLine AS IL ON IL.InvoiceId == I.InvoiceId
GROUP BY E.EmployeeId