CREATE TABLE IF NOT EXISTS genres (
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS artists (
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS albums (
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL UNIQUE,
    year integer
);

CREATE TABLE IF NOT EXISTS tracks (
    id serial PRIMARY KEY,
    name varchar(100) NOT NULL UNIQUE,
    duration integer,
    album_id integer REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS artistsgenres (
    artist_id integer REFERENCES Artists(id),
    genre_id integer REFERENCES Genres(id),
    CONSTRAINT artist_genre PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS artistalbum (
    artist_id integer REFERENCES Artists(id),
    album_id integer REFERENCES Albums(id),
    CONSTRAINT artist_album PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS collections (
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL UNIQUE,
    year integer
);

CREATE TABLE IF NOT EXISTS collectionstracks (
    collection_id integer REFERENCES Collections(id),
    track_id integer REFERENCES Tracks(id),
    CONSTRAINT track_collection PRIMARY KEY (collection_id, track_id)
);
