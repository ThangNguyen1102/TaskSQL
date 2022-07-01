CREATE DATABASE test
GO
USE test

CREATE TABLE Grades
(
	id int,
	names varchar(100),
	Midterm1 int,
	Midterm2 int,
	Final int
)

SELECT * FROM Grades
--- insert data ---
INSERT INTO Grades(id, names, Midterm1, Midterm2, Final)
VALUES
( 42334,'David', 34, 54, 124),
( 54528,'Anthony', 100, 10, 50),
( 58754,'Jonathan', 49, 58, 121),
( 11000,'Jonty', 25, 30, 180)

SELECT names, id FROM Grades
WHERE Final > (Midterm1 + Midterm2)
ORDER BY SUBSTRING(names, 0,3) ASC, id ASC