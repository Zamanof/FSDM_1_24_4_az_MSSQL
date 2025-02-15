-- SELECT FROM WHERE

/*
SELECT [DISTINCT | ALL] * | val1, val2,...,valN
FROM <table_name>
WHERE <search_condition>
ORDER BY <order_list> [ASC | DESC]
*/

-- Single line comment
/*
	Multi line
	comment
*/

--	SELECT – son nəticədə göstərilməli olan sütunları işarə edir 
--	FROM – məlumatların geri qayıttığı sxemləri işarə edir 
--	WHERE – sətirbəstir emal olunması üçün nəzərdə tutulan sətri işarə edir (əgər konkret sətr üçün nəzərdə tutulmuş şərt true-nu geri qaytarsa, o zaman bu sətr nəticələndirən seçimə əlavə olunacaqdır) 
	
--	ORDER BY – son nəticə üçün nəzərdə tutulmuş seçim ardıcıllığını işarə edir


USE Students

-- SELECT - datalarin sechilmesi
-- FROM - datalarin menbeyi

--SELECT *
--FROM Students.dbo.Students

--SELECT *
--FROM dbo.Students

--SELECT *
--FROM Students


--SELECT FirstName, LastName, Age, [Group] 
--FROM Students

-- Alias 
--SELECT FirstName + ' ' + LastName AS [Full Name], 
--				2025 - Age AS BornYear
--FROM Students


--SELECT ALL [Group]
--FROM Students


-- DISTINCT - datalari tekralanmdan sechmek uchundur
--SELECT DISTINCT [Group]
--FROM Students

-- ORDER BY - cheshidleme - by default ASC
--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY Age ASC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY Age DESC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY FirstName ASC, Age DESC


-- WHERE -  datalarin hansi shert ile sechilmesi
-- comparison operator (>, <, >=, <=, =, != (<>))

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE Age > 50


--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName = N'Ольга'

-- AND, OR, NOT
--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName = N'Ольга' AND Age > 70

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName = N'Ольга' OR Age > 70

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE NOT (FirstName = N'Ольга' OR Age > 70)
--ORDER BY FirstName

-- <column_name> IS [NOT] NULL - gosterilen sutunun deyerinin NULL olub olmamsi
--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE [Group] IS NULL

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE [Group] IS NOT NULL

-- IN, BETWEEN
-- BETWEEN Example
--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE Age >= 70 AND Age <= 85

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE  Age BETWEEN 70 AND 85

-- IN Example
--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName = N'Петр' OR FirstName = N'Ольга' 
--								OR FirstName = N'Юрий'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName IN (N'Петр', N'Ольга', N'Юрий')


-- LIKE - setirlerde daha deqiq sechimler etmek uchun
-- %			- bir neche istenilen simvol
-- _			- bir istenilen simvol
-- [abc]		- gosterilen simvollardan her hansi biri
-- [a-d]		- gosterilen diapazonda simvollardan her hansi biri
-- [^abc]		- gosterilen simvollardan hech biri


--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName = N'Ольга'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'Ольга'


--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'О%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName NOT LIKE N'О%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'О%' AND LastName NOT LIKE N'М%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'_а%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'[АОД]%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'[^АОД]%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'[А-Е]%'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE LastName LIKE N'%ова'

--SELECT FirstName, LastName, Age 
--FROM Students
--WHERE FirstName LIKE N'[А-Е][д-к]%'


-- TOP(N) -  ilk N sayda sechimi goster

-- cedvelde olan ilk 5 telebe
--SELECT TOP(5) FirstName, LastName, Age 
--FROM Students

-- en cavan telebe
--SELECT TOP(1) FirstName, LastName, Age 
--FROM Students
--ORDER BY Age

-- en yashli telebe
--SELECT TOP(1) FirstName, LastName, Age 
--FROM Students
--ORDER BY Age DESC

-- OFFSET (N) ROWS - N sayda setiri buraxmaq 
-- (ORDER BY ile TOP komandasiz ishleyir)
-- A TOP can not be used in the same query or sub-query as a OFFSET
--SELECT FirstName, LastName, Age 
--FROM Students
--ORDER BY FirstName
--OFFSET(5) ROW

-- FETCH NEXT (N) ROWS ONLY - novbeti N setri goster
-- (OFFSET achar sozu ile birlikde ishleyir)
--SELECT FirstName, LastName, Age 
--FROM Students
--ORDER BY FirstName
--OFFSET(5) ROW
--FETCH NEXT (3) ROWS ONLY