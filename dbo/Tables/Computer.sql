CREATE TABLE [dbo].[Computer] (
    [Id]              INT          IDENTITY (1, 1) NOT NULL,
    [PurchaseDate]    DATETIME     NOT NULL,
    [DecomissionDate] DATETIME     NULL,
    [Make]            VARCHAR (55) NOT NULL,
    [Manufacturer]    VARCHAR (55) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

