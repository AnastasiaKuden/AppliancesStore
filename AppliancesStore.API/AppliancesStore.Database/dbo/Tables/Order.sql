CREATE TABLE [dbo].[Order] (
    [Id]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (15) NOT NULL,
    [LastName]        NVARCHAR (15) NULL,
    [Email]           NVARCHAR (30) NOT NULL,
    [Phone]           NVARCHAR (15) NOT NULL,
    [CourierDelivery] BIT           DEFAULT ((0)) NULL,
    [Address]         NVARCHAR (30) NULL,
    [TotalAmount]     MONEY         NOT NULL,
    [Date]            DATETIME2 (0) NOT NULL,
    [Processed]       BIT           DEFAULT ((0)) NULL,
    [IssuedBy]        BIT           DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

