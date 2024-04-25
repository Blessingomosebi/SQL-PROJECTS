# SQL-PROJECTS
SELECT *
FROM Authors_table_week_5;
SELECT *
FROM [Books_table_week_5 (1)];

--INNER JOIN
--1.List the titles of books along with their authors.
SELECT books.Title,authors.AuthorName
From [Books_table_week_5 (1)] as books
Inner join Authors_table_week_5 as authors
On books.BookID = authors.AuthorID;
--2.Show the titles and prices of all fantasy books.
Select books.Title,books.Price
From [Books_table_week_5 (1)] as books
where books.Genre = 'fantasy';
--3.Display the authors who have written books and the titles of their books.
SELECT authors.AuthorName,books.Title
From Authors_table_week_5 as authors
Inner join [Books_table_week_5 (1)] as books
On authors.AuthorID= books.BookID ;
--4.Find the titles and genres of books priced less than $15.
Select books.Title,books.Genre
From [Books_table_week_5 (1)] as books
where books.Price < '15';

--OUTER JOINS
--1.List all books and their authors. If a book doesn't have an author, display "Unknown".
SELECT books.Title,COALESCE(authors.Authorname, 'Unknown') as Author
From [Books_table_week_5 (1)] as books
Left outer join Authors_table_week_5 as authors
On books.BookID = authors.AuthorID;
--2.Show the titles and prices of all books. If a book doesn't have a price, display "Price not available".
Select books.Title,COALESCE(CAST(books.price AS VARCHAR), 'Price not available') AS price
From [Books_table_week_5 (1)] as books;
--Display all authors and the titles of their books. If an author hasn't written any books, display "No books written".
SELECT authors.AuthorName,COALESCE(books.Title, 'No books written') as Title
From Authors_table_week_5 as authors
 Left Outer join [Books_table_week_5 (1)] as books
On authors.AuthorID= books.BookID ;
--4.List all books and their genres. If a book doesn't have a genre, display "Genre not specified".
Select books.Title,COALESCE(books.Genre, 'Genre not specified') as Genre
From [Books_table_week_5 (1)] as books;

--LEFT JOINS
--1.Show all authors along with the titles of their books. Include authors who haven't written any books.
SELECT authors.AuthorName,COALESCE(books.Title, 'No books written') as Title 
From Authors_table_week_5 as authors
Left join [Books_table_week_5 (1)] as books
On authors.AuthorID= books.BookID ;
--2.Display the titles and prices of all books. Include books with no prices.
Select books.Title,COALESCE(CAST(books.price AS VARCHAR), 'Price not available') AS price
From [Books_table_week_5 (1)] as books;
--3.List all books and their genres. Include genres with no books.
Select books.Title,COALESCE(books.Genre, 'Genre not specified') as Genre
From [Books_table_week_5 (1)] as books;
--4.Show the authors who have written books and the titles of their books. Include authors even if they haven't written any books.
SELECT authors.AuthorName,COALESCE(books.Title, 'No books written') as Title 
From Authors_table_week_5 as authors
Left join [Books_table_week_5 (1)] as books
On authors.AuthorID= books.BookID ;

--RIGHT JOINS
--1.Show all authors along with the titles of their books. Include authors who haven't written any books.
SELECT authors.AuthorName,COALESCE(books.Title, 'No books written') as Title
From Authors_table_week_5 as authors
Right join [Books_table_week_5 (1)] as books
On authors.AuthorID= books.BookID ;
--2.Display the titles and prices of all books. Include books with no prices.
Select books.Title,COALESCE(CAST(books.price AS VARCHAR), 'Price not available') AS price
From [Books_table_week_5 (1)] as books;
--3.List all books and their genres. Include genres with no books.
Select books.Title,COALESCE(books.Genre, 'Genre not specified') as Genre
From [Books_table_week_5 (1)] as books;
--4.Show the authors who have written books and the titles of their books. Include authors even if they haven't written any books.
SELECT COALESCE(authors.AuthorName , 'Author not specified') AS author_name,COALESCE(books.Title, 'No books written') as Title
From Authors_table_week_5 as authors
Right join [Books_table_week_5 (1)] as books
On authors.AuthorID= books.BookID ;

--FULL OUTER JOIN
--1.List all books and their authors. Include books without authors and authors without books.
Select COALESCE (books.Title, 'Unknown') as Title, COALESCE(authors.AuthorName,'Author not specified') AS author_name
FROM [Books_table_week_5 (1)] as books
Full outer join Authors_table_week_5 as authors
On books.BookID = authors.AuthorID;
--2.Display the titles and prices of all books. Include books without prices and prices without books.
Select COALESCE (books.Title, 'Unknown') as Title, COALESCE(books.price,'Price not available') AS Price
FROM [Books_table_week_5 (1)] as books;
--3.Show all authors and the titles of their books. Include authors without books and books without authors.
Select COALESCE (authors.AuthorName,'Author not specified') AS author_name , COALESCE (books.Title, 'Unknown') as Title
FROM Authors_table_week_5 as authors
Full outer join [Books_table_week_5 (1)] as books
On authors.AuthorID = books.BookID;
--4.List all books and their genres. Include genres without books and books without genres.
Select COALESCE (books.Title, 'Unknown') as Title,COALESCE(books.Genre, 'Genre not specified') as Genre
From [Books_table_week_5 (1)] as books;

