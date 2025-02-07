-- Create table

/*
	Data types
	https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16

	CREATE TABLE
	https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql?view=sql-server-ver16

	ALTER TABLE 
	https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-table-transact-sql?view=sql-server-ver16

	DROP TABLE
	https://learn.microsoft.com/en-us/sql/t-sql/statements/drop-table-transact-sql?view=sql-server-ver16
*/

/*
	Constraints - məhdudiyyətlər
		PRIMARY KEY
		IDENTITY (seed, incremet)
		UNIQUE(column_name)
		DEFAULT(value)
		CHECK(condition)
		NULL/NOT NULL
		FOREIGN KEY

		Prefiks:
			+ "PK_"		- For PRIMARY KEY
			+ "FK_"		- For FOREIGN KEY
			+ "DF_"		- For DEFAULT
			+ "CK_"		- For CHECK
			+ "UQ_"		- For UNIQUE
*/

USE [master]

GO

CREATE DATABASE [MiniInsta]

GO

USE [MiniInsta]

GO

CREATE TABLE [Users](
[Id] int IDENTITY(1, 1) NOT NULL,
[Login] nvarchar(25) NOT NULL,
[Password] nvarchar(50) NOT NULL,
[IsOpen] bit NOT NULL DEFAULT(1),
CONSTRAINT PK_Users PRIMARY KEY([Id]),
CONSTRAINT CK_Login CHECK([Login] != N''),
CONSTRAINT CK_Password CHECK([Password] != N''),
CONSTRAINT UQ_Login UNIQUE([Login])
)

GO

CREATE TABLE [Posts]
(
[Id] int IDENTITY(1, 1) NOT NULL,
[IdUser] int NOT NULL,
[Date] datetime2(7) NOT NULL DEFAULT(SYSDATETIME()),
[Text] nvarchar(MAX) NULL,
[ImagePath] nvarchar(MAX) NOT NULL,
CONSTRAINT PK_Posts PRIMARY KEY([Id]),
CONSTRAINT FK_Posts_Users FOREIGN KEY([IdUser]) REFERENCES [Users]([Id])
						ON DELETE CASCADE
						ON UPDATE CASCADE
)

-- [ ON DELETE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]
-- [ ON UPDATE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ]

GO

CREATE TABLE [Tags]
(
[Id] int IDENTITY(1, 1) NOT NULL,
[Tag] nvarchar(100) NOT NULL,
CONSTRAINT PK_Tags PRIMARY KEY([Id]),
CONSTRAINT CK_Tags_Tag CHECK([Tag] != N'')
)

GO

CREATE TABLE [PostsTags]
(
[IdPost] int NOT NULL,
[IdTag] int NOT NULL,
CONSTRAINT FK_PostsTags_Post FOREIGN KEY([IdPost]) REFERENCES [Posts]([Id])
						ON DELETE NO ACTION
						ON UPDATE CASCADE,
CONSTRAINT FK_PostsTags_Tag FOREIGN KEY([IdTag]) REFERENCES [Tags]([Id])
						ON DELETE NO ACTION
						ON UPDATE CASCADE,
)

GO

ALTER TABLE [Users]
ADD [Gender] bit NOT NULL DEFAULT(1)

GO

ALTER TABLE [Users]
ADD [BirthDate] datetime2(7) NULL

GO

ALTER TABLE [Users]
ADD CONSTRAINT CK_Users_BirthDate CHECK([BirthDate] >= '19900101' )

GO

ALTER TABLE [Users]
DROP CONSTRAINT CK_Users_BirthDate

GO

ALTER TABLE [Users]
ADD CONSTRAINT CK_Users_BirthDate 
			CHECK([BirthDate] >= '19900101' AND [BirthDate] <= SYSDATETIME())


--DROP TABLE [Posts]

--DROP DATABASE MiniInsta