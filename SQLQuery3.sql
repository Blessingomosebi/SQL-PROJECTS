CREATE TABLE BOOKS(
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR (255),
    Author VARCHAR (255),
    PublishedDate DATE,
   ISBN CHARACTER (13),
    Available Bit
	);
	ALTER TABLE BOOKS
ADD Genre VARCHAR(255);

DROP TABLE OldRecords;

CREATE INDEX idx_isbn ON BOOKS(ISBN);
 --indexing the ISBN column enhances search efficiency, reduces resource usage, improves query performance, 
 --and ensures data accuracy within the database.
	CREATE TABLE Members (
	MemberID Integer,
    Name VARCHAR (255),
   MembershipStartDate Date,
    Email VARCHAR (255)
	);
	CREATE TABLE Borrowing_Records (
    RecordID INT,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    OverdueFee FLOAT,
    );
--INSERT INTO
INSERT INTO BOOKS(BookID,Title,Author,PublishedDate,ISBN,Available) 
VALUES (01,'The career woman','Jane Green','2000-01-01','157778', 'True');
INSERT INTO BOOKS(BookID,Title,Author,PublishedDate,ISBN,Available) 
(02,'Eze goes to school','Chinua Achebeee','2005-02-28','157779','False');
--UPDATE STATEMENT
UPDATE BOOKS
SET Author = 'Chinua Achebe'
WHERE ISBN = '157779';
--DELETE STATEMENT
DELETE FROM BOOKS
WHERE ISBN = '157778';
--WHERE STATEMENT
SELECT Title, Author, PublishedDate, ISBN
FROM BOOKS
WHERE Title IN ('The career woman', 'Eze goes to school');
--WHERE STATEMENT
SELECT Title, Author, PublishedDate, ISBN
FROM BOOKS
WHERE Author = 'Jane Green';
--AND STATEMENT
SELECT Title, Author, PublishedDate, ISBN
FROM BOOKS
WHERE PublishedDate = '2000-01-01' AND Author = 'Jane Green';
--AND STATEMENT
SELECT Title, Author, PublishedDate, ISBN
FROM BOOKS
WHERE Available = 'true' AND PublishedDate > '2005-02-28';
--OR STATEMENT
SELECT Title, Author, PublishedDate, ISBN
FROM BOOKS
WHERE Author = 'Jane Green' OR Author = 'Chinua Achebe';
--OR STATEMENT
SELECT Title, Author, PublishedDate, ISBN
FROM BOOKS
WHERE Available = 'true' OR PublishedDate > '2005-02-28';

Select *
from BOOKS;




	

