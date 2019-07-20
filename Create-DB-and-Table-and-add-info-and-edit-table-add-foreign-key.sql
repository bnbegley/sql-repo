--CREATE DATABASE BootcampDb;
/*
CREATE TABLE Student (
	Id int not null primary key identity(1, 1),
	FirstName nvarchar(30) not null,
	LastName nvarchar(50) not null,
	Email nvarchar(255) null,
	Phone nvarchar(10) null,
	DateEnrolled DateTime not null default getdate()

);

Insert into Student (FirstName, LastName)
Values ('Brailee', 'Begley')


Select * from Student


Insert into Student
(FirstName, LastName, Email, Phone)
Values ('Alex', 'Chan', 'frozenchanana@gmail.com', '5135605531');

Insert into Student
(FirstName, LastName, Email, Phone)
Values ('Briana', 'Presley', 'presley.briana@gmail.com', '5132549807');

Insert into Student
(FirstName, LastName, Email, Phone)
Values ('Glenn', 'Lindmark', 'lindmark421@gmail.com', '5134849323');

Insert into Student
(FirstName, LastName, Email, Phone)
Values ('Jesse', 'Kyle', 'jkylecarpentry@gmail.com', '5136551990');

Insert into Student
(FirstName, LastName, Email, Phone)
Values ('Maggie', 'Schutzman', 'maggieschutzman2@gmail.com', '8594797837');

Insert into Student
(FirstName, LastName, Email, Phone)
Values ('Marianne', 'Linardos', 'mlinardos.edu@gmail.com', '5137858178');

Insert into Student
(FirstName, LastName)
Values ('Jane', 'Doe');


Create table Bootcamps
(
Id int primary key identity (1, 1),
ClassName nvarchar(80) not null
);

SELECT * from Bootcamps


INSERT INTO	Bootcamps (ClassName) VALUES ('.Net');
INSERT INTO	Bootcamps (ClassName) VALUES ('Java');

select * from Bootcamps


ALTER table Student
	Add BootcampId int null
	foreign key references Bootcamps(Id);

	




UPDATE Student
SET BootcampId = (select id from bootcamps where description = Java)
where Firstname = 'Jane';


UPDATE Student
SET BootcampId = (select id from bootcamps where description = .Net)
where NOT(Firstname = 'Jane');

Select * from Student
Select * from Bootcamps
*/

UPDATE Student
SET email = 'thisisanemail@email.com'
where firstname = 'Jane'


Select * from Student