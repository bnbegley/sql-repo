Select Firstname, Lastname, Description, Salary, 'Yes' as 'SR. EXEC'
from Job
left join Employee
	on Employee.jobid = Job.Id
	where Description = 'President' or Description = 'VP'
UNION
	Select Firstname, Lastname, Description, Salary, 'No' as 'SR. EXEC'
from Job
left join Employee
	on Employee.jobid = Job.Id
	where NOT(Description = 'President' or Description = 'VP')
	order by "SR. EXEC" Desc

	djiosgijriwojiw