-- DDL Triggers

-- DDL EVENTS
-- https://learn.microsoft.com/en-us/sql/relational-databases/triggers/ddl-events?view=sql-server-ver16

-- DDL EVENT GROUPS
-- https://learn.microsoft.com/en-us/sql/relational-databases/triggers/ddl-event-groups?view=sql-server-ver16

-- DDL trigger-lərimiz təsir sahəsindən asılı olaraq 2 yerə bölünür
-- ALL SERVER
-- DATABASE

USE [Library]

GO

CREATE TABLE MyLogs(
[Id] int PRIMARY KEY IDENTITY(1, 1),
[LoginName] nvarchar(50) NOT NULL,
[PostDate] datetime2 NULL,
[EventType] nvarchar(50) NOT NULL,
[ObjectName] nvarchar(50) NULL,
[ObjectType] nvarchar(50) NULL,
[CommandText] nvarchar(MAX) NULL
)

--CREATE TRIGGER Db_Actions
--ON DATABASE
--AFTER			DDL_TABLE_VIEW_EVENTS,
--				DDL_TRIGGER_EVENTS,
--				DDL_PROCEDURE_EVENTS,
--				DDL_FUNCTION_EVENTS
--AS
--BEGIN
--	DECLARE @login AS nvarchar(50)
--	SET @login = ORIGINAL_LOGIN()

--	DECLARE @data AS xml
--	SET @data = EVENTDATA()

--	DECLARE		@event_type AS nvarchar(50),
--				@object_name AS nvarchar(50),
--				@object_type AS nvarchar(50),
--				@command_text AS nvarchar(MAX),
--				@post_time AS datetime2

--	SET @event_type = @data.value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(50)')
--	SET @object_name = @data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'nvarchar(50)')
--	SET @object_type = @data.value('(/EVENT_INSTANCE/ObjectType)[1]', 'nvarchar(50)')
--	SET @command_text = @data.value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'nvarchar(MAX)')
--	SET @post_time = @data.value('(/EVENT_INSTANCE/PostTime)[1]', 'nvarchar(50)')

--	SET NOCOUNT ON

--	IF NOT(@event_type = N'DROP_TABLE' AND @object_name = N'MyLogs')
--		BEGIN
--			INSERT INTO MyLogs(LoginName, PostDate, EventType, ObjectName, ObjectType, CommandText)
--			VALUES(@login, @post_time, @event_type, @object_name, @object_type, @command_text)
--		END
--END

SELECT *
FROM MyLogs

--CREATE VIEW Test
--AS
--SELECT *
--FROM Books

--ALTER VIEW Test
--AS 
--SELECT [Name]
--FROM Books

--DROP VIEW Test

-- LOGON Trigger

--CREATE TRIGGER DB_Login
--ON ALL SERVER
--AFTER LOGON
--AS
--BEGIN
--	SET NOCOUNT ON
--	INSERT INTO [Library].[dbo].[MyLogs] (LoginName, PostDate, EventType)
--	VALUES(ORIGINAL_LOGIN(), SYSDATETIME(), N'LOGON')
--END

-- https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility?view=sql-server-ver16&tabs=go%2Cwindows&pivots=cs1-bash

-- DAC - dedicated administrator connection
-- sqlcmd -S server_name -U user_name -P password -d database_name -A

-- sqlcmd
-- DISABLE TRIGGER logon_trigger_name ON ALL SERVER

-- DROP TRIGGER DB_Login ON ALL SERVER

