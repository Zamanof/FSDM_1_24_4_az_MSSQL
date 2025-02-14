-- Aggregate functions
-- https://learn.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-ver16

SELECT *
FROM Books_En

-- SUM(column_name) - gosterdiyimiz column-un datalarinin cemini qaytarir

--SELECT SUM(Pages) AS AllPageSum
--FROM Books_En

--SELECT SUM(Pages) AS TutorialsPageSum
--FROM Books_En
--WHERE Category LIKE N'Tutorials'

-- COUNT(* | column_name) - sechilmish setirlerin sayini qaytarir

--SELECT COUNT(*) AS BookCount
--FROM Books_En

--SELECT COUNT(Category) AS CategoryCount
--FROM Books_En

--SELECT COUNT(DISTINCT Category) AS UniquealCategoryCount
--FROM Books_En

--SELECT SUM(Price) / COUNT(Price) AS AveragePrice
--FROM Books_En

-- AVG(column_name) - gosterilen column-un ededi oratsini qaytarir
--SELECT AVG(Price) AS AveragePrice
--FROM Books_En

-- MIN(coumn_name), MAX(column_name)
--SELECT MIN(Price) AS MinimalPrice
--FROM Books_En

--SELECT MIN([Name]) AS NameMinimum
--FROM Books_En

--SELECT MAX(Price) AS MaximalPrice
--FROM Books_En

--SELECT MAX([Name]) AS NameMaximum
--FROM Books_En