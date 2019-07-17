Select Firstname, Lastname, Description, Salary
from Job
join Employee
	on Employee.jobid = Job.Id
	where Lastname in ('dalton', 'everington', 'gatz', 'ibanez', 'johnson')
	order by Salary;