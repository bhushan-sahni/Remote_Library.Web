CREATE TABLE [dbo].[Publisher]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(100) NOT NULL, 
    [Address] VARCHAR(100) NULL, 
    [City_id] INT NOT NULL, 
    [Telephone] VARCHAR(50) NULL, 
    [Mobile] VARCHAR(50) NULL, 
    [Active] BIT NOT NULL, 
    [Category_id] INT NOT NULL,
    CONSTRAINT [FK_Publisher_ToCity] FOREIGN KEY (City_id) REFERENCES City(Id),
    CONSTRAINT [FK_Publisher_ToCategory] FOREIGN KEY (Category_id) REFERENCES Category(Id)
)
