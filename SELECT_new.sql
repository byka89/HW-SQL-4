SELECT name, COUNT(artist_id) FROM genres g
LEFT JOIN artistsgenres a ON g.id = a.genre_id
GROUP BY name;

SELECT al.name, count(tr.name) FROM albums al
JOIN tracks tr ON al.id = tr.album_id 
WHERE year BETWEEN 2019 AND 2020
GROUP BY al.name;

SELECT al.name, ROUND(AVG(duration), 1) FROM albums al
JOIN tracks tr ON al.id = tr.album_id
GROUP BY al.name;

-- SELECT ar.name, year FROM artists ar
-- JOIN albums al ON ar.id = al.id
-- WHERE YEAR != 2020; 

-- updated task #4:

SELECT ar.id, ar.name FROM artists ar
	JOIN artists_albums aa ON ar.id = aa.artist_id
	JOIN albums al ON aa.album_id = al.id  
	WHERE al.release_year!=2020
	GROUP BY ar.id, ar.name
	ORDER BY ar.id;


SELECT DISTINCT(c.name) FROM collections col
	JOIN collections_tracks ct ON c.id = ct.collection_id 
	JOIN tracks t ON ct.track_id = t.id 
	JOIN albums al ON t.id = al.id
	JOIN artists_albums aa ON al.id = aa.artist_id 
	JOIN artists a ON aa.artist_id = a.id  
	WHERE a.name = 'Nirvana';


SELECT al.name FROM albums al
JOIN artistalbum aa ON al.id = aa.album_id 
JOIN artistsgenres ag ON aa.artist_id  = ag.artist_id
GROUP BY al.name
HAVING count(ag.genre_id) >= 2;

SELECT tr.name, ct.collection_id  FROM tracks tr
LEFT JOIN collectionstracks ct ON tr.id = ct.track_id 
WHERE ct.collection_id IS NULL;


SELECT DISTINCT ar.name FROM artists ar
	JOIN artists_albums aa ON ar.id  = aa.artist_id 
	JOIN albums al ON aa.album_id = al.id 
	JOIN tracks tr ON tr.album_id = al.id
	WHERE tr.duration = 
		(SELECT MIN(duration) FROM tracks);

-- SELECT al.name FROM albums al
-- JOIN tracks tr ON al.id = tr.album_id 
-- GROUP BY al.name
-- ORDER BY count(tr.id);

-- updated task #9:
SELECT al.name FROM albums al
JOIN tracks tr ON al.id = tr.album_id 
GROUP BY al.name
HAVING count(tr.id) <= (
	SELECT count(tr.id) FROM albums al
	JOIN tracks tr ON al.id = tr.album_id
	GROUP BY al.name
	ORDER BY count(tr.id)
	LIMIT 1
);
