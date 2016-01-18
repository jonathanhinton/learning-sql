SELECT
  IL.InvoiceLineId, IL.InvoiceId, IL.TrackId, IL.UnitPrice, IL.Quantity, T.Name
FROM
  Customer AS C JOIN InvoiceLine AS IL JOIN Track AS T
ON
  IL.TrackId == T.TrackId
GROUP BY IL.InvoiceLineId