begin transaction;

insert into Job (Description, Salary) values ('TEST', 1000000);


rollback; 

select * from Job order by Id desc;

begin transaction;