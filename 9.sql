SELECT SUM(Total), InvoiceDate FROM Invoice WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%' GROUP BY InvoiceDate LIKE '2011%'
