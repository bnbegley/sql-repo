--Group by (segmenting groupped data)
--only summary functions or columns mentioned in group by can be included in "Select"
SELECT Description,  Count (*) as 'Count', Format(SUM(salary), 'C') as 'Total Salary'
from Employee
join Job
	on JobID = Job.Id
	Group by Description
	Having sum(Salary) <= 250000
	order  by 'Total Salary' desc
	

