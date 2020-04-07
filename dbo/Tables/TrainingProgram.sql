CREATE TABLE [dbo].[TrainingProgram] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (255) NOT NULL,
    [StartDate]    DATETIME      NOT NULL,
    [EndDate]      DATETIME      NOT NULL,
    [MaxAttendees] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

