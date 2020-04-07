CREATE TABLE [dbo].[Product] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [ProductTypeId] INT           NOT NULL,
    [CustomerId]    INT           NOT NULL,
    [Price]         MONEY         NOT NULL,
    [Title]         VARCHAR (255) NOT NULL,
    [Description]   VARCHAR (255) NOT NULL,
    [Quantity]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Product_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [FK_Product_ProductType] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductType] ([Id])
);

