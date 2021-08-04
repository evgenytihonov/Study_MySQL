-- ������ ������ �� ��������� ������� 8 �����
USE vk;
SELECT profiles.gender, 
  COUNT(likes.id) AS total_likes
  FROM likes
    JOIN profiles
      ON likes.user_id = profiles.user_id
    GROUP BY profiles.gender
    ORDER BY total_likes DESC
    LIMIT 1;


-- �� � ����� 9
USE shop;

-- ������������ ������� �� ���� �����������, ����������, ��������������

-- � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
-- ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.

START transaction;

INSERT INTO sample.users
SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;

COMMIT;

SELECT * from shop.users;
SELECT * from sample.users;
      
-- �������� �������������, ������� ������� �������� name �������� ������� �� ������� products 
-- � ��������������� �������� �������� name �� ������� catalogs.

CREATE OR REPLACE VIEW products_catalogs AS 
  SELECT products.name AS p_name, catalogs.name AS c_name 
    FROM products AS p
      JOIN catalogs AS c
        ON p.catalog_id = c.id;



     
-- ������������ ������� �� ���� ������������������ MySQL� 

-- �������� ���� ������������� ������� ����� ������ � ���� ������ shop. 
-- ������� ������������ shop_read ������ ���� �������� ������ ������� �� ������ ������, 
-- ������� ������������ shop � ����� �������� � �������� ���� ������ shop.
USE shop;

CREATE USER shop_read;
GRANT SELECT ON shop.* TO 'shop_read';
FLUSH PRIVILEGES;

SHOW GRANTS FOR shop_read;

CREATE USER shop;
GRANT ALL PRIVILEGES ON shop.* TO shop;
FLUSH PRIVILEGES;

SHOW GRANTS FOR shop;

-- ����� ������� ������� accounts ���������� ��� ������� id, name, password, 
-- ���������� ��������� ����, ��� ������������ � ��� ������. 
-- �������� ������������� username ������� accounts, ��������������� ������ � ������� id � name. 
-- �������� ������������ user_read, ������� �� �� ���� ������� � ������� accounts, 
-- ������, ��� �� ��������� ������ �� ������������� username.

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



-- ������������ ������� �� ���� ��������� ��������� � �������, ��������"

-- �������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� �� �������� ������� �����. 
-- � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
-- � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � "������ ����".


DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "������ ����";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "������ ����";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "������ ����";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "������ �����";
  END CASE;
END//

DELIMITER ;


-- � ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. 
-- ��������� ����������� ����� ����� ��� ���� �� ���. ��������, ����� ��� ���� ��������� �������������� 
-- �������� NULL �����������. ��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� 
-- ���� ���� ���������. ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.

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


















