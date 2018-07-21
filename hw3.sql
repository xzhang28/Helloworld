/*
 Homework 3
*/
/*Create group table*/

CREATE TABLE users
(
  user_id int PRIMARY KEY,
  user_name varchar(20) ,
  user_group varchar(20)
);

INSERT INTO users (user_id, user_name, user_group) VALUES ( 1, 'Modesto', 'IT');
INSERT INTO users (user_id, user_name, user_group) VALUES ( 2, 'Ayine', 'IT');
INSERT INTO users (user_id, user_name, user_group) VALUES ( 3, 'Christopher', 'Sales');
INSERT INTO users (user_id, user_name, user_group) VALUES ( 4, 'Cheong woo', 'Sales');
INSERT INTO users (user_id, user_name, user_group) VALUES ( 5, 'Saulat', 'Administration');
INSERT INTO users (user_id, user_name, user_group) VALUES ( 6, 'Heidy', 'NA');
INSERT INTO users (user_id, user_name, user_group) VALUES ( 7, '', 'Operations');


SELECT *
 FROM users;

CREATE TABLE rooms
(
  room_id int primary KEY,
  room_name varchar(20) NOT NULL,
  access_group varchar(10) NULL
);

INSERT INTO rooms (room_id, room_name, access_group) VALUES ( 1, '101', 'IT');
INSERT INTO rooms (room_id, room_name, access_group) VALUES ( 2, '102', 'IT');
INSERT INTO rooms (room_id, room_name, access_group) VALUES ( 3, '102', 'Sales');
INSERT INTO rooms (room_id, room_name, access_group) VALUES ( 4, 'Auditorium A', 'Sales');
INSERT INTO rooms (room_id, room_name, access_group) VALUES ( 5, 'AUditorium B', '');

SELECT * 
  FROM rooms; 


SELECT a.user_name, a.user_group, b.room_name
  FROM users a 
  LEFT JOIN rooms b
  ON a.user_group = b.access_group
  ORDER BY a.user_name, a.user_group, b.room_name;
 
