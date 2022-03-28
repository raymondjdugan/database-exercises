SELECT  *  FROM albums
--     All albums in your table.

UPDATE albums SET sales = (sales * 10);
SELECT  *  FROM albums

SELECT * FROM albums WHERE release_date < 1980;
-- All albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;

SELECT * FROM albums WHERE artist = "Michael Jackson"
-- All albums by Michael JacksonUPDATE albums SET release_date = 1800 WHERE release_date < 1980 ;
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson'
SELECT * FROM albums WHERE artist = "Peter Jackson"
