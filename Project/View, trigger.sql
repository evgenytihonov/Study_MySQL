USE library;

-- Представления:
-- Книги в наличии с информацией о них(название, автор, категория, переплет, блок хранения).
DROP VIEW IF EXISTS view_books_in_stock;
CREATE VIEW view_books_in_stock AS (
  SELECT b.name 'Title', 
        CONCAT_WS(' ', a.last_name, a.first_name) 'Author',
        c.name 'Category',
        b.binding 'Binding',
        bp.block 'Storage Block'
    FROM books b 
      JOIN authors a ON a.id = b.author_id 
      JOIN categories c ON c.id = b.category_id
      JOIN booking_cards bc ON bc.book_id = b.id
      JOIN book_position bp ON bp.book_id = b.id 
    WHERE bc.returned = 1
      GROUP by b.id
      ORDER BY Author
);

-- Пользователи не вернувшие книги с данными о них
DROP VIEW IF EXISTS view_debt_users;
CREATE VIEW view_debt_users AS (
  SELECT 
    bc.user_id 'id',
    CONCAT_WS(' ', u.last_name, u.first_name) 'Username',
    p.gender 'Gender',
    p.birthday 'Birthday',
    CONCAT_WS(' ', d.id, d.serial_number, c.name) 'Document',
    u.phone 'Phone number',
    u.email 'Email'    
  FROM booking_cards bc 
      JOIN users u ON u.id = bc.user_id 
      JOIN documents d ON d.id = u.document_id
      JOIN profiles p ON p.user_id = u.id
      JOIN cities c ON c.id = d.recieve_city_id 
    WHERE bc.returned = 0
      ORDER BY u.last_name 
);


-- Триггеры на запрет внесения данных в таблицу users без имени и фамилии
DELIMITER //

CREATE TRIGGER validate_name_users_insert BEFORE INSERT ON users
FOR EACH ROW BEGIN
  IF NEW.first_name IS NULL AND NEW.last_name IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both users first name and users last name are NULL';
  END IF;
END//


CREATE TRIGGER validate_name_users_update BEFORE UPDATE ON users
FOR EACH ROW BEGIN
  IF NEW.first_name IS NULL AND NEW.last_name IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both users first name and users last name are NULL';
  END IF;
END//





























