

-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT users.id, users.name, users.birthday_at
  FROM users
   JOIN orders
     ON users.id = orders.user_id;
     
-- Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT products.id, products.name, products.price, catalogs.name AS catalog
  FROM products
    LEFT JOIN catalogs
      ON products.catalog_id = catalogs.id;
      
-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

USE sample;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255));

INSERT INTO flights (`from`, `to`) VALUES
('moscow', 'omsk'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omsk', 'irkutsk'),
('moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  label VARCHAR(255),
  name VARCHAR(255));

INSERT INTO cities (label, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');
    

SELECT
  *
FROM flights AS f
  JOIN cities AS cities_from
    ON f.from = cities_from.label  
  JOIN cities AS cities_to
    ON f.to = cities_to.label;  

SELECT flights.id, 
  cities_from.name AS `from`,
  cities_to.name AS `to`
FROM flights
  JOIN cities AS cities_from
    ON flights.from = cities_from.label
  JOIN cities AS cities_to
    ON flights.to = cities_to.label;
     
     
 
     
   
   
   
   
   
     
     
     