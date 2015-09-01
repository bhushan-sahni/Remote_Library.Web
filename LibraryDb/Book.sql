CREATE TABLE [dbo].[Book]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] VARCHAR(150) NOT NULL, 
    [Publisher_id] INT NOT NULL, 
    [Author_id] INT NOT NULL, 
    [Category_id] INT NOT NULL, 
    [ISBN] VARCHAR(50) NULL, 
    [Pages] INT NOT NULL, 
    [Comments] VARCHAR(150) NULL,
    CONSTRAINT [FK_Book_ToCategory] FOREIGN KEY (Category_id) REFERENCES Category(Id),
    CONSTRAINT [FK_Book_ToAuthor] FOREIGN KEY (Author_id) REFERENCES Author(Id),
    CONSTRAINT [FK_Book_ToPublisher] FOREIGN KEY (Publisher_id) REFERENCES Publisher(Id)
)
