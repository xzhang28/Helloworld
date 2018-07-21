/*1.Video table. Unique ID, title of the video, length in minutes, and the URL
*/
CREATE TABLE videos
(
  unique_id int PRIMARY KEY,
  title varchar(30) NOT NULL,
  length_min int,
  url  character(200)
);

INSERT INTO videos (unique_id, title, length_min, url) VALUES (1, 'Anderson Cooper CNN news', 11,  'https://www.youtube.com/watch?v=MUDq0_21BZ4');
INSERT INTO videos (unique_id, title, length_min, url) VALUES (2, 'Trump white house CNN news', 12,  'https://www.youtube.com/watch?v=eHZ-Ft7tSAQ');
INSERT INTO videos (unique_id, title, length_min, url) VALUES (3, 'Spiderman trailer', 2,  'https://www.youtube.com/watch?v=sav1DmTVghM');

SELECT * FROM videos;

/*2. Create and populatte Reviews table, unique_id, reviewer's name, rating, comments*/
CREATE TABLE review
(
  unique_id int ,
  review_name character(30) NOT NULL,
  rate int,
  comments  character(200)
);

INSERT INTO review (unique_id, review_name, rate, comments) VALUES (1, 'John', 3,  'Good point');
INSERT INTO review (unique_id, review_name, rate, comments) VALUES (1, 'Arty', 4,  'Interesting');
INSERT INTO review (unique_id, review_name, rate, comments) VALUES (3, 'bbbb', 3,  'Love it');
INSERT INTO review (unique_id, review_name, rate, comments) VALUES (3, 'aaaa', 5,  'Definitly will watch');

SELECT * FROM review;

/*Report on Video Reviews JOIN statement show information from both tables*/
Select a.*, b.review_name, b.rate, b.comments
  from videos a
  left join review b
  on a.unique_id=b.unique_id;