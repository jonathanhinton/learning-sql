SELECT
  C.FirstName,
  C.LastName,
  I.InvoiceId,
  I.InvoiceDate,
  I.BillingCountry
FROM Customer AS C JOIN Invoice AS I ON C.CustomerId == I.CustomerId
WHERE C.Country == "Brazil"