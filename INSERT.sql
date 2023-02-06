INSERT INTO Executor(name)
VALUES ('Майкл Джексон');

INSERT INTO Executor(name)
VALUES ('Рианна');

INSERT INTO Executor(name)
VALUES ('Пол Маккартни');

INSERT INTO Executor(name)
VALUES ('Леди Гага');

INSERT INTO Executor(name)
VALUES ('Бритни Спирс');

INSERT INTO Executor(name)
VALUES ('Элвис Пресли');

INSERT INTO Executor(name)
VALUES ('Элтон Джон');

INSERT INTO Executor(name)
VALUES ('Эминем');

INSERT INTO Genre(title)
VALUES ('Поп');

INSERT INTO Genre(title)
VALUES ('Хип-Хоп');

INSERT INTO Genre(title)
VALUES ('r&b');

INSERT INTO Genre(title)
VALUES ('Рок-н-ролл');

INSERT INTO Genre(title)
VALUES ('Поп-рок');

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(1,1);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(1,2);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(1,3);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(2,4);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(3,5);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(4,6);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(5,7);

INSERT INTO GenreExecutor(genre_id, executor_id)
VALUES(5,8);

INSERT INTO Album(name, release_year)
VALUES('Dangerous', 1991);

INSERT INTO Album(name, release_year)
VALUES('Loud', 2010);

INSERT INTO Album(name, release_year)
VALUES('Egypt Station', 2018);

INSERT INTO Album(name, release_year)
VALUES('Artpop', 2013);

INSERT INTO Album(name, release_year)
VALUES('Glory', 2016);

INSERT INTO Album(name, release_year)
VALUES('Viva Las Vegas', 1964);

INSERT INTO Album(name, release_year)
VALUES('The Diving Board', 2013);

INSERT INTO Album(name, release_year)
VALUES('Recovery', 2010);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(1,1);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(2,2);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(3,3);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(4,4);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(5,5);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(6,6);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(7,7);

INSERT INTO ExecutorAlbum(executor_id, album_id)
VALUES(8,8);

INSERT INTO track(title_track, time_track, album_id)
VALUES('Dangerous', 417, 1);

INSERT INTO track(title_track, time_track, album_id)
VALUES('S&M', 243, 2);

INSERT INTO track(title_track, time_track, album_id)
VALUES('Come On to Me', 251, 3);

INSERT INTO track(title_track, time_track, album_id)
VALUES('My Aura', 235, 4);

INSERT INTO track(title_track, time_track, album_id)
VALUES('Man on the Moon', 226, 5);

INSERT INTO track(title_track, time_track, album_id)
VALUES('VIVA LAS VEGAS', 141, 6);

INSERT INTO track(title_track, time_track, album_id)
VALUES('Oceans Away', 238, 7);

INSERT INTO track(title_track, time_track, album_id)
VALUES('W.T.P.', 238, 8);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#1', 2014);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#2', 2015);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#3', 2016);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#4', 2017);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#5', 2018);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#6', 2019);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#7', 2020);

INSERT INTO collection(title_collection, release_year)
VALUES('collection#8', 2021);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(1, 8);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(2, 7);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(3, 6);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(4, 5);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(5, 4);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(6, 3);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(7, 2);

INSERT INTO collectiontrack(collection_id, track_id)
VALUES(8, 1);