DECLARE	@LowSalary int;
DECLARE @HighSalary int;

SET @LowSalary = 90000;
SET @HighSalary = 120000;

Select Firstname, Lastname, Description, Salary
from Job
join Employee
	on Employee.jobid = Job.Id
	where Salary >= @LowSalary and Salary < @HighSalary;
	