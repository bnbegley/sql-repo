USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_First_Name]    Script Date: 7/18/2019 2:07:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_First_Name]
@searchname nvarchar(30)
as
BEGIN
SET @searchname = CONCAT('%', @searchname,'%')
Select CONCAT(Firstname, ' ', Lastname) as 'Name'
from Employee
where Firstname like @searchname or Lastname like @searchname
Order by Firstname
END
go
Exec Employee_First_Name 'ba'
GO