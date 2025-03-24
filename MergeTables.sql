/*MERGE is useful for performing insert, update, or delete operations 
in a single statement. It can be more efficient for synchronizing tables.*/
use datastore
go
/*Createing Source and taget tables with examples*/
create table dbo.SourceTable
(id int identity(1,1) primary key, FirstName varchar(30), 
LastName varchar(30), email nvarchar(80))

create table dbo.TargetTable
(id int identity(1,1) primary key, FirstName varchar(30), 
LastName varchar(30), email nvarchar(80))

/*inserting Source and taget tables with non synch examples*/
insert into dbo.SourceTable
values('Alex','Richardson','RichardsonA@easycoding.com'),
('Steve','Ericson','EricsonS@easycoding.com'),
('John','Pelite','PeliteJ@easycoding.com'),
('Maxi','Thompson','ThompsonM@easycoding.com')

insert into dbo.targettable
values('Alex','Richardson','RichardsonA@easycoding.com'),
('Steve','Ericson','EricsonS@easycoding.com'),
('John','Pelite','')

/*Lets check results*/
select * from dbo.sourcetable
select * from dbo.targettable

/*Now lets write merge query to synch tables
we can update if data is missing in any coloumns
we can insert data for missing rows*/
Merge into dbo.targettable as t
using dbo.sourcetable as s on t.id=s.id
when matched then
	update set t.email=s.email 
	/*Joining condition since email is missing*/
when not matched then 
	insert (firstname, lastname, email)
	values (s.firstname, s.lastname, s.email);
	/*insert since data rows are missing*/