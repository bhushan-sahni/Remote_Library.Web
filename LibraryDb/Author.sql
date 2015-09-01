CREATE TABLE [dbo].[Author]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(100) NOT NULL, 
    [City_id] INT NOT NULL, 
    [Category_id] INT NOT NULL, 
    [Active] BIT NOT NULL,
    CONSTRAINT [FK_Author_ToCity] FOREIGN KEY (City_id) REFERENCES City(Id),
    CONSTRAINT [FK_Author_ToCategory] FOREIGN KEY (Category_id) REFERENCES Category(Id)
)
