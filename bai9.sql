CREATE DATABASE test
GO
USE test

CREATE TABLE full_year_
(
	id int NOT NULL UNIQUE, 
	newspaper varchar(100),
	subcriber varchar(100)
)

SELECT * FROM full_year_
--- insert data ---
INSERT INTO full_year_(id, newspaper, subcriber)
VALUES
(1, 'The Paragon Herald', 'Crissy Sepe'),
(2, 'The Daily Reporter', 'Tonie Moreton'),
(3, 'Morningtide Daily', 'Erwin Chitty'),
(4, 'Daily Breakfast', 'Tonie Moreton'),
(5, 'Independent Weekly', 'Lavelle Phu')

CREATE TABLE half_year_
(
	id int NOT NULL UNIQUE, 
	newspaper varchar(100),
	subcriber varchar(100)
)

SELECT * FROM half_year_
--- insert data ---
INSERT INTO half_year_(id, newspaper, subcriber)
VALUES
(1, 'The Daily Reporter', 'Lavelle Phu'),
(2, 'Daily Breakfast', 'Tonie Moreton'),
(3, 'The Paragon Herald', 'Lia Cover'),
(4, 'The Community Gazette', 'Lavelle Phu'),
(5, 'Nova Daily', 'Lia Cover'),
(6, 'Nova Daily', 'Joya Buss')



SELECT * FROM  full_year_, half_year_


SELECT DISTINCT a.subcriber FROM (SELECT newspaper, subcriber FROM half_year_
								UNION
								SELECT newspaper, subcriber FROM full_year_) AS a
WHERE newspaper LIKE 'Daily%' 
				OR newspaper LIKE '%Daily'
				OR newspaper LIKE '%Daily%'
ORDER BY subcriber ASC


