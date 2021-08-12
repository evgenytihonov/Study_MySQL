CREATE DATABASE library;

USE library;

-- Таблица пользователей
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор пользователя", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
  document_id INT UNSIGNED NOT NULL UNIQUE COMMENT "Номер документа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";

-- Таблица профилей
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT "Пол",
  birthday DATE NOT NULL COMMENT "Дата рождения",
  city_id INT UNSIGNED COMMENT "Ссылка на город проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили";

-- Таблица городов
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  country_id INT UNSIGNED
);

-- Таблица стран
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Таблица документа
CREATE TABLE documents (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  recieve_city_id INT UNSIGNED COMMENT "Ссылка на город выдачи документа",
  serial_number VARCHAR(100) NOT NULL UNIQUE COMMENT "серийный номер документа",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к скану документа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
  ) COMMENT "Документы удостоверяющего личность";

-- Таблица авторов
CREATE TABLE authors (
  id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на автора", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя автора",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия автора",
  gender CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT "Пол",
  birthday DATE NOT NULL COMMENT "Дата рождения",
  country_id INT UNSIGNED COMMENT "Страна происхождения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Авторы";

-- Таблица состояния
CREATE TABLE conditions (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  criterion VARCHAR(100)
) COMMENT "Состояние книги";
 
 -- Таблица языков
CREATE TABLE languages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT "Язык книги";
 
 -- Таблица издательств
CREATE TABLE publish_houses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "издательства";

-- Таблица категорий книг
CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT "Категория книги";

 -- Таблица книг
CREATE TABLE books (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор книги", 
  name VARCHAR(100) NOT NULL COMMENT "Название книги",
  author_id INT UNSIGNED NOT NULL COMMENT "Автор",
  category_id INT UNSIGNED COMMENT "Категория",
  lang_id INT UNSIGNED COMMENT "Категория",
  binding CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT "Переплет",
  condition_id INT UNSIGNED COMMENT "Состояние книги",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Книги";

 -- Таблица детали книги
CREATE TABLE detail_of_books (
  book_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Идентификатор книги", 
  original_name VARCHAR(100) NOT NULL COMMENT "Оригинальное название книги",
  publish_house_id INT UNSIGNED COMMENT "Издательство",
  publication_date DATE NOT NULL COMMENT "Дата публикации",
  pages INT UNSIGNED COMMENT "Количество страниц",
  ISBN VARCHAR(100) NOT NULL COMMENT "ISBN",
  notes text COMMENT "Заметки",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Детальная карточка книги";

-- Таблица расположение книги
CREATE TABLE book_position (
  book_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор книги",
  shelf INT UNSIGNED COMMENT "Номер стелажа",
  block INT UNSIGNED COMMENT "Номер блока",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Хранение книги";


 -- Таблица книжная карта
CREATE TABLE booking_cards (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя",
  book_id INT UNSIGNED NOT NULL COMMENT "Идентификатор книги",
  condition_after_id INT UNSIGNED COMMENT "Состояние книги",
  returned tinyint(1) DEFAULT NULL COMMENT "Признак возврата",
  getting_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время получения книги",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления (возврата книги) строки"
) COMMENT "Книжная карта";





































