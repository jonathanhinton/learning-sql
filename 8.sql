SELECT
  SUM(I.Total) AS 'Invoice Total',
  C.FirstName ||' '|| C.Lastname AS 'Customer Full Name',
  C.Country AS 'Customer Country',
  E.FirstName ||' '|| E.Lastname AS 'Sales Rep Name'
FROM
  Customer AS C JOIN Invoice AS I JOIN Employee AS E
ON
  C.CustomerId == I.CustomerId AND C.SupportRepId == E.EmployeeId
GROUP BY
  C.CustomerId
