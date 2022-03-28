USE raymond;

SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

-- The name of all albums by Pink Floyd.

SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT genres FROM albums WHERE album_name = 'Nevermind';

-- The genre for Nevermind

SELECT album_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums were released in the 1990s


SELECT album_name FROM albums WHERE sales < 20;

-- Which albums had less than 20 million certified sales

SELECT album_name FROM albums WHERE genres = 'Rock';

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
