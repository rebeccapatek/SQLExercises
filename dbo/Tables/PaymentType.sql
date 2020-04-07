CREATE TABLE [dbo].[PaymentType] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [AcctNumber] VARCHAR (55) NOT NULL,
    [Name]       VARCHAR (55) NOT NULL,
    [CustomerId] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PaymentType_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id])
);

