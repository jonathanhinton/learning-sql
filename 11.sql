SELECT COUNT(*) AS Total, InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId
