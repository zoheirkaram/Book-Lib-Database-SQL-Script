CREATE TABLE Geners (
	GenerId			int IDENTITY(1, 1) PRIMARY KEY,
	Title			varchar(50) NOT NULL
)
GO

CREATE TABLE Publishers (
	PublisherId		int IDENTITY(1, 1) PRIMARY KEY,
	Name			varchar(50) NOT NULL
)
GO

CREATE TABLE Books (
	BookId			int IDENTITY (1, 1) PRIMARY KEY,
	Title			varchar(255) NOT NULL,
	Description		varchar(500) NULL,
	ISBN			varchar(20) NOT NULL,
	GenerId			int NOT NULL FOREIGN KEY REFERENCES dbo.Geners (GenerId),
	PublisherId		int NULL FOREIGN KEY REFERENCES dbo.Publishers (PublisherId)
)
GO

CREATE TABLE Authors (
	AuthorId		int IDENTITY(1, 1) PRIMARY KEY,
	Name			varchar(100) NOT NULL
)
GO

CREATE TABLE BookAuthors (
	BookAuthorId	int IDENTITY(1, 1) PRIMARY KEY,
	BookId			int NOT NULL FOREIGN KEY REFERENCES dbo.Books (BookId),
	AuthorId		int NOT NULL FOREIGN KEY REFERENCES dbo.Authors (AuthorId)
)
GO

CREATE TABLE Images (
	ImageId			int IDENTITY(1, 1) PRIMARY KEY,
	Description		varchar(50) NULL,
	URL				varchar(255) NOT NULL,
	BookId			int NOT NULL FOREIGN KEY REFERENCES dbo.Books (BookId)
)
GO