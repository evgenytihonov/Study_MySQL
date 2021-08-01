-- Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков.  
-- Ниже рабочий без join  
    
SELECT 
    from_user_id AS 'user id', 
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
        GROUP BY from_user_id
       ORDER BY 'user id';      

-- Ниже наброски с join
       
SELECT u.id, 
  CONCAT(first_name, ' ', last_name) AS 'name',
  COUNT(distinct p.id) AS 'count posts',
  COUNT(distinct m.id) AS 'count media',
  COUNT(distinct l.id) AS 'count likes',
  COUNT(distinct me.id) AS 'count messages'
FROM
  users AS u
LEFT JOIN posts AS p on p.user_id = u.id 
LEFT JOIN media AS m on m.user_id = u.id
LEFT JOIN likes AS l on l.user_id = u.id
LEFT JOIN messages AS me on me.from_user_id = u.id
GROUP BY u.id 
ORDER BY u.id LIMIT 10; 