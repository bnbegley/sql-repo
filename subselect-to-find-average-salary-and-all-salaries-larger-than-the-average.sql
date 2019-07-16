--Subselect
Select Firstname, Lastname, Description, Salary
from Employee
join Job
on job.id = JobID
where Salary > (

		Select Avg(salary) as 'Salary'
		from Employee
		join Job
		on job.id = JobID
)