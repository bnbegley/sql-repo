Use master;
GO
DROP DATABASE IF EXISTS Sqlprs;
GO
CREATE DATABASE Sqlprs;
GO
Use Sqlprs;
GO
CREATE TABLE Users (
Id int not null primary key identity (1,1),
UserName nvarchar(30) not null unique,
Password nvarchar(30) not null,
Firstname nvarchar(30) not null,
Lastname nvarchar(30) not null,
Phone nvarchar(12),
Email nvarchar(255),
IsReviewer int not null default (1),
IsAdmin int not null default (1)
);

Insert into Users
(Username, Password, Firstname, Lastname, phone, email)
VALUES ('bnbegley', '20MAX19', 'Brailee', 'Begley', '513-435-1173', 'brail33na11@gmail.com');

Insert into Users
(Username, Password, Firstname, Lastname, phone, email)
VALUES ('bpresley', '20MAX19', 'Briana', 'Presley','513-445-4444', 'bpresley');

Insert into Users
(Username, Password, Firstname, Lastname, phone, email, IsReviewer)
VALUES ('mlindardos', '20MAX19', 'Marianne', 'Lindardos', '513-554-5554', 'mlindardos@gmail.com', 1);

Insert into Users
(Username, Password, Firstname, Lastname, phone, email, IsReviewer, IsAdmin)
VALUES ('achan', '20MAX19', 'Alex', 'Chan', '513-553-5554', 'achan@gmail.com', 1, 0);

Insert into Users
(Username, Password, Firstname, Lastname, phone, email)
VALUES ('glindmark', '20MAX19', 'Glenn', 'Lindmark', '513-556-5556', 'glindmark@gmail.com');

Insert into Users
(Username, Password, Firstname, Lastname, phone, email)
VALUES ('maggies', '20MAX19', 'Maggie', 'Schutzman', '513-557-5557', 'maggies@gmail.com');

Insert into Users
(Username, Password, Firstname, Lastname, phone, Email, IsAdmin, IsReviewer)
VALUES ('tmoore', '20MAX19', 'Titus', 'Moore', '513-559-5559', 'tmoore@gmail.com', 0, 0);

Insert into Users
(Username, Password, Firstname, Lastname, phone, email, IsAdmin)
VALUES ('jkyle', '20MAX19', 'Jesse', 'Kyle', '513-550-5550', 'jkyle@gmail.com', 0);


Create table Vendors (
Id int not null primary key identity (1,1),
Code nvarchar(30) unique,
Name nvarchar(30) not null,
Address nvarchar(30)not null,
City nvarchar(30)not null,
State nvarchar(2)not null,
Zip nvarchar(5)not null,
Phone nvarchar(12),
Email nvarchar(255)
);

Insert into Vendors 
(Code, Name, Address, City, State, Zip)
VALUES ('W123', 'Wal-mart', '857 Global Dr', 'Middletown', 'OH', '45044')

Insert into Vendors 
(Code, Name, Address, City, State, Zip)
VALUES ('B123', 'Big Lots', '987 Big Lots Dr.', 'Pocatello', 'ID', '87415')

Insert into Vendors 
(Code, Name, Address, City, State, Zip)
VALUES ('C123', 'Cabellas', '857 Cabella Dr.', 'Richmond', 'VA', '65892');


CREATE TABLE Products(
Id int not null primary key identity (1,1),
PartNbr nvarchar(30) not null unique,
Name nvarchar(30) not null,
Price decimal(11,2),
Unit nvarchar(30),
PhotoPath nvarchar(255) null,
VendorId int not null foreign key references Vendors(Id), 
);


Insert into Products
(PartNbr, Name, Price, Unit, VendorId)
VALUES (51971959, 'Amazon Echo', 178.98, '1 Ea', 3)

Insert into Products
(PartNbr, Name, Price, Unit, VendorId)
VALUES (8745687, 'Google Home', 201.98, '1 Ea', 2)

Insert into Products
(PartNbr, Name, Price, Unit, VendorId)
VALUES (19423156, 'Iphone XR', 799.99, '1 Ea', 1)

CREATE TABLE Requests(
Id int not null primary key identity (1,1),
Description nvarchar(80) not null,
Justification nvarchar(80)not null,
RejectionReason nvarchar(80),
DeliveryMode nvarchar(10) default('Pickup'),
Status nvarchar(10) not null default('NEW'),
UserId int not null foreign key references Users(Id), 
);

Insert into Requests
(Description, Justification, RejectionReason, UserId)
VALUES ('Amazon Echo', 'need to be able to control lights and computer from seat', 'not needed', 3)

CREATE TABLE RequestLines(
Id int not null primary key identity (1,1),
RequestId int not null foreign key references Requests(Id),
ProductId int not null foreign key references Products(Id),
Quantity int not null default(1)
);

Insert into RequestLines
(RequestId, ProductId, Quantity)
VALUES (1, 1, 1)

Insert into RequestLines
(RequestId, ProductId, Quantity)
VALUES (1,1,1)



Select * from Products
Select * from Vendors
Select * from Users
Select * from Requests
Select * from RequestLines

/*
Select * from Users
Select * from Vendors
Select * from Products

Create Table Product(
Id int not null primary key identity (1,1)
);
*/