CREATE DATABASE test
GO
USE test

CREATE TABLE users2
(
	id int NOT NULL UNIQUE,
	names varchar(100),
	score int
)

SELECT * FROM users2
--- insert data ---
INSERT INTO users2(id, names, score)
VALUES
(1, 'gongy', 3001),
(2, 'urandom', 2401),
(3, 'eduardische', 2477),
(4, 'Gassa', 2999),
(5, 'bcc32', 2658),
(6, 'Alex_2oo8', 6000),
(7, 'mirosuaf', 2479),
(8, 'Sparik', 2399),
(9, 'thomas_holmes', 2478),
(10, 'cthaeghya', 2400)

SELECT top 5 names FROM (SELECT TOP 7 names, score FROM users2
					ORDER BY score ASC) AS result
					ORDER BY result.score DESC
