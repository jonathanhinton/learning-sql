SELECT
  IL.InvoiceLineId, IL.InvoiceId, IL.TrackId, IL.UnitPrice, IL.Quantity, T.Name, Artist.Name AS Artist
FROM
  InvoiceLine AS IL JOIN Track AS T
ON
  IL.TrackId == T.TrackId
JOIN Album ON
  T.AlbumId == Album.AlbumId
JOIN Artist ON
  Album.ArtistId == Artist.ArtistId
GROUP BY IL.InvoiceLineId