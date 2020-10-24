--	Qual o ranking de músicas das playlists? 
-- What is the music ranking of the playlists?

SELECT 
	p.Name AS Playlist_,
	count(DISTINCT t.TrackId) AS n_music
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
JOIN Track t
ON 	pt.TrackId = t.TrackId
GROUP BY p.Name
ORDER BY n_music DESC
;
