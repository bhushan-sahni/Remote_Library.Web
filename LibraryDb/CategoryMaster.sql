CREATE TABLE [dbo].[CategoryMaster]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Category_Type] VARCHAR(50) NOT NULL, 
    [Active] BIT NOT NULL
)
