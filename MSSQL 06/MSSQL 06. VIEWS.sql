-- VIEW - təqdimat

-- VIEW - adlandırılmış sorğu olan virtual cədvəldir

/*
	CREATE VIEW view_name
	[WITH SCHEMABINDING]
	AS
	SELECT
	...

	ALTER VIEW view_name
	AS
	SELECT
	...

	DROP VIEW view_name

*/

USE [Library]

-- VIEW yaradılması

--CREATE VIEW StudInfo
--AS
--SELECT S.FirstName, S.LastName, G.[Name] AS GroupName
--FROM Students AS S 
--INNER JOIN Groups AS G ON S.Id_Group = G.Id

SELECT *
FROM StudInfo


-- VIEW yaradılması
--ALTER VIEW StudInfo
--AS
--SELECT S.Id, S.FirstName, S.LastName, G.[Name] AS GroupName, F.[Name] AS FacultyName
--FROM Students AS S 
--INNER JOIN Groups AS G ON S.Id_Group = G.Id
--INNER JOIN Faculties AS F ON F.Id = G.Id_Faculty

-- VIEW tərəfindən DB cədvəllərində dəyişiklik etmək
--UPDATE StudInfo
--SET FirstName = N'İskəndər', LastName = N'Makedoniyalı'
--WHERE Id = 17

-- bir neçə real cədvəli bir sorğu ilə dəyişmək qeyri mümkündür
-- View or function 'StudInfo' is not updatable because the modification affects multiple base tables.
--UPDATE StudInfo
--SET FirstName = N'İsgəndər', GroupName = 'FSD_13'
--WHERE Id = 17

-- SCHEMABINDING
--ALTER VIEW StudInfo
--WITH SCHEMABINDING
--AS
--SELECT S.Id, S.FirstName, S.LastName, G.[Name] AS GroupName, F.[Name] AS FacultyName
--FROM dbo.Students AS S 
--INNER JOIN dbo.Groups AS G ON S.Id_Group = G.Id
--INNER JOIN dbo.Faculties AS F ON F.Id = G.Id_Faculty

--ALTER TABLE Students
--DROP COLUMN FirstName


--DROP VIEW StudInfo



-- System Views


--SELECT *
--FROM INFORMATION_SCHEMA.TABLES

--SELECT *
--FROM sys.tables



--SELECT *
--FROM INFORMATION_SCHEMA.VIEWS

--SELECT *
--FROM sys.views

--SELECT *
--FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS

--SELECT *
--FROM sys.key_constraints

--SELECT *
--FROM sys.foreign_keys

--SELECT *
--FROM sys.check_constraints

--SELECT *
--FROM sys.default_constraints

--SELECT *
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = N'Books'

--SELECT *
--FROM sys.columns 
--INNER JOIN sys.tables 
--ON sys.columns.object_id = sys.tables.object_id
--WHERE sys.tables.[name] = N'Books'



