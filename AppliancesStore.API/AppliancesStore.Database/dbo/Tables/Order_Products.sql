CREATE TABLE [dbo].[Order_Products] (
    [Id]        BIGINT  IDENTITY (1, 1) NOT NULL,
    [OrderId]   BIGINT  NULL,
    [ProductId] INT     NULL,
    [Quantity]  TINYINT NOT NULL,
    [Amount]    MONEY   NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Appliances] ([Id])
);

