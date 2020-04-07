CREATE TABLE [dbo].[ComputerEmployee] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [EmployeeId]   INT      NOT NULL,
    [ComputerId]   INT      NOT NULL,
    [AssignDate]   DATETIME NOT NULL,
    [UnassignDate] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComputerEmployee_Computer] FOREIGN KEY ([ComputerId]) REFERENCES [dbo].[Computer] ([Id]),
    CONSTRAINT [FK_ComputerEmployee_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employee] ([Id])
);

