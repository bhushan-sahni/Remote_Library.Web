CREATE TABLE [dbo].[Category]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Category_type_id] INT NOT NULL, 
    [Category] VARCHAR(50) NOT NULL, 
    [Active] BIT NOT NULL,
    CONSTRAINT [FK_Category_ToCategoryMaster] FOREIGN KEY (Category_type_id) REFERENCES CategoryMaster(Id)
)
