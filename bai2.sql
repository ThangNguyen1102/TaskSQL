CREATE DATABASE test
GO
USE test

CREATE TABLE Product
(
	id int,
	names varchar(100),
	price int,
	quantity int
)

SELECT * FROM Product
--- insert data ---
INSERT INTO Product(id, names, price, quantity)
VALUES
(1, 'Tomato', 10, 4),
(2, 'Cucumber', 8, 5),
(3, 'Red Pepper', 20, 2),
(4, 'Feta', 40, 1)
---------------------------
 SELECT top 1 subtable.names FROM (select names , (price * quantity) AS result FROM Product
					) AS subtable
					ORDER BY names ASC, result DESC




