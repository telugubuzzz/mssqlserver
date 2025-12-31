/*
---------------------------------------------------
Some of The Most Important SQL Commands
---------------------------------------------------
CREATE DATABASE - creates a new database
DROP DATABASE - deletes the existing database

CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index

SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
*/

--How to create a database
CREATE DATABASE testdb
DROP DATABASE testdb

Use testdb
Go
--1. CREATE TABLE – creates a new table
/* Remeber IDENTITY [(seed, increment)] coloumn 
first number is starting position 
and second number is the increment value
*/
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(2)
);


--2. ALTER TABLE – modifies a table
ALTER TABLE Students
ADD Email VARCHAR(100);


--3. DROP TABLE – deletes a table
DROP TABLE Students;

--4. CREATE INDEX – creates an index (search key)
CREATE INDEX idx_lastname
ON Students (LastName);

--5. DROP INDEX – deletes an index
DROP INDEX idx_lastname ON Students;

--6. SELECT – extracts data from a database
SELECT FirstName, LastName, Grade
FROM Students
WHERE Grade = 'A';
select * from Students
--7. INSERT INTO – inserts new data into a database
INSERT INTO Students (FirstName, LastName, Age, Grade, Email)
VALUES ('Emma', 'Johnson', 14, 'A', 'emma.johnson@email.com');
INSERT INTO Students (FirstName, LastName, Age, Grade, Email)
VALUES ('Emma', 'Johnson', 15, 'B', 'emma.johnson2@email.com');

INSERT INTO Students (FirstName, LastName, Age, Grade, Email)
VALUES ( 'Emma', 'Johnson', 15, 'B', 'emma.johnson2@email.com'),
('Emma', 'Johnson', 15, 'B', 'emma.johnson2@email.com'),
('Emma', 'Johnson', 15, 'B', 'emma.johnson2@email.com'),
('Emma', 'Johnson', 15, 'B', 'emma.johnson2@email.com'),
('Emma', 'Johnson', 15, 'B', 'emma.johnson2@email.com');

--8. UPDATE – updates data in a database
UPDATE Students
SET Grade = 'B'
WHERE StudentID = 1;


--9. DELETE – deletes data from a database
DELETE FROM Students
WHERE StudentID = 1;


