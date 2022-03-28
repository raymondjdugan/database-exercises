USE raymond;

SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

-- album_name
-- The Dark Side of the Moon
-- The Wall

SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- release_date
-- 1967

SELECT genres FROM albums WHERE album_name = 'Nevermind';

-- genres
-- Grunge, alternative rock

SELECT album_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- album_name
-- The Bodygaurd
-- Come On Over
-- Falling into You
-- Let's Talk About Love
-- Metallica
-- Gold: Greatest Hits
-- The Immaculate Collection
-- Titanic: Music from the Motion Picture
-- Nevermind
-- Supernatural

SELECT album_name FROM albums WHERE sales < 20;

-- album_name
-- Grease: The Original Soundtrack from the Motion Picture
-- Sgt. Pepper's Lonely Hearts Club Band
-- Dirty Dancing
-- Let's Talk About Love
-- Abbey Road
-- Born in the U.S.A.
-- The Immaculate Collection
-- The Wall
-- Titanic: Music from the Motion Picture
-- Brothers in Arms
-- Nevermind
-- Goodbye Yellow Brick Road

SELECT album_name FROM albums WHERE genres = 'Rock';

-- album_name
-- Sgt. Pepper's Lonely Hearts Club Band
-- 1
-- Abbey Road
