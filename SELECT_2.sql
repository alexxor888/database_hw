

-- количество исполнителей в каждом жанре;
SELECT title, COUNT(name) FROM executor
JOIN genreexecutor ON executor.id = genreexecutor.executor_id 
JOIN genre ON genreexecutor.genre_id = genre.id 
GROUP BY title;

-- количество треков, вошедших в альбомы 2019-2020 годов;
SELECT release_year, COUNT(name) FROM album
JOIN track ON album.id = track.album_id 
WHERE album.release_year >= 2019 and album.release_year <= 2020
GROUP BY release_year;

-- средняя продолжительность треков по каждому альбому;
SELECT name, AVG(time_track) FROM album
JOIN track ON album.id = track.album_id 
GROUP BY name;

-- все исполнители, которые не выпустили альбомы в 2020 году;
SELECT executor.name, release_year FROM album
JOIN executoralbum ON album.id = executoralbum.album_id 
JOIN executor ON executoralbum.executor_id = executor.id
WHERE album.release_year != 2020;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT title_collection FROM collection
JOIN collectiontrack ON collection.id = collectiontrack.collection_id 
JOIN track ON collectiontrack.track_id = track.id
JOIN album ON track.album_id = album.id
JOIN executoralbum ON album.id = executoralbum.album_id 
JOIN executor ON executoralbum.executor_id = executor.id
WHERE executor.name 'Рианна';

-- название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album.name FROM album
JOIN executoralbum ON album.id = executoralbum.album_id
JOIN executor ON executoralbum.executor_id = executor.id 
JOIN genreexecutor ON executor.id = genreexecutor.executor_id 
GROUP BY executor.name, album.name
HAVING count(genreexecutor.genre_id) > 1;

-- наименование треков, которые не входят в сборники;
SELECT title_track FROM track
LEFT JOIN collectiontrack ON track.id = collectiontrack.track_id 
WHERE collectiontrack.track_id IS NULL;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT executor.name, track.time_track FROM executor
JOIN executoralbum ON executor.id =  executoralbum.executor_id
JOIN album ON executoralbum.album_id = album.id
JOIN track ON album.id = track.album_id 
WHERE track.time_track IN (SELECT MIN(time_track) FROM track);

-- название альбомов, содержащих наименьшее количество треков.
SELECT album.name, COUNT(track.id) FROM album
JOIN track ON album.id = track.album_id 
GROUP BY album.name
HAVING count(track.id) in (
	SELECT COUNT (track.id)
	FROM album
	JOIN track ON album.id = track.album_id 
	GROUP BY album.name
	ORDER BY count(track.id)
	LIMIT 1);
