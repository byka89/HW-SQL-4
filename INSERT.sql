INSERT INTO genres(name)
VALUES
    ('Alternative rock'),
    ('Hard Rock'),
    ('Metal'),
    ('Punk Rock'),
    ('Grunge');

INSERT INTO artists(name)
VALUES
    ('The Offspring'),
    ('Limp Bizkit'),
    ('Led Zeppelin'),
    ('AC/DC'),
    ('Deep Purple'),
    ('Sex Pistols'),
    ('Fall Out Boy'),
    ('Nirvana');
    
INSERT INTO albums(name, year)
VALUES
    ('Americana', 1998),
    ('Significant Other', 1999),
    ('Physical Graffiti', 1975),
    ('Power Up', 2020),
    ('Turning to Crime', 2021),
    ('Never Mind the Bollocks, Here’s the Sex Pistols', 1977),
    ('MANIA', 2018),
    ('Nevermind', 1991);

INSERT INTO tracks(name, duration, album_id)
VALUES
    ('Staring At the Sun', 132, 1),
    ('Break Stuff', 166, 2),
    ('Kashmir Remaster', 517, 3),
    ('Shot In The Dark', 185, 4),
    ('Let the Good Times Roll', 262, 5),
    ('God Save The Queen', 197, 6),
    ('Smells Like Teen Spirit', 301, 8),
    ('Come As You Are', 218, 8),
    ('Lithium', 257, 8),
    ('Walla Walla', 175, 1),
    ('Wild Reputation', 223, 4),
    ('Code Red', 211, 4),
    ('Young And Menace', 223, 7),
    ('Custard Pie Remaster', 255, 3),
    ('In My Time of Dying', 666, 3);

INSERT INTO collections(name, year)
VALUES
    ('The Best of Rock', 2019),
    ('Good Old Rock', 2020),
    ('Music of Steel Hearts', 2004),
    ('Best Rock Collection', 1999),
    ('Time to Rock', 2018),
    ('Classic Rock', 2003),
    ('Keep On Rocking, Baby!', 2022),
    ('Metal Collection', 2007);

INSERT INTO artistalbum(artist_id, album_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8);

INSERT INTO artistsgenres(artist_id, genre_id)
VALUES
    (1, 4),
    (1, 1),
    (2, 3),
    (3, 2),
    (4, 2),
    (4, 3),
    (5, 2),
    (6, 4),
    (7, 4),
    (8, 5);

INSERT INTO collectionstracks(collection_id, track_id)
VALUES
    (1, 1),
    (1, 3),
    (1, 9),
    (2, 2),
    (2, 13),
    (3, 10),
    (3, 3),
    (4, 4),
    (4, 14),
    (5, 5),
    (5, 11),
    (6, 6),
    (7, 6),
    (7, 12),
    (8, 7),
    (8, 15);

   INSERT INTO tracks(name, duration, album_id)
VALUES
    ('Another short track', 132, 3);
