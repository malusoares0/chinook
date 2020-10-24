-- Quantas e quais tracks estão atribuídas ao grupo brasileiro Cidade Negra?
-- How many and which tracks are assigned to the Brazilian group Cidade Negra?

SELECT
--	t.TrackId,
	t.Name AS music_title
--	a.AlbumId,
--	a.Title AS album_title
FROM Album a
JOIN Track t
ON a.AlbumId = t.AlbumId
WHERE ArtistId = (
	SELECT
		ArtistId
	FROM Artist 
	WHERE Name = 'Cidade Negra' 
	);

