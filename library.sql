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

-- Inserts records into the books table
--------------------------------------------------------------------------------

INSERT INTO books (isbn, title, author, genre, quantity) 
VALUES ('0316769487', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 10);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('0061120081', 'The Da Vinci Code', 'Dan Brown','Thriller', 28);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('0061120081', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 25);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780140283334', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 5);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780060935467', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez',  'Fiction', 30);

INSERT INTO books (isbn, title, author, genre, quantity)
VALUES ('9780143039433', 'Beloved', 'Toni Morrison', 'Fiction', 10);

----------------------------------------------------------------------------------
-- Inserts records into the members table
----------------------------------------------------------------------------------

INSERT INTO  members (name, email, phone)
VALUES ("Sam Sun", "sun@gmail.com", "343468698");

INSERT INTO  members (name, email, phone)
VALUES ("John Clarke", "johnclarke@gmail.com", "45632677998");

INSERT INTO  members (name, email, phone)
VALUES ("Jane Doe", "janedoe@gmail.com", "945326456");

INSERT INTO  members (name, email, phone)
VALUES ("Mary Jane", "maryjane@gmail.com", "5843668778");

INSERT INTO members (name, email)
VALUES ("Deni Ochiche", "ochichedeni@gmail.com");

--------------------------------------------------------------------------------------
-- Inserts records into the loans table
--------------------------------------------------------------------------------------
INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (13, "0316769487", '2024-01-01', '2024-01-15');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (17, "0061120081", '2023-05-11', '2023-07-15');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (13, "9780140283334", '2024-03-05', '2024-06-25');

INSERT INTO loans (memberid, isbn, loandate, returndate)
VALUES (14, "9780060935467", '2023-05-11', '2023-07-15');

----------------------------------------------------------------------------------------
-- Retrieve all information about books borrowed by a specific member.

-- Retrieves all books borrowed by member_id = 2
----------------------------------------------------------------------------------------

SELECT books.isbn, books.title, books.author, books.genre, FROM loans
JOIN books ON loans.isbn = books.isbn
WHERE loans.member_id = 13;

-------------------------------------------------------------------------------------------
-- Update the quantity of a particular book in the Books table.

-- Updates a book of isbn="9780140283334" quantity to 34
---------------------------------------------------------------------------------------------

UPDATE books SET quantity = 34 WHERE isbn = "9780140283334";

----------------------------------------------------------------------------------------------
-- Delete a member record from the Members table.

-- Deletes a member record from the Members table.
-----------------------------------------------------------------------------------------------

DELETE FROM member WHERE id = 17;

------------------------------------------------------------------------------------------------
