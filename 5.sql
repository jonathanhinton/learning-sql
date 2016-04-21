SELECT
  BillingCountry
FROM
  Invoice
GROUP BY
  BillingCountry

or

SELECT DISTINCT BillingCountry FROM Invoice