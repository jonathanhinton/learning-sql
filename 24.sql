SELECT Track.Name, ROUND(SUM(Total), 2) FROM InvoiceLine JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId JOIN Track ON InvoiceLine.TrackId == Track.TrackId WHERE InvoiceDate LIKE '%2013%' GROUP BY Track.Name ORDER BY SUM(Total) DESC LIMIT 1