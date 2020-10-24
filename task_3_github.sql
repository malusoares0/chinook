SELECT DISTINCT
	artist_
FROM(
	SELECT
		t.Name AS track_,
		a.Name AS artist_,
		g.Name AS genre_
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
	))
;
