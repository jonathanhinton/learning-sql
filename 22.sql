SELECT  COUNT(A.CustomerId) AS 'Count of Customers', B.FirstName || ' ' || B.LastName AS 'Sales Agent' FROM Customer AS A JOIN Employee AS B ON A.SupportRepId == B.EmployeeId GROUP BY B.FirstName || B.LastName