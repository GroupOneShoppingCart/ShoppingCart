CREATE DATABASE ProductManager
go
use ProductManager
go
create table Products (
	id int primary key,
	name nvarchar(100),
	price float 
);
go
create table [User](
	username nvarchar(100) primary key,
	password nvarchar(100)
);
go

insert into [User](username, password) values ('admin','admin');

insert into Products(id,name,price) values (1,'Book','50000');
insert into Products(id,name,price) values (2,'Pen','20000');
insert into Products(id,name,price) values (3,'Notebook','20000');
insert into Products(id,name,price) values (4,'Dildo','20000');
insert into Products(id,name,price) values (5,'SToy','20000');
Go
Drop table Products
Go
Select* from Products

Create table [ProDetails]
(
[pro_id] int primary key references [Products](id),
[pro_name] nvarchar(100),
[description] ntext,
[price] float,
)
Go
Drop table ProDetails
Go
Insert into [ProDetails] Values(1,'Book','Day la sach, hieu ko??? ','50000')
Insert into [ProDetails] Values(2,'Pen','Day la but, hieu ko??? ','20000')
Insert into [ProDetails] Values(3,'Notebook','Day la vo, hieu ko??? ','20000')
Insert into [ProDetails] Values(4,'Dildo','Day la do choi, hieu ko??? ','20000')
Insert into [ProDetails] Values(5,'SToy','Day la do choi, hieu ko??? ','20000')
Go
Select*from [ProDetails]