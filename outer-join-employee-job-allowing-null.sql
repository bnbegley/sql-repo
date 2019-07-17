Select Firstname, Lastname, Description, Salary
from Job
left join Employee
	on Employee.jobid = Job.Id
	where Description= 'Asst. Supervisor'
	order by Description
