SHOW TABLES;

SELECT * FROM friendship_statuses LIMIT 10;

INSERT INTO friendship_statuses (name) VALUES 
  ('Requested'),
  ('Confirmed'),
  ('Rejected');

DELETE FROM friendship_statuses
WHERE id BETWEEN 1 AND 3;

UPDATE friendship_statuses 
SET id = id - 3;

UPDATE friendship SET
  friend_id = FLOOR(1 + RAND() * 100);

UPDATE communities_users SET
  community_id = FLOOR(1 + RAND() * 10);
  
 UPDATE media SET filename = CONCAT(
  'http://dropbox.net/vk/',
  filename,
  '.',
  (SELECT name FROM media_types ORDER BY RAND() LIMIT 1)
); 

UPDATE media_types 
  SET name = REPLACE(name, ' avi', 'avi')
  WHERE name LIKE '% avi%';

UPDATE media 
  SET filename = REPLACE(filename, ' avi', 'avi')
  WHERE filename LIKE '% avi%';


 UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, '_', last_name) FROM users WHERE id = user_id),
  '"}');
 
 UPDATE messages SET
  to_user_id = FLOOR(1 + RAND() * 100);
 
 
 
 