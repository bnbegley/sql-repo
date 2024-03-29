USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Salary_List]    Script Date: 7/18/2019 11:58:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_Salary_List]
	@lowsalary int,
	@highsalary int
AS
BEGIN
	Select CONCAT(Firstname, ' _ ', lastname) as 'Name',
		j.description as 'Title', FORMAT(Salary, 'C') as salary
		from Employee e
		join Job j 
		on j.id=e.jobid
		where Salary >= @lowsalary and Salary <= @highsalary
		order by salary
	End
GO
EXEC Employee_Salary_List 95000, 130000;
GO