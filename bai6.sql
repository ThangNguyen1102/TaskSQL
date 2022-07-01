CREATE DATABASE test
GO
USE test

CREATE TABLE user3
(
	first_name varchar(100),
	second_name varchar(100),
	attribute varchar(100)
)

SELECT * FROM user3
--- insert data ---
INSERT INTO user3(first_name, second_name, attribute)
VALUES
('Mikel', 'Cover', '%Mikel_Cover%'),
('Vicenta', 'Kravitz', '0%Vicenta_%Kravitz'),
('Tosha', 'Cover', 'dlajlkdjalkjdla'),
('Shayne', 'Dahlquist', 'dgahjgdhjagjdhgaj%Shayne_Dahlquist%dkahdhhakjd'),
('Carrol', 'Llanes', 'gadygayge4rbfhbjhfbahjbdfhja'),
('Lizabeth', 'Cover', 'dahuidyaidiuaduoao'),
('Mack', 'Chace', 'dhjagjhgdjhagdabkdhja'),
('Vicenta', 'Marchase', 'gdhjgahjgdhagdhjagj'),
('Mikel', 'Kravitz', 'hdakjdkajhdkja%Mikel_Kravitz%danldaldlald'),
('Deirdre', 'Chace', 'amdlkanldnandlkanjmdlkajdChacedkla;kd;al'),
('Josphine', 'Arzate', 'dmalkjdilajioduaio%josphine_arzate%hdjkahjdakj'),
('Deirdre', 'Chace', 'dnajdnkajhndjkahdkjah%Deirdre_Chace%'),
('Julietta', 'Beer', 'dnbhkadkjhakjdhak')

SELECT * FROM user3
WHERE (attribute) LIKE ('%'+ first_name + '_' + second_name + '%' )
ORDER BY attribute ASC

