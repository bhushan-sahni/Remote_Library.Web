CREATE TABLE [dbo].[Supplier]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(100) NOT NULL, 
    [Address] VARCHAR(100) NOT NULL, 
    [City_id] INT NOT NULL, 
    [Phone] VARCHAR(50) NULL, 
    [Mobile] VARCHAR(50) NULL, 
    [Active] BIT NOT NULL, 
    [Category_id] INT NOT NULL, 
    CONSTRAINT [FK_Supplier_ToCity] FOREIGN KEY (City_id) REFERENCES City(Id),
    CONSTRAINT [FK_Supplier_ToCategory] FOREIGN KEY (Category_id) REFERENCES Category(Id)
)
