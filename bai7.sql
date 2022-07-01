CREATE DATABASE test
GO
USE test

CREATE TABLE answers
(
	id int, correct_answer varchar(100), given_answer varchar(100)
)

SELECT * FROM answers
--- insert data ---
INSERT INTO answers(id, correct_answer, given_answer)
VALUES
(1, 'a', 'a'),
(2, 'b', NULL),
(3, 'c', 'b')

SELECT id,
CASE 
	WHEN correct_answer = given_answer THEN 'correct'
	WHEN given_answer IS NULL THEN 'no answer'
	ELSE 'incorrect'
END AS checks
FROM answers
ORDER BY id ASC