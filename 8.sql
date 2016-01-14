SELECT
  I.Total AS InvoiceTotal,
  C.FirstName AS CustomerFirstName,
  C.LastName AS CustomerLastName,
  C.Country AS CustomerCountry,
  E.FirstName AS AgentFirstName ,
  E.LastName AS AgentLastName
FROM
  Customer AS C JOIN Invoice AS I JOIN Employee AS E
ON
  C.CustomerId == I.CustomerId AND C.SupportRepId == E.EmployeeId