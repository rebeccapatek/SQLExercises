CREATE TABLE [dbo].[Employee] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (55) NOT NULL,
    [LastName]     VARCHAR (55) NOT NULL,
    [DepartmentId] INT          NOT NULL,
    [IsSupervisor] BIT          DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeDepartment] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id])
);

