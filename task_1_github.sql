--Quantas músicas estão atribuídas a cada cantor da Brazilian Music playlist?
-- How many songs are assigned to each singer in the Brazilian Music playlist?

WITH t1 AS (
SELECT
	t.Name AS track_,
	g.Name AS genre_,
	a.Name AS artist_,
	t.TrackId AS trackid_
FROM Artist a
JOIN Album al
ON a.ArtistId = al.ArtistId
JOIN Track t
ON al.AlbumId = t.AlbumId
JOIN PlaylistTrack pt
ON pt.TrackId = t.TrackId
JOIN Genre g
ON g.GenreId = t.GenreId

WHERE PlaylistId =(
	SELECT PlaylistId
	FROM Playlist
	WHERE Name = 'Brazilian Music'
	)
)

SELECT
	artist_,
	count(trackid_) AS n_tracks
FROM t1
GROUP BY artist_
ORDER BY n_tracks DESC
;