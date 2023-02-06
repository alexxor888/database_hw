-- название и год выхода альбомов, вышедших в 2018 году;
SELECT name, release_year
FROM album
WHERE release_year = 2018;

-- название и продолжительность самого длительного трека;
SELECT title_track, GREATEST(time_track)
FROM track
limit 1;


-- название треков, продолжительность которых не менее 3,5 минуты;
SELECT title_track
FROM track
WHERE time_track >= 210;


-- названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT title_collection, release_year
FROM collection
WHERE release_year >= 2018 and release_year <= 2020;

-- исполнители, чье имя состоит из 1 слова;
SELECT name
FROM executor
WHERE not name like '%% %%'


-- название треков, которые содержат слово "мой"/"my".
SELECT title_track
FROM track
WHERE title_track LIKE '%My%';