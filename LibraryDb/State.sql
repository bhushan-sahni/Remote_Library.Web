CREATE TABLE [dbo].[State]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Active] BIT NOT NULL,
    [Country_Id] INT NOT NULL, 
    CONSTRAINT [FK_State_ToCountry] FOREIGN KEY ([Country_Id]) REFERENCES Country(Id)

)
