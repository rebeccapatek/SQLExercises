CREATE TABLE [dbo].[Customer] (
    [Id]             INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]      VARCHAR (55) NOT NULL,
    [LastName]       VARCHAR (55) NOT NULL,
    [CreationDate]   DATETIME     NOT NULL,
    [LastActiveDate] DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

