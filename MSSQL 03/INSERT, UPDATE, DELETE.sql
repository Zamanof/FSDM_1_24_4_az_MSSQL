USE Students

SELECT *
FROM Students

-- INSERT
/*
INSERT INTO <table_name> [col1, col2, ..., colN]
VALUES (val1, val2, ..., valN)
*/
--INSERT INTO Students (FirstName, LastName, Age, [Group])
--VALUES(N'Salam', N'Salamzade', 25, N'1_24_4_az')

--INSERT INTO Students (FirstName, LastName, Age, [Group])
--VALUES(N'Ali', N'Aliyev', 75, N'1_24_4_az')

--INSERT INTO Students (FirstName, LastName, Age, [Group])
--VALUES(N'Zaur', N'Nebiyev', 15, N'1_24_4_az'),
--		(N'Vahid', N'Qarayev', 33, N'1_24_4_az'),
--		(N'Hakim', N'Mahmudov', 17, N'1_24_2_ru')

-- auto increment off
--SET IDENTITY_INSERT Students ON

-- auto increment on
--SET IDENTITY_INSERT Students OFF

--INSERT INTO Students (Id, FirstName, LastName, Age, [Group])
--VALUES(27, N'Zahid', N'Ceferov', 67, N'1_24_4_az')


-- UPDATE
--UPDATE Students
--SET Age += 1


--UPDATE Students
--SET Age = 18
--WHERE Id = 3

--UPDATE Students
--SET Age = 18
--WHERE Gender LIKE N'female'

--UPDATE Students
--SET Age = 17, [Group] = N'Female_1', Gender=N'female'
--WHERE Gender LIKE N'female' OR Id = 7


-- DELETE
--DELETE FROM Students
--WHERE Id > 25

--DELETE FROM Students