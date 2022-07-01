CREATE DATABASE test
GO
USE test

CREATE TABLE expressions
(
	id int, 
	a int,
	b int,
	operation varchar(50),
	c int
)

SELECT * FROM expressions
--- insert data ---
INSERT INTO expressions(id, a, b, operation, c)
VALUES
(1,2,3,'+', 5),
(2,2,3,'+', 6),
(3,3,2,'/', 1),
(4,4,7,'*', 28),
(5,54,2,'-', 27),
(6,3,0,'/', 0)

GO
CREATE FUNCTION calculator (@first int, @second int, @op varchar(50))
RETURNS int
AS 
BEGIN
	DECLARE @result float = 0
	IF @op = '+' 
		BEGIN
			SELECT @result = @first + @second
		END
	IF @op = '-' 
		BEGIN
			SELECT @result = @first - @second
		END
	IF @op = '*' 
		BEGIN
			SELECT @result = @first * @second
		END
	IF @op = '/' 
		IF @second = 0 OR (SELECT @first % @second) != 0
			BEGIN
				SELECT @result = NULL
			END
		ELSE
			BEGIN
				SELECT @result = @first/@second
			END
    Return @result
END
GO

SELECT * FROM expressions
WHERE  (SELECT dbo.calculator(a,b,operation)) = c





