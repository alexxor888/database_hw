CREATE TABLE IF NOT EXISTS Genre(
	id SERIAL PRIMARY KEY,
	Title VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Executor(
	id SERIAL PRIMARY KEY,
	Name VARCHAR(60) INIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreExecutor(
	Genre_id INTEGER REFERENCES Genre(id),
	Executor_id INTEGER REFERENCES Executor(id),
	CONSTRAINT pk_GenreExecutor PRIMARY KEY (Genre_id, Executor_id)
);

CREATE TABLE IF NOT EXISTS Album(
	id SERIAL primary key,
	Name VARCHAR(60) UNIQUE NOT NULL,
	Release_year INTEGER UNIQUE
);

CREATE TABLE IF NOT EXISTS ExecutorAlbum(
	Executor_id INTEGER REFERENCES Executor(id),
	Album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pk_ExecutorAlbum PRIMARY KEY (Executor_id, Album_id)
);

CREATE TABLE IF NOT EXISTS Track(
	id SERIAL PRIMARY KEY,
	Title_track VARCHAR(60) UNIQUE NOT NULL,
	Time_track integer UNIQUE,
	Album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection(
	id SERIAL PRIMARY KEY,
	Title_collection VARCHAR(60) UNIQUE NOT NULL,
	Release_year INTEGER
);

CREATE TABLE IF NOT EXISTS CollectionTrack(
	Track_id INTEGER REFERENCES Track(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_CollectionTrack PRIMARY KEY (Track_id, Collection_id)
);