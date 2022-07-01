CREATE DATABASE test
GO
USE test

CREATE TABLE Suspect
(
	id int,
	names varchar(100),
	surname varchar(100),
	height int,
	weight int
)

SELECT * FROM Suspect
--- insert data ---
INSERT INTO Suspect(id, names, surname, height, weight)
VALUES
(1, 'John', 'Doe', 165, 60),
(2, 'Bill', 'Green', 170, 67),
(3, 'Baelfire', 'Grehn', 172, 70),
(4, 'Bill', 'Gretan', 165, 55),
(5, 'Brendon', 'Grewn', 150, 50),
(6, 'bill', 'Green', 169, 50)

SELECT id, names, surname FROM Suspect
WHERE height <= 170 AND names LIKE 'b%' AND surname LIKE 'Gre_n' 