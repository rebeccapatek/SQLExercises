CREATE TABLE [dbo].[Order] (
    [Id]            INT IDENTITY (1, 1) NOT NULL,
    [CustomerId]    INT NOT NULL,
    [PaymentTypeId] INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [FK_Order_Payment] FOREIGN KEY ([PaymentTypeId]) REFERENCES [dbo].[PaymentType] ([Id])
);

