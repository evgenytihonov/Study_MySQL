USE library;

-- Создание внешних ключей

ALTER TABLE users
  ADD CONSTRAINT users_document_id_fk 
    FOREIGN KEY (document_id) REFERENCES documents(id)
      ON DELETE CASCADE;
      
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_city_id_fk 
    FOREIGN KEY (city_id) REFERENCES cities(id)
      ON DELETE SET NULL;

ALTER TABLE cities 
  ADD CONSTRAINT cities_countries_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id);
    
ALTER TABLE books
  ADD CONSTRAINT books_category_id_fk 
    FOREIGN KEY (category_id) REFERENCES categories(id),  
  ADD CONSTRAINT books_lang_id_fk 
    FOREIGN KEY (lang_id) REFERENCES languages(id),
  ADD CONSTRAINT books_condition_id_fk 
    FOREIGN KEY (condition_id) REFERENCES conditions(id);
   
ALTER TABLE books
  ADD CONSTRAINT books_author_id_fk 
    FOREIGN KEY (author_id) REFERENCES authors(id);
    
ALTER TABLE detail_of_books
  ADD CONSTRAINT books_book_id_fk 
    FOREIGN KEY (book_id) REFERENCES books(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT detail_of_books_publish_house_id_fk 
    FOREIGN KEY (publish_house_id) REFERENCES publish_houses(id);  

ALTER TABLE authors 
  ADD CONSTRAINT authors_countries_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id);   
   
 ALTER TABLE booking_cards
  ADD CONSTRAINT booking_cards_book_id_fk 
    FOREIGN KEY (book_id) REFERENCES books(id),
  ADD CONSTRAINT booking_cards_condition_after_id_fk 
    FOREIGN KEY (condition_after_id) REFERENCES conditions(id);  

ALTER TABLE booking_cards
  ADD CONSTRAINT booking_cards_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);   
   
ALTER TABLE documents 
  ADD CONSTRAINT documents_recieve_city_id_fk 
    FOREIGN KEY (recieve_city_id) REFERENCES cities(id);      

ALTER TABLE book_position
  ADD CONSTRAINT book_position_book_id_fk 
    FOREIGN KEY (book_id) REFERENCES books(id)
      ON DELETE CASCADE;   


-- Создание индексов

-- authors
CREATE UNIQUE INDEX first_name_idx ON authors(first_name);
CREATE UNIQUE INDEX last_name_idx ON authors(last_name);
CREATE UNIQUE INDEX birthday_idx ON authors(birthday);

-- booking_cards
CREATE UNIQUE INDEX book_id_idx ON booking_cards(book_id);
CREATE UNIQUE INDEX getting_at_idx ON booking_cards(getting_at);

-- books
CREATE UNIQUE INDEX name_idx ON books(name);
CREATE UNIQUE INDEX author_id_idx ON books(author_id);

-- cities
CREATE UNIQUE INDEX name_idx ON cities(name);

-- detail_of_books
CREATE UNIQUE INDEX publish_house_id_idx ON detail_of_books(publish_house_id);
CREATE UNIQUE INDEX publication_date_idx ON detail_of_books(publication_date);
CREATE UNIQUE INDEX pages_idx ON detail_of_books(pages);

-- profiles
CREATE UNIQUE INDEX birthday_idx ON profiles(birthday);

-- users
CREATE UNIQUE INDEX first_name_idx ON users(first_name);
CREATE UNIQUE INDEX last_name_idx ON users(last_name);
CREATE UNIQUE INDEX phone_idx ON users(phone);




























