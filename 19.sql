SELECT FirstName, LastName, MAX(TotalSales) FROM (SELECT Employee.FirstName AS FirstName, Employee.LastName AS LastName, SUM(Invoice.Total) AS TotalSales FROM employee JOIN Customer ON Customer.SupportRepId == Employee.EmployeeId JOIN Invoice ON Customer.CustomerId == Invoice.CustomerId WHERE STRFTIME('%Y', InvoiceDate) == '2009' GROUP BY Employee.EmployeeId)