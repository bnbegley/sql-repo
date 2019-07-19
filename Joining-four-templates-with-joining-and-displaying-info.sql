/*Create Table Assessments (
	Id int not null primary key identity (1,1),
	Technology nvarchar(30),
	NumberofQuestions int,
)
^can make these NOT NULL for Technology and NumberofQuestions and Greg made his NumberofQuestions default to 
10 since only Git needed needed the 5 questions and he could set that.

ex:
CREATE TABLE Assessments(
Id int not null primary key identity(1,1),
Technology nvarchar(30) not null,
NumberofQuestions int not null default 10
);

Then 
INSERT Into Assessments (Technology, NumberofQuestions) VALUES ('Git', 5);
INSERT into Assessments (Technology) VALUES ('SQL')
etc.

Select * from Assessments

Insert into Assessments
(Technology, NumberofQuestions)
VALUES ('Git', 5)

Insert into Assessments
(Technology, NumberofQuestions)
VALUES('SQL', 10)

Insert into Assessments
(Technology, NumberofQuestions)
VALUES('C#', 10)

Insert into Assessments
(Technology, NumberofQuestions)
VALUES('JavaScript', 10)

Insert into Assessments
(Technology, NumberofQuestions)
VALUES('Angular', 10)

CREATE TABLE StudentAssessmentScores(
	Id int not null primary key identity(1,1),
	StudentID int not null foreign key references Student(Id),
	AssessmentId int not null foreign key references Assessments(Id),
	NbrCorrect int not null 
);



SELECT * from Student
SELECT * from Bootcamps
Select * from Assessments


Insert into StudentAssessmentScores (StudentID, AssessmentId, NbrCorrect) VALUES (11, 1, 6); --Git
Insert into StudentAssessmentScores (StudentID, AssessmentId, NbrCorrect) VALUES (11, 2, 9); --SQL
Insert into StudentAssessmentScores (StudentID, AssessmentId, NbrCorrect) VALUES (11, 3, 10); --C#/Java
Insert into StudentAssessmentScores (StudentID, AssessmentId, NbrCorrect) VALUES (11, 4, 7); --JS
Insert into StudentAssessmentScores (StudentID, AssessmentId, NbrCorrect) VALUES (11, 5, 11); --NG
GO

*/

SELECT CONCAT(Lastname, ', ', Firstname) as 'Name', ClassName as 'Bootcamp',
		Technology as 'Assessment', NbrCorrect, NumberofQuestions, 
		CAST(((CAST(NbrCorrect as decimal) / CAST(NumberofQuestions as decimal)) *100) as int) as 'Score(%)'
		--This is taking the numbers and turning them into decimals and then back into a normal integer to allow for 
		--the best looking Score - this will need to happen a lot for *division* 
from Student s
	Join StudentAssessmentscores sas
		on s.Id = sas.studentId
	join Assessments a 
		on a.Id = sas.AssessmentId
	Join Bootcamps b
		on b.id = s.bootcampId
	Where firstname = 'Jane'
	--no others were showing in the table even when I didn't have 'where firstname='Jane'' until
	--i added more people to the StudentAssessmentScores table

