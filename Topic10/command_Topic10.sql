USE vk;

-- Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

CREATE UNIQUE INDEX friendship_user_id_idx ON friendship(user_id);
CREATE UNIQUE INDEX friendship_friend_id_idx ON friendship(friend_id);
CREATE UNIQUE INDEX city_name_idx ON cities(name);
CREATE UNIQUE INDEX communities_name_idx ON communities(name);
CREATE INDEX likes_target_id_idx ON likes(target_id);
CREATE UNIQUE INDEX profiles_user_id_idx ON profiles(user_id);


-- Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы: имя группы
-- среднее количество пользователей в группах (сумма количестива пользователей во всех группах делённая на количество групп)
-- самый молодой пользователь в группе (желательно вывести имя и фамилию)
-- самый старший пользователь в группе (желательно вывести имя и фамилию)
-- количество пользователей в группе
-- всего пользователей в системе (количество пользователей в таблице users)
-- отношение в процентах для последних двух значений (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT c.name,
COUNT(u.id) OVER() / 10 AS 'average',
MIN(p.birthday) OVER w_cu_c_id AS 'min_birthday',
MAX(p.birthday) OVER w_cu_c_id AS 'max_birthday',
COUNT(cu.user_id) OVER w_cu_c_id AS 'count by group',
COUNT(u.id) OVER () AS 'all users',
COUNT(c.id) OVER () AS 'all group',
(COUNT(cu.user_id) OVER w_cu_c_id / COUNT(u.id) OVER () *100) as '%%'
FROM communities_users AS cu
      JOIN communities AS c ON cu.community_id = c.id 
      JOIN profiles AS p ON p.user_id = cu.user_id
      JOIN users AS u ON u.id = cu.user_id
WINDOW w_cu_c_id AS (PARTITION BY cu.community_id)
ORDER by c.id;


 
 
 




