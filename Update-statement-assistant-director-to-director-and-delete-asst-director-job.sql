


update Employee set
jobId = (select Id from Job where Description = 'Director')
where jobId = (select Id from Job where Description = 'Asst Director')

select id, firstname, lastname, jobid
from Employee
where JobId = (select Id from Job where Description = 'Asst Director')

--select * from Job
delete from job
where Id = (select Id from Job where Description = 'Asst Director')