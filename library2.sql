-- ---------------------------------------------------------------------
-- Database Schema:  Library
-- Description: This database stores information about books, authors, 
--        and loan information.

-- Table: books(isbn (varchar) (Primary Key), title (varchar, not null), 
--        author (varchar), genre (varchar), quantity (int, not null))
-- Description: This table stores information about books.

-- Table: members(member_id (int, auto increment) (Primary Key) , name (varchar, not null), 
--        email (varchar), phone (varchar)
-- Description: This table stores information about library members.

-- Table: loans(loan_id (int, auto increment) (Primary Key), member_id (int) (Foreign Key),
--        isbn  (varchar) (Foreign Key), loan_date (datetime, not null), return_date (datetime))
-- ---------------------------------------------------------------------
-- Insert new records into the Books, Members, and Loans tables.


-- Inserts records into the authors table
--------------------------------------------------------------------------------
INSERT INTO authors (author_id, author_name) 
VALUES (1, 'J.D. Salinger');

INSERT INTO authors (author_id, author_name) 
VALUES (2, 'Dan Brown');

INSERT INTO authors (author_id, author_name)
VALUES (3, 'Harper Lee');

INSERT INTO authors (author_id, author_name)
VALUES (4, 'F. Scott Fitzgerald');

INSERT INTO authors (author_id, author_name)
VALUES (5, 'Gabriel Garcia Marquez',);

INSERT INTO authors (author_id, author_name)
VALUES (6, 'Herman Melville');




-- Inserts records into the books table
--------------------------------------------------------------------------------

INSERT INTO books (isbn, title, author, genre, quantity) 
VALUES ('0316769487', 'The Catcher in the Rye', 1, 'Fiction', 10);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('0061120081', 'The Da Vinci Code', 2,'Thriller', 28);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780241950463', 'Raise high the roof beam', 1, 'Fiction', 10);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('0061120081', 'To Kill a Mockingbird', 3, 'Fiction', 25);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780140283334', 'The Great Gatsby', 4, 'Fiction', 5);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780060935467', 'One Hundred Years of Solitude', 5,  'Fiction', 30);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780143039433', 'Beloved', 'Toni Morrison', 'Fiction', 10);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780486821955', 'Don Quixote', NULL, 'Fiction', 50);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9781786751041', "Alice's Adventures in Wonderland", NULL, 'Fiction', 50);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780679601685', 'Pride and Prejudice', NULL, 'Drama', 100);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780895773227', 'Moby Dick', 6, 'Fiction', 50);

----------------------------------------------------------------------------------
-- Inserts records into the members table
----------------------------------------------------------------------------------

INSERT INTO  members (memberid, name, email, phone)
VALUES (1, "Sam Sun", "sun@gmail.com", "3434686980099");

INSERT INTO  members (memberid, name, email, phone)
VALUES (2, "John Clarke", "johnclarke@gmail.com", "45632677998");

INSERT INTO  members (memberid, name, email, phone)
VALUES (3, "Jane Doe", "janedoe@gmail.com", "945326456");

INSERT INTO  members (memberid, name, email, phone)
VALUES (4, "maryjane@gmail.com", "5843668778");

INSERT INTO members (name, email)
VALUES ("Deni Ochiche", "ochichedeni@gmail.com");

INSERT INTO members (name, email)
VALUES ("Soka Mikaw", "sokamekaw@gmail.com");

INSERT INTO members (name, email)
VALUES ("Leroy Sane", "leroysane@gmail.com");

INSERT INTO members (name, email)
VALUES ("Ousmane Dembele", "dembele@gmail.com");

INSERT INTO members (name, email)
VALUES ("Stiles Stillinski", "stiles@gmail.com");

INSERT INTO members (name, email)
VALUES ("Mary Lander", "landerm@gmail.com");

INSERT INTO members (name, email)
VALUES ("John Mcginn", "mcginn@gmail.com");

INSERT INTO members (name, email)
VALUES ("Denzel Washington", "denzelw@gmail.com");

INSERT INTO members (name, email)
VALUES ("Arial Xoom", "arialx@gmail.com");

INSERT INTO members (name, email)
VALUES ("Faith Cradle", "cradlef@gmail.com");

INSERT INTO members (name, email)
VALUES ("Lora Croft", "loracroft@gmail.com");

INSERT INTO members (name, email)
VALUES ("Linda Sunshine", "lindasunshine@gmail.com");

INSERT INTO members (name, email)
VALUES ("Marcus Rashford", "rashford@gmail.com");

INSERT INTO members (name, email)
VALUES ("Rosa Clean", "rosaclean@gmail.com");

INSERT INTO members (name, email)
VALUES ("Thiago Silva", "thiagosilva@gmail.com");

INSERT INTO members (name, email)
VALUES ("Claire Risen", "clairerisen@gmail.com");

INSERT INTO members (name, email)
VALUES ("Renuka Arya", "renuka@gmail.com");

INSERT INTO members (name, email)
VALUES ("Chloe Sim", "chloesim@gmail.com");

--------------------------------------------------------------------------------------
-- Inserts records into the loans table
--------------------------------------------------------------------------------------
INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (1, "0316769487", '2024-01-01', '2024-01-15');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (3, "0061120081", '2023-05-11', '2023-07-15');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (4, '9780895773227', '2024-03-05', '2024-06-25');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (3, "9780140283334", '2024-03-05', '2024-06-25');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (5, '9780895773227', '2024-03-05', '2024-06-25');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (7, '9780895773227', '2024-03-05', '2024-06-25');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (2, "9780060935467", '2023-05-11', '2023-07-15');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (3, '9780895773227', '2024-03-05', '2024-06-25');

----------------------------------------------------------------------------------------
-- Retrieve all books written by a specific author..

-- Retrieve all books written by an author with id=1.
----------------------------------------------------------------------------------------

SELECT books.isbn, books.title, author.name, books.genre FROM authors
JOIN books ON authors.author_id = books.author
WHERE authors.author_id = 1;

----------------------------------------------------------------------------------------
-- Drop the newly created Authors table.

-- Drops the Authors table.
----------------------------------------------------------------------------------------

DROP TABLE authors;

-------------------------------------------------------------------------------------------
-- Identify the names of all members who have borrowed a specific book

-- Retrieve the names of all members who have borrowed a book with isbn='9780895773227'.
---------------------------------------------------------------------------------------------

SELECT members.name, books.title FROM loans
JOIN members ON loans.memberid = members.memberid
JOIN books ON loans.isbn = books.isbn
WHERE books.isbn = '9780895773227';

----------------------------------------------------------------------------------------------
-- Imagine a scenario where the "Members" table needs to be updated to include a new 
-- attribute called "MembershipType" to distinguish between different types of memberships. 
-- Write an SQL query to alter the "Members" table to include this new attribute.
-----------------------------------------------------------------------------------------------

ALTER TABLE members ADD COLUMN MembershipType VARCHAR(255) DEFAULT 'Regular';

------------------------------------------------------------------------------------------------
