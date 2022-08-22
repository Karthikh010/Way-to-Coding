DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
use test;

CREATE TABLE book(
bookId int not null,
bookName varchar(20)
);

INSERT INTO book VALUES(1,"POEM"); 
INSERT INTO book VALUES(2,"STORY"); 
INSERT INTO book VALUES(3,"NOVEL"); 
INSERT INTO book VALUES(4,"DOCS"); 
INSERT INTO book VALUES(11,"POEM"); 
INSERT INTO book VALUES(12,"STORY"); 
INSERT INTO book VALUES(13,"NOVEL"); 
INSERT INTO book VALUES(14,"DOCS"); 
INSERT INTO book(bookId) VALUES(5); 

SELECT * FROM book WHERE bookName IN("NOVEL","STORY");
SELECT * FROM book WHERE bookName NOT IN("NOVEL","STORY");
SELECT * FROM book WHERE bookName IN(SELECT bookName FROM book);
SELECT * FROM book WHERE bookName NOT IN(SELECT bookName FROM book);
