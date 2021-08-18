USE library;

-- Книги с именем автора, категорией и языком из блока хранения 2 с сортировкой по фамилии автора и названии книги.
SELECT DISTINCT 
  b.name AS Title, 
  CONCAT_WS(' ', a.last_name, a.first_name) AS Author,
  c.name AS Category,
  l.name AS Lang
FROM books AS b
LEFT JOIN authors a ON a.id = b.author_id
LEFT JOIN categories c ON c.id = b.category_id
LEFT JOIN languages l ON l.id = b.lang_id
LEFT JOIN book_position bp ON bp.book_id =b.id 
WHERE bp.block = 2
ORDER BY a.last_name, b.name
LIMIT 10;

-- Подсчет возраста пользователей
SELECT
  CONCAT_WS(' ', u.last_name, u.first_name) AS name,
  p.birthday,
  ((YEAR(CURRENT_DATE) - YEAR(p.birthday)) - (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(p.birthday, '%m%d'))
  ) AS age
FROM users u 
JOIN profiles p ON p.user_id = u.id
ORDER BY age
LIMIT 10;

-- Вывод автора, его страны, последняя дата публикации и общее количество страниц
SELECT 
  a.first_name 'First name',
  a.last_name 'Last name',
  c.name 'Country',
  MAX(dob.publication_date) 'Last publication date',
  SUM(pages) 'Number of pages'
FROM books b
JOIN authors a ON a.id = b.author_id 
JOIN countries c ON c.id = a.country_id
JOIN detail_of_books dob ON dob.book_id = b.id 
GROUP BY a.id
ORDER BY a.last_name;

-- Проверка предыдущего 
SELECT books.id, authors.first_name, authors.last_name, detail_of_books.publication_date, detail_of_books.pages, SUM(pages) OVER()
FROM books
JOIN detail_of_books ON detail_of_books.book_id = books.id
JOIN authors ON authors.id = books.author_id 
WHERE authors.first_name = 'fatima';

-- Показывает категорию, количество книг данной категории, возвращенные книги, когда последний раз брали из категории книгу и средний возврат читателя категории
SELECT DISTINCT
  c.name,
  COUNT(c.name) OVER(w_c_n) 'Number of books in category',
  SUM(bc.returned) OVER(w_c_n) 'Returned books',
  LAST_VALUE(bc.getting_at) OVER(w_c_n) 'Last date of receipt of the books',
  AVG((YEAR(CURRENT_DATE) - YEAR(birthday)) - (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d'))) OVER(w_c_n) 'Average age'
FROM booking_cards bc
  JOIN books b ON b.id = bc.book_id
  JOIN categories c ON c.id = b.category_id
  JOIN profiles p ON p.user_id = bc.user_id 
WINDOW w_c_n AS (PARTITION BY c.name);




































































