-- ---------------------------------------------------------------------
-- Database Schema:  Library
-- Description: This database stores information about books, authors, 
--        and loan information.

-- Table: books(isbn (varchar) (Primary Key), title (varchar, not null), 
--        author (int) (Foreign Key), genre (varchar), quantity (int, not null))
-- Description: This table stores information about books.

-- Table: members(member_id (int, auto increment) (Primary Key) , name (varchar, not null), 
--        email (varchar), phone (varchar)
-- Description: This table stores information about library members.

-- Table: authors(author_id (int, auto increment) (Primary Key) , name (varchar, not null)),
-- nationality varchar(50), birth_year (50))

-- Description: This table stores information about bok authors.

-- Description: This table stores information about library members.

-- Table: loans(loan_id (int, auto increment) (Primary Key), member_id (int) (Foreign Key),
--        isbn  (varchar) (Foreign Key), loan_date (datetime, not null), return_date (datetime))
-- ---------------------------------------------------------------------
-- Insert new records into the Books, Members, and Loans tables.


-- Inserts records into the authors table
--------------------------------------------------------------------------------
INSERT INTO authors (author_id, name, nationality, birth_year) 
VALUES (1, 'J.D. Salinger', 'American', 1919);

INSERT INTO authors (author_id, name, nationality, birth_year) 
VALUES (2, 'Dan Brown', 'American', 1964);

INSERT INTO authors (author_id, name, nationality, birth_year)
VALUES (3, 'Harper Lee', 'American', 1926);

INSERT INTO authors (author_id, name, nationality, birth_year)
VALUES (4, 'F. Scott Fitzgerald', 'American', 1966);

INSERT INTO authors (author_id, name, nationality, birth_year)
VALUES (5, 'Gabriel Garcia Marquez', 'Colombian', 1927);

INSERT INTO authors (author_id, name, nationality, birth_year)
VALUES (6, 'Herman Melville', 'American', 1919);




-- Inserts records into the books table
--------------------------------------------------------------------------------

INSERT INTO books (isbn, title, author, genre, quantity) 
VALUES ('0316769487', 'The Catcher in the Rye', 1, 'Fiction', 10);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('0061120081', 'The Da Vinci Code', 2,'Thriller', 28);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780241950463', 'Raise high the roof beam', 1, 'Fiction', 10);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('0061120089431', 'To Kill a Mockingbird', 3, 'Fiction', 25);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780140283334', 'The Great Gatsby', 4, 'Fiction', 5);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780060935467', 'One Hundred Years of Solitude', 5,  'Fiction', 30);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780143039433', 'Beloved', NULL, 'Fiction', 10);

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
VALUES (4, "Mary Jane", "maryjane@gmail.com", "5843668778");

INSERT INTO members (name, email, phone)
VALUES ("Deni Ochiche", "ochichedeni@gmail.com", "09498398393");

INSERT INTO members (name, email, phone)
VALUES ("Soka Mikaw", "sokamekaw@gmail.com", "04948428679");

INSERT INTO members (name, email, phone)
VALUES ("Leroy Sane", "leroysane@gmail.com", "0958039850");

INSERT INTO members (name, email, phone)
VALUES ("Ousmane Dembele", "dembele@gmail.com", "0948398393");

INSERT INTO members (name, email, phone)
VALUES ("Stiles Stillinski", "stiles@gmail.com", "0958698373");

INSERT INTO members (name, email, phone)
VALUES ("Mary Lander", "landerm@gmail.com", "0447323593");

INSERT INTO members (name, email, phone)
VALUES ("John Mcginn", "mcginn@gmail.com", "05483958369");

INSERT INTO members (name, email, phone)
VALUES ("Denzel Washington", "denzelw@gmail.com", "0645378693");

INSERT INTO members (name, email, phone)
VALUES ("Arial Xoom", "arialx@gmail.com", "05685944369");

INSERT INTO members (name, email, phone)
VALUES ("Faith Cradle", "cradlef@gmail.com", "05586968456");

INSERT INTO members (name, email, phone)
VALUES ("Lora Croft", "loracroft@gmail.com", "05453757366");

INSERT INTO members (name, email, phone)
VALUES ("Linda Sunshine", "lindasunshine@gmail.com", "07155757366");

INSERT INTO members (name, email, phone)
VALUES ("Marcus Rashford", "rashford@gmail.com", "07433354356");

INSERT INTO members (name, email, phone)
VALUES ("Rosa Clean", "rosaclean@gmail.com", "06443454656");

INSERT INTO members (name, email, phone)
VALUES ("Thiago Silva", "thiagosilva@gmail.com", "07443355666");

INSERT INTO members (name, email, phone)
VALUES ("Claire Risen", "clairerisen@gmail.com", "09343355546");

INSERT INTO members (name, email, phone)
VALUES ("Renuka Arya", "renuka@gmail.com", "07423365566");

INSERT INTO members (name, email, phone)
VALUES ("Chloe Sim", "chloesim@gmail.com", "08343445766");

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
VALUES (2, "9780060935467", '2023-05-11', '2023-07-15');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (3, '9780895773227', '2024-03-05', '2024-06-25');

----------------------------------------------------------------------------------------
-- Retrieve all books written by a specific author..

-- Retrieve all books written by an author with id=1.
----------------------------------------------------------------------------------------

SELECT books.isbn, books.title,books.genre,  authors.name AS author FROM authors
JOIN books ON authors.author_id = books.author
WHERE authors.author_id = 1;

----------------------------------------------------------------------------------------
-- Drop the newly created Authors table.

-- Drops the Authors table.
----------------------------------------------------------------------------------------
ALTER TABLE books DROP FOREIGN KEY author_id;
DROP TABLE authors;

-------------------------------------------------------------------------------------------
-- Identify the names of all members who have borrowed a specific book

-- Retrieve the names of all members who have borrowed a book with isbn='9780895773227'.
---------------------------------------------------------------------------------------------

SELECT members.name, books.title AS book FROM loans
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
