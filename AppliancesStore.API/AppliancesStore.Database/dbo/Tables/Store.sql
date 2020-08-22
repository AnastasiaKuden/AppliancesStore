CREATE TABLE [dbo].[Store] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [CityId]  INT           NULL,
    [Name]    NVARCHAR (20) NOT NULL,
    [Address] NVARCHAR (30) NOT NULL,
    [Phone]   NVARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id])
);

