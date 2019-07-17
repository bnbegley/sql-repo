Insert into Employee

Select Firstname, Lastname, Description, Salary
from Job
join Employee
	on Employee.jobid = Job.Id
	where Lastname in (
	
	SELECT Lastname from Employee where Firstname = 'Amy'
	)
	order by Salary;