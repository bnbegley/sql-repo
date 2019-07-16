-- Join veiw Employee/Job showing salary
--Sorting by salary and last name
Select CONCAT(Lastname, ', ', Firstname) as 'Name', Description, 
	FORMAT(Salary, 'C') as Salary
from Employee
join Job
	on JobID = Job.Id
order by Firstname, Description desc;
