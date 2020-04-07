Select e.FIRSTNAME, e.LASTNAME, e.ISSUPERVISOR, e.DEPARTMENTID, d.Name FROM Employee e
LEFT JOIN DEPARTMENT d ON d.Id=e.DepartmentId
ORDER BY d.Name, e.LastName, e.FirstName;

SELECT NAME, Budget FROM Department ORDER BY Budget DESC

SELECT e.FirstName, e.LastName, e.IsSupervisor, d.Name FROM Employee e 
LEFT JOIN DEPARTMENT d ON d.Id=e.DepartmentId
WHERE e.IsSupervisor=1;

SELECT d.[Name], COUNT (e.Id) AS 'Number of Employees' FROM Department d 
LEFT JOIN Employee e ON e.DepartmentId=d.Id
Group BY d.[Name];

UPDATE Department 
SET Budget=Budget*1.2;

SELECT e.FirstName, e.LastName
FROM Employee e
LEFT JOIN EmployeeTraining et on e.Id = et.EmployeeId
WHERE et.EmployeeId IS NULL;

SELECT e.FirstName, e.LastName, COUNT (et.Id) AS 'Number of Programs per employee' from Employee e
LEFT JOIN EmployeeTraining et ON e.Id=et.EmployeeId
WHERE et.Id IS NOT NULL
Group By e.FirstName, e.LastName, et.Id;

SELECT tp.[Name], Count (et.EmployeeId) AS 'Number of Sign-ups' FROM EmployeeTraining et
LEFT JOIN TrainingProgram tp ON tp.ID=et.TrainingProgramId
GROUP BY et.EmployeeId, tp.[Name];