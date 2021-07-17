-- 1.Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя',
  created_at DATETIME,
  updated_at DATETIME),
  birthday_at DATETIME;

SELECT *
  FROM users;
 

 
INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) 
  VALUES ('1', 'Евгений', '1953-05-15 01:53:07', '2016-01-13 04:49:24', '2020-07-30 21:10:38'),
         ('2', 'Владимир', '1977-01-14 04:47:38', '2014-10-28 23:56:21', '2021-06-21 05:38:46'),
         ('3', 'Анна', '1948-11-22 10:33:43', '2011-10-14 21:16:26', '2021-05-17 00:03:51'),
         ('4', 'Олеся', '2003-06-06 12:01:40', '2013-05-22 17:23:33', '2021-03-13 07:12:36'),
         ('5', 'Кристина', '1927-03-29 11:49:41', '2020-10-06 22:05:08', '2020-08-06 00:43:53');
 


 
-- 2.Таблица users была неудачно спроектирована. 
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
 
ALTER TABLE
  users
  CHANGE
  created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
 
ALTER TABLE
  users
  CHANGE
  updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
-- 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом,
-- чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.

CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);
 
INSERT INTO 
  storehouses_products (storehouse_id, product_id, value)
  VALUES
  (1, 621, 0),
  (1, 530, 2500),
  (1, 2950, 0),
  (1, 982, 30),
  (1, 500, 500),
  (1, 782, 1);
 
SELECT *
  FROM storehouses_products
    ORDER BY value = 0, value;
 
 -- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
 -- Месяцы заданы в виде списка английских названий (may, august)
 
SELECT name  
  FROM users
    WHERE DATE_FORMAT(birthday_at, '%M') 
      IN ('may', 'august');
 
 -- Подсчитайте средний возраст пользователей в таблице users.

SELECT
  name, 
  birthday_at,
  (YEAR(CURRENT_DATE)-YEAR(users.birthday_at)) AS age
FROM users;

SELECT SUM(YEAR(CURRENT_DATE)-YEAR(users.birthday_at)) / 5 
  AS age
    FROM users;

SELECT
  AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS age
FROM
  users;

-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.

 SELECT
  DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') 
    AS day,
  COUNT(*) AS total
FROM
  users
GROUP BY
  day;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 