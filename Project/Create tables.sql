CREATE DATABASE library;

USE library;

-- ������� �������������
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������������", 
  first_name VARCHAR(100) NOT NULL COMMENT "��� ������������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� ������������",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "�����",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "�������",
  document_id INT UNSIGNED NOT NULL UNIQUE COMMENT "����� ���������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������";

-- ������� ��������
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "������ �� ������������", 
  gender CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT "���",
  birthday DATE NOT NULL COMMENT "���� ��������",
  city_id INT UNSIGNED COMMENT "������ �� ����� ����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�������";

-- ������� �������
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  country_id INT UNSIGNED
);

-- ������� �����
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- ������� ���������
CREATE TABLE documents (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  recieve_city_id INT UNSIGNED COMMENT "������ �� ����� ������ ���������",
  serial_number VARCHAR(100) NOT NULL UNIQUE COMMENT "�������� ����� ���������",
  filename VARCHAR(255) NOT NULL COMMENT "���� � ����� ���������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
  ) COMMENT "��������� ��������������� ��������";

-- ������� �������
CREATE TABLE authors (
  id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "������ �� ������", 
  first_name VARCHAR(100) NOT NULL COMMENT "��� ������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� ������",
  gender CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT "���",
  birthday DATE NOT NULL COMMENT "���� ��������",
  country_id INT UNSIGNED COMMENT "������ �������������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������";

-- ������� ���������
CREATE TABLE conditions (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  criterion VARCHAR(100)
) COMMENT "��������� �����";
 
 -- ������� ������
CREATE TABLE languages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT "���� �����";
 
 -- ������� �����������
CREATE TABLE publish_houses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������";

-- ������� ��������� ����
CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT "��������� �����";

 -- ������� ����
CREATE TABLE books (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� �����", 
  name VARCHAR(100) NOT NULL COMMENT "�������� �����",
  author_id INT UNSIGNED NOT NULL COMMENT "�����",
  category_id INT UNSIGNED COMMENT "���������",
  lang_id INT UNSIGNED COMMENT "���������",
  binding CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT "��������",
  condition_id INT UNSIGNED COMMENT "��������� �����",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�����";

 -- ������� ������ �����
CREATE TABLE detail_of_books (
  book_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "������������� �����", 
  original_name VARCHAR(100) NOT NULL COMMENT "������������ �������� �����",
  publish_house_id INT UNSIGNED COMMENT "������������",
  publication_date DATE NOT NULL COMMENT "���� ����������",
  pages INT UNSIGNED COMMENT "���������� �������",
  ISBN VARCHAR(100) NOT NULL COMMENT "ISBN",
  notes text COMMENT "�������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "��������� �������� �����";

-- ������� ������������ �����
CREATE TABLE book_position (
  book_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� �����",
  shelf INT UNSIGNED COMMENT "����� �������",
  block INT UNSIGNED COMMENT "����� �����",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�������� �����";


 -- ������� ������� �����
CREATE TABLE booking_cards (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "������ �� ������������",
  book_id INT UNSIGNED NOT NULL COMMENT "������������� �����",
  condition_after_id INT UNSIGNED COMMENT "��������� �����",
  returned tinyint(1) DEFAULT NULL COMMENT "������� ��������",
  getting_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� ��������� �����",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� (�������� �����) ������"
) COMMENT "������� �����";





































