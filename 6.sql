SELECT
  InvoiceId,
  InvoiceDate,
  BillingCountry,
  Total
FROM
  Invoice JOIN Customer ON Customer.CustomerId == Invoice.CustomerId
WHERE
  BillingCountry == "Brazil"
