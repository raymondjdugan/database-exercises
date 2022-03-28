SELECT  * FROM albums WHERE release_date < 1991;
-- Albums released after 1991
DELETE FROM albums WHERE release_date < 1991;
SELECT  * FROM albums WHERE release_date < 1991;

SELECT  * FROM albums WHERE genres = 'disco';
-- Albums with the genre 'disco'
DELETE FROM albums WHERE genres = 'disco';
SELECT  * FROM albums WHERE genres = 'disco';

SELECT  * FROM albums WHERE artist = 'Whitney Houston';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
DELETE FROM albums WHERE artist = 'Whitney Houston';
SELECT  * FROM albums WHERE artist = 'Whitney Houston';
