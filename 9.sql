SELECT
  ROUND(SUM(Total),2), SUBSTR(InvoiceDate,1,4), COUNT(InvoiceId)
FROM
  Invoice
WHERE
  InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY
  InvoiceDate LIKE '2011%'

using ROUND to the 2nd decimal place
