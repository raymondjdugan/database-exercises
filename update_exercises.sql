SELECT  *  FROM albums
-- will select all columns and rows
UPDATE albums SET sales = (sales * 10);
SELECT  *  FROM albums

SELECT * FROM albums WHERE release_date < 1980;
-- Will select all data from the table that has a releases date of less than 1980
UPDATE albums SET release_date = 1800 WHERE release_date < 1980 ;
SELECT * FROM albums WHERE release_date < 1980;

SELECT * FROM albums WHERE artist = "Michael Jackson"
-- returns all album data for Michael Jackson
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson'
SELECT * FROM albums WHERE artist = "Peter Jackson"
