CREATE TABLE [dbo].[Department] (
    [Id]     INT          IDENTITY (1, 1) NOT NULL,
    [Name]   VARCHAR (55) NOT NULL,
    [Budget] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

