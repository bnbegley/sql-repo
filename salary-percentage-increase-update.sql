USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Ten_Percent_Increase]    Script Date: 7/18/2019 2:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Ten_Percent_Increase]
@description nvarchar(20)
as
begin 
UPDATE Job set
salary = (salary*1.1)
where description = @description 
end
go
exec Ten_Percent_Increase 'VP'
go



