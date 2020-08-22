CREATE TABLE [dbo].[Store_QuantityOfProducts] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [StoreId]   INT      NULL,
    [ProductId] INT      NULL,
    [Quantity]  SMALLINT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Appliances] ([Id]),
    FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id])
);

