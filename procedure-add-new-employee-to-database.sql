USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Insert_New_Employee]    Script Date: 7/18/2019 12:19:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Insert_New_Employee]
	@firstname nvarchar(30),
	@lastname nvarchar(30),
	@job nvarchar(30)
AS
BEGIN
	DECLARE @jobid int;

	SELECT @jobid = id from Job where description = @job;

	INSERT into Employee (Firstname, Lastname, JobId)
		VALUES (@firstname, @lastname, @jobid)
END
GO
EXEC Insert_New_Employee @firstname = 'John', @lastname = 'Doe', @job = 'Manager';
GO

Select * from Employee