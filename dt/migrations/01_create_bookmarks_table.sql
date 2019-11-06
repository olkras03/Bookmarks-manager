CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
INSERT INTO bookmarks (url) VALUES ('http://www.askjeeves.com');

INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');

INSERT INTO bookmarks (url) VALUES ('http://www.google.com');

SELECT * FROM bookmarks LIMIT 2; #top 2 entries

DELETE FROM bookmarks WHERE url = 'http://www.twitter.com';

SELECT * FROM bookmarks;