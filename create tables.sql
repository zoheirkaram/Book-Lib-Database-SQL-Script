CREATE DATABASE BookLib;
GO

USE [BookLib]
GO

CREATE TABLE Genres (
	GenreId			int IDENTITY(1, 1) PRIMARY KEY,
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
	GenerId			int NOT NULL FOREIGN KEY REFERENCES dbo.Genres (GenreId),
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

SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (1, N'Humanities')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (2, N'Novel')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (3, N'Science Fiction')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (4, N'Fantasy')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (5, N'Thriller')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (6, N'Humor')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (7, N'Biography')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (8, N'History')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (9, N'Children')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (10, N'Food')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (11, N'Art & Photography')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (12, N'Travel')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (13, N'Religion')
GO
INSERT [dbo].[Genres] ([GenreId], [Title]) VALUES (14, N'Technology')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Publishers] ON 
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (1, N'Thames & Hudson')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (2, N'Penguin Random House')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (3, N'Hachette Livre')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (4, N'Harper Collins')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (5, N'Macmillan Publishers')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (6, N'Simon & Schuster')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (7, N'Wiley')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (8, N'Scholastic Corporation')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (9, N'Pearson')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (10, N'Springer Nature')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (11, N'Bloomsbury Publishing')
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name]) VALUES (12, N'Random House Worlds')
GO
SET IDENTITY_INSERT [dbo].[Publishers] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (1, N'1984', N'A dystopian classic about a totalitarian society', N'9780451524935', 1, 2)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (2, N'To Kill a Mockingbird', N'A story about racism in the Deep South', N'9780061120084', 2, 4)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (3, N'The Catcher in the Rye', N'A coming-of-age novel about a rebellious teenager', N'9780316769488', 2, 6)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (4, N'The Great Gatsby', N'A Jazz Age tale of love and excess', N'9780743273565', 2, 6)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (5, N'Harry Potter and the Philosopher''s Stone', N'The first book in the beloved series about a young wizard', N'9780747532743', 4, 11)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (6, N'The Lord of the Rings', N'A high fantasy epic about a quest to destroy a powerful ring', N'9780544003415', 4, 6)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (7, N'The Da Vinci Code', N'A thriller about a religious mystery', N'9780385504201', 5, 3)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (8, N'The Hunger Games', N'A YA dystopian novel about a fight-to-the-death competition', N'9780439023528', 4, 8)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (9, N'The Diary of a Young Girl', N'The personal diary of a young Jewish girl during World War II', N'9780553296983', 7, 3)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (10, N'The Hitchhiker''s Guide to the Galaxy', N'A humorous science fiction adventure', N'9780345391803', 6, 1)
GO
INSERT [dbo].[Books] ([BookId], [Title], [Description], [ISBN], [GenreId], [PublisherId]) VALUES (11, N'The Hobbit', N'Bilbo Baggins, a hobbit, joins dwarves on a quest to reclaim their stolen treasure from a dragon.', N'9780345445605', 4, 12)
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (1, N'George Orwell')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (2, N'Harper Lee')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (3, N'J.D. Salinger')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (4, N'F. Scott Fitzgerald')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (5, N' J.K. Rowling')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (6, N'J.R.R. Tolkien')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (7, N'Dan Brown')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (8, N'Suzanne Collins')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (9, N'Anne Frank')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (10, N'Douglas Adams')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (11, N'Jane Austen')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (12, N'Paulo Coelho')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (13, N'Stieg Larsson')
GO
INSERT [dbo].[Authors] ([AuthorId], [Name]) VALUES (14, N'Khaled Hosseini')
GO
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[BookAuthors] ON 
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (4, 4, 4)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (5, 5, 5)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (8, 8, 8)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (9, 9, 9)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (10, 10, 11)
GO
INSERT [dbo].[BookAuthors] ([BookAuthorId], [BookId], [AuthorId]) VALUES (11, 11, 6)
GO
SET IDENTITY_INSERT [dbo].[BookAuthors] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (1, N'Front', N'https://m.media-amazon.com/images/I/41aM4xOZxaL._SX277_BO1,204,203,200_.jpg', 1)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (2, N'Front', N'https://i5.walmartimages.com/asr/24582141-97d9-4850-a913-248bbbf172ed.5a1e811dfaca7bbcea883fd2441a07db.jpeg', 2)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (3, N'Front', N'https://i5.walmartimages.com/asr/8a0c3fbd-b883-4132-b5a4-733d5e98f730.58b71e22db0d7c4a0ed729257f019983.jpeg', 3)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (4, N'Front', N'https://i5.walmartimages.com/asr/d751c10d-0838-4d8b-9d3a-d211629dbaec.25eec2465d67923e6819ab6e971a532c.jpeg', 4)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (5, N'Front', N'https://i5.walmartimages.com/asr/58c1ddeb-78f8-4429-8e57-f8a442d91e03.6f9c9e22d3e3e82fecd3fd9e3b33e11d.jpeg', 5)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (6, N'Front', N'https://i5.walmartimages.com/asr/2c9e1a50-4eab-4f9f-903d-2e8d8b471a9c.49c044af1a43e112fa8e3c133f721ee4.jpeg', 6)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (7, N'Front', N'https://i5.walmartimages.com/asr/5b213499-c92e-4dc4-ae57-cae8a9729caa.a23092eb942523db723c1f703aaff7a2.jpeg', 7)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (8, N'Front', N'https://i5.walmartimages.com/asr/82f79d0b-1dc7-49a3-9108-9e5a85b79b48.a2b492be1562aa166e15d2869d20089f.jpeg', 8)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (9, N'Front', N'https://i5.walmartimages.com/asr/79496dd7-6f49-45b5-8cc1-3badbaf7bbe8.3d6c0abda5d2ae88a73f06d1fbc3d25b.jpeg', 9)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (10, N'Front', N'https://i5.walmartimages.com/asr/8e71d4f5-2cc7-40c5-ade6-8da0cabeda75.9e5753739fac327fdf852b71acad3092.jpeg', 10)
GO
INSERT [dbo].[Images] ([ImageId], [Description], [URL], [BookId]) VALUES (11, N'Front', N'https://i5.walmartimages.com/asr/20589ad0-9853-45c6-ae43-98299172053b_1.bfd94df5fd55ca1a05115f402a94432a.jpeg', 11)
GO
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
