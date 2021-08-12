-- ��������� �� � 10 �����

SELECT DISTINCT c.name AS Name,
COUNT(cu.user_id) OVER() / (SELECT COUNT(*) FROM communities) AS 'average',
FIRST_VALUE(CONCAT_WS(" ", u.first_name, u.last_name)) OVER (w_cu_c_id ORDER BY p.birthday DESC) AS youngest,
FIRST_VALUE(CONCAT_WS(" ", u.first_name, u.last_name)) OVER (w_cu_c_id ORDER BY p.birthday ASC) AS oldest,
COUNT(cu.user_id) OVER w_cu_c_id AS count_by_group,
  (SELECT COUNT(*) FROM users) AS users_total,
  COUNT(cu.user_id) OVER w_cu_c_id / (SELECT COUNT(*) FROM users) *100 AS '%%'
FROM communities_users AS cu
      JOIN communities AS c ON cu.community_id = c.id 
      JOIN profiles AS p ON p.user_id = cu.user_id
      JOIN users AS u ON u.id = cu.user_id
WINDOW w_cu_c_id AS (PARTITION BY cu.community_id)
ORDER by c.id;

-- �������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users, catalogs � products 
-- � ������� logs ���������� ����� � ���� �������� ������, �������� �������, ������������� ���������� ����� � ���������� ���� name.

CREATE TABLE Logs (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    table_name varchar(50) NOT NULL,
    row_id INT UNSIGNED NOT NULL,
    row_name varchar(255)
) ENGINE = Archive;

CREATE TRIGGER products_insert AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "products", NEW.id, NEW.name);
END;

CREATE TRIGGER users_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "users", NEW.id, NEW.name);
END;

CREATE TRIGGER catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "catalogs", NEW.id, NEW.name);
END;


-- � ���� ������ Redis ��������� ��������� ��� �������� ��������� � ������������ IP-�������.

HINCRBY addresses '192.168.1.1' 1
HGETALL addresses

HINCRBY addresses '192.168.1.0' 1
HGETALL addresses

HGET addresses '192.168.1.1'

-- ��� ������ ���� ������ Redis ������ ������ ������ ����� ������������ �� ������������ ������ � ��������, 
-- ����� ������������ ������ ������������ �� ��� �����.

HSET emails 'name1' 'mail1@gmail.com'
HSET emails 'name2' 'mail2@gmail.com'
HGET users 'mail2@mail.ru'


HSET users 'mail1@gmail.com' 'name1'
HSET users 'mail2@gmail.com' 'name2'
HGET emails 'name1'


-- ����������� �������� ��������� � �������� ������� ������� ���� ������ shop � ���� MongoDB.

show dbs

use shop

db.createCollection('catalogs')
db.createCollection('products')

db.catalogs.insert({name: '����������'})
db.catalogs.insert({name: '���.�����'})
db.catalogs.insert({name: '����������'})

db.products.insert(
  {
    name: 'Intel Core i3-8100',
    description: '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.',
    price: 7890.00,
    catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
  }
);

db.products.insert(
  {
    name: 'Intel Core i5-7400',
    description: '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.',
    price: 12700.00,
    catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
  }
);

db.products.insert(
  {
    name: 'ASUS ROG MAXIMUS X HERO',
    description: '����������� ����� ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
    price: 19310.00,
    catalog_id: new ObjectId("5b56c74788f700498cbdc56c")
  }
);

db.products.find()

db.products.find({catalog_id: ObjectId("5b56c73f88f700498cbdc56bdb")})




















































