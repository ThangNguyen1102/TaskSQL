CREATE DATABASE test
GO
USE test

CREATE TABLE Users1
(
	id int,
	userName varchar(100),
	roles varchar(100),
	mail varchar(100),
)

SELECT * FROM Users1
--- insert data ---
INSERT INTO Users1(id, userName, roles, mail)
VALUES
(6, 'fasalytch', 'premium', 'much.premium@role.com'),
(13, 'luckygirl', 'regular', 'fun@meh.com'),
(16, 'todayhumor', 'guru', 'today@humor.com'),
(23, 'Felix', 'admin', 'felix@codefights.com'),
(52, 'admin666', 'AdmiN', 'iamtheadmin@admin.admin'),
(87, 'solver100500', 'regular', 'email@notbot.com')

---------------------------------------------------
SELECT mail FROM Users1
WHERE UPPER(roles) NOT LIKE UPPER('admin') AND UPPER(roles) NOT LIKE 'premium'




