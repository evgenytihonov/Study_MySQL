-- Первое задача по домашнему заданию 8 урока
USE vk;
SELECT profiles.gender, 
  COUNT(likes.id) AS total_likes
  FROM likes
    JOIN profiles
      ON likes.user_id = profiles.user_id
    GROUP BY profiles.gender
    ORDER BY total_likes DESC
    LIMIT 1;


-- ДЗ к уроку 9
USE shop;

-- Практическое задание по теме “Транзакции, переменные, представления”

-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START transaction;

INSERT INTO sample.users
SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;

COMMIT;

SELECT * from shop.users;
SELECT * from sample.users;
      
-- Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW products_catalogs AS 
  SELECT products.name AS p_name, catalogs.name AS c_name 
    FROM products AS p
      JOIN catalogs AS c
        ON p.catalog_id = c.id;



     
-- Практическое задание по теме “Администрирование MySQL” 

-- Создайте двух пользователей которые имеют доступ к базе данных shop. 
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
-- второму пользователю shop — любые операции в пределах базы данных shop.
USE shop;

CREATE USER shop_read;
GRANT SELECT ON shop.* TO 'shop_read';
FLUSH PRIVILEGES;

SHOW GRANTS FOR shop_read;

CREATE USER shop;
GRANT ALL PRIVILEGES ON shop.* TO shop;
FLUSH PRIVILEGES;

SHOW GRANTS FOR shop;

-- Пусть имеется таблица accounts содержащая три столбца id, name, password, 
-- содержащие первичный ключ, имя пользователя и его пароль. 
-- Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
-- Создайте пользователя user_read, который бы не имел доступа к таблице accounts, 
-- однако, мог бы извлекать записи из представления username.

CREATE DATABASE topic9;
USE topic9;

DROP TABLE IF EXISTS;
CREATE TABLE accounts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL);
 
 INSERT INTO accounts (name, password) VALUES
 ('Leonid', 'admin1234'),
 ('Lizaveta', 'jeans5678');

CREATE OR REPLACE VIEW username AS 
  SELECT 
    accounts.id, 
    accounts.name 
  FROM accounts;

CREATE USER user_read;
GRANT SHOW VIEW ON topic9.* TO 'user_read';
FLUSH PRIVILEGES;

SHOW GRANTS FOR user_read;



-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".


DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "Доброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "Доброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "Добрый день";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "Добрый вечер";
  END CASE;
END//

DELIMITER ;


-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное 
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба 
-- поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

-- INSERT 
CREATE TRIGGER Both_not_null_insert
BEFORE INSERT
ON products FOR EACH ROW 
BEGIN 
  IF NEW.name IS NULL OR NEW.description IS NULL 
    THEN SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'product name or product description are NULL';
END IF;
END//

-- UPDATE
CREATE TRIGGER Both_not_null_update
BEFORE UPDATE
ON products FOR EACH ROW 
BEGIN 
  IF NEW.name IS NULL OR NEW.description IS NULL 
    THEN SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'product name or product description are NULL';
END IF;
END//


















