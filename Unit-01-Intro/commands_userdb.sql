CREATE TABLE urls (
	id SERIAL PRIMARY KEY, 
	original_url TEXT, 
	count INTEGER DEFAULT 0);

INSERT INTO urls (original_url, count) VALUES ('google.com', 10);
INSERT INTO urls (original_url, count) VALUES ('ebay.com', 1);
INSERT INTO urls (original_url, count) VALUES ('iwantmyname.com', 7);
INSERT INTO urls (original_url, count) VALUES ('petej.org', 4);
INSERT INTO urls (original_url, count) VALUES ('galvanize.it', 6);

SELECT * FROM urls;
SELECT original_url FROM urls;
SELECT * FROM urls WHERE id=1;
UPDATE urls SET count=22 WHERE id=3;
SELECT * FROM urls ORDER BY count ASC;
DELETE FROM urls WHERE original_url='google.com';
SELECT * FROM urls ORDER BY count ASC;