USE vk;

-- Создать и заполнить таблицы лайков и постов.

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type ENUM('messages', 'users', 'posts', 'media') NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS target_types;
CREATE TEMPORARY TABLE target_types (
  name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');


INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    (SELECT name FROM target_types ORDER BY RAND() LIMIT 1),
    CURRENT_TIMESTAMP 
  FROM messages;
  
 SELECT * FROM likes LIMIT 10;
 
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Создать все необходимые внешние ключи и диаграмму отношений.

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_city_id_fk 
    FOREIGN KEY (city_id) REFERENCES cities(id)
      ON DELETE SET NULL;

ALTER TABLE cities 
  ADD CONSTRAINT cities_countries_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id);
     
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_statuses_id_fk 
    FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id);

ALTER TABLE likes 
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
   ON DELETE CASCADE;

ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
ADD CONSTRAINT media_types_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE CASCADE;
  
       
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT COUNT(*) 
  AS likes, gender 
    FROM likes, profiles
      WHERE likes.user_id = profiles.user_id
        GROUP BY gender;  
                      
SELECT IF(
	(SELECT COUNT(id) 
	   FROM LIKES 
	     WHERE user_id IN (
		   SELECT id 
		     FROM profiles 
		       WHERE gender = "m")
	) 
	> 
	(SELECT COUNT(id) 
	   FROM LIKES 
	     WHERE user_id IN (
		   SELECT id 
		     FROM profiles 
		       WHERE gender = "f")), 
   'male',
   'female');
 
  
-- Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков.      

  SELECT 
    from_user_id AS 'user', 
    (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE users.id = messages.from_user_id) AS user,
    (SELECT COUNT(id) 
      FROM posts
        WHERE posts.user_id = messages.from_user_id) AS 'posts',
    (SELECT COUNT(id) 
      FROM media
        WHERE media.user_id = messages.from_user_id) AS 'media',
    (SELECT COUNT(id) 
      FROM likes
        WHERE likes.user_id = messages.from_user_id) AS 'likes',
    COUNT(id) AS message
      FROM messages
        GROUP BY from_user_id;

SELECT
id AS 'Message id',
  body AS 'SMS Text',
  (SELECT COUNT(ID)
    FROM likes
      WHERE likes.target_id = messages.id ) AS 'likes',
      created_at AS 'Date'
    FROM messages
      ORDER BY created_at DESC 
        LIMIT 10;   

       








