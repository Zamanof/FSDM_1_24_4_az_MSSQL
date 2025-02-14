-- GROUP BY

-- Column 'Books_En.Category' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
--SELECT Category, SUM(Pages) AS SumPages
--FROM Books_En

SELECT Category, SUM(Pages) AS SumPages
FROM Books_En
WHERE Category IS NOT NULL
GROUP BY Category

SELECT Category, Topic, SUM(Pages) AS SumPages
FROM Books_En
WHERE Category IS NOT NULL
GROUP BY Category, Topic


-- Aggregate funksiyalari WHERE-de istifade etmek olmaz
-- An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.
--SELECT Category, Topic, AVG(Price) AS AveragePrice
--FROM Books_En
--WHERE Category IS NOT NULL AND AVG(Price) > 30
--GROUP BY Category, Topic

--SELECT Category, Topic, AVG(Price) AS AveragePrice
--FROM Books_En
--WHERE Category IS NOT NULL AND AveragePrice
--GROUP BY Category, Topic

-- HAVING - GROUP BY ile ishleyir ve gruplashdiqimiz datalar uchun shert yazmaq uchundur
--SELECT Category, Topic, AVG(Price) AS AveragePrice
--FROM Books_En
--WHERE Category IS NOT NULL 
--GROUP BY Category, Topic
--HAVING AVG(Price) > 30


--SELECT Publisher, SUM(Pages) AS SumPages
--FROM Books_En
--GROUP BY Publisher
--HAVING  SUM(Pages) > 1000

-- HAVING-de GROUP BY-da qeyd etmediyimiz 
-- column-lari istifade etmek olmaz 
--SELECT Topic, COUNT(*) AS BookCount
--FROM Books_En
--GROUP BY Topic
--HAVING COUNT(*) > 50 AND Price < 20

--SELECT Topic, COUNT(*) AS BookCount
--FROM Books_En
--WHERE Price < 20
--GROUP BY Topic
--HAVING COUNT(*) > 50

-- Aggregate funksiyalara parametr olaraq
-- diger Aggregate funksiyalari gondermek olmaz

-- ERROR
--SELECT Topic, MAX(COUNT(*))
--FROM Books_En
--GROUP BY Topic

SELECT TOP(1) Topic, COUNT(*) AS BooksCount
FROM Books_En
GROUP BY Topic
ORDER BY BooksCount DESC