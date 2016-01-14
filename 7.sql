SELECT
  E.FirstName,
  E.LastName,
  I.InvoiceId
FROM
  Customer AS C JOIN Invoice AS I JOIN Employee AS E
ON
  C.CustomerId == I.CustomerId AND C.SupportRepId == E.EmployeeId