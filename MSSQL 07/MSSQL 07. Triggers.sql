-- Triggers
-- DML Triigers
-- DML Events (INSERT, UPDATE, DELETE)

USE [Library]

--CREATE TRIGGER BookUpdates
--ON Books
--AFTER UPDATE
--AS
--BEGIN
--	PRINT @@ROWCOUNT
--END

--UPDATE Books
--SET Books.Pages += 1

--UPDATE Books
--SET Books.Pages += 1
--WHERE Books.Pages > 500

--CREATE TRIGGER OldBooks
--ON Books
--AFTER INSERT
--AS
--BEGIN
--	DECLARE @year int
--	SELECT @year = YearPress
--	FROM inserted

--	IF @year < 2000
--		BEGIN
--			PRINT N'Biz belə Nadir müəllim kimi köhnə kitabları əlavə edə bilmərik'
--			ROLLBACK TRAN
--		END
--	ELSE PRINT N'Əla. Belə təzə kitablar gətirin deyək hə'
--END

--INSERT INTO Books (Id, [Name], Pages, 
--					YearPress, Id_Themes, Id_Category,
--					Id_Author, Id_Press, Quantity)
--VALUES (113, 'Imtahana az Qalıb', 1254, 2025, 2, 1, 1, 5, 11)

--INSERT INTO Books (Id, [Name], Pages, 
--					YearPress, Id_Themes, Id_Category,
--					Id_Author, Id_Press, Quantity)
--VALUES (114, 'Elvin müəllim, dərsə qulaq asın', 1254, 1999, 2, 1, 1, 5, 11)

--CREATE TRIGGER NotPiter
--ON Books
--AFTER DELETE
--AS
--	BEGIN

--		IF EXISTS(
--			SELECT *
--			FROM deleted
--			WHERE Id_Press = 3
--		)
--		BEGIN
--			PRINT N'Piterə əl dəymə yuxardan tapşırıblar'
--			ROLLBACK TRAN
--		END
--	END

--DELETE 
--FROM Books
--WHERE Id = 113

CREATE TRIGGER NoInsertLibrarian
ON Libs
INSTEAD OF INSERT
AS
BEGIN
	PRINT 'THIS IS SPARTAAAAA!'
END

INSERT INTO Libs(Id, FirstName, LastName)
VALUES (3, 'ELon', 'Əliyev')

--DECLARE @i AS int = 0
--WHILE @i < 1000000
--BEGIN
--		INSERT INTO Libs(Id, FirstName, LastName)
--		VALUES (3, 'ELon', 'Əliyev')

--		SET @i+=1
--END


DROP TRIGGER NoInsertLibrarian