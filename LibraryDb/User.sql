CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Password] VARCHAR(50) NOT NULL, 
    [Catergory_Id] INT NOT NULL,
    CONSTRAINT [FK_User_ToCategory] FOREIGN KEY (Category_id) REFERENCES Category(Id)
)
