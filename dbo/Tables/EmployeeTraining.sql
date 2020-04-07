CREATE TABLE [dbo].[EmployeeTraining] (
    [Id]                INT IDENTITY (1, 1) NOT NULL,
    [EmployeeId]        INT NOT NULL,
    [TrainingProgramId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeTraining_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employee] ([Id]),
    CONSTRAINT [FK_EmployeeTraining_Training] FOREIGN KEY ([TrainingProgramId]) REFERENCES [dbo].[TrainingProgram] ([Id])
);

