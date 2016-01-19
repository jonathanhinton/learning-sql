SELECT
  T.Name AS 'Title', Artist.Name AS 'Artist', Album.Title AS 'Album', MT.Name AS 'Media', G.Name AS 'Genre'
FROM
  InvoiceLine AS IL JOIN Track AS T
ON
  IL.TrackId == T.TrackId
JOIN Album ON
  T.AlbumId == Album.AlbumId
JOIN Artist ON
  Album.ArtistId == Artist.ArtistId
JOIN Genre AS G ON
  T.GenreId == G.GenreId
JOIN MediaType AS MT ON
  T.MediaTypeId == MT.MediaTypeId
