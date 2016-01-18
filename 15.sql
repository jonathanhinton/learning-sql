SELECT
 P.Name AS 'Playlist Name', COUNT(PT.TrackId) AS 'Total Tracks'
FROM
  Playlist AS P JOIN PlaylistTrack AS PT
ON
  P.PlaylistId == PT.PlaylistId
GROUP BY P.PlaylistId