USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Job_List]    Script Date: 7/18/2019 10:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_Job_List]
	@search nvarchar(30)
AS 
BEGIN
SET @search = CONCAT('%', @search, '%');
	Select CONCAT(lastname, ', ', Firstname) as 'Name',
		j.description as 'Job', FORMAT(Salary, 'C') as Salary
	from Employee e
	join Job j
	on j.Id = e.JobId
	where e.lastname like @search or e.Firstname like @search or j.Description like @search
	order by Name;
END
GO
EXEC Employee_Job_List 'bak';
GO