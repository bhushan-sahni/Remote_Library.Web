CREATE TABLE [dbo].[City]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [State_id] INT NOT NULL, 
    [Active] BIT NOT NULL ,
    CONSTRAINT [FK_City_ToState] FOREIGN KEY (State_id) REFERENCES State(Id)
)
