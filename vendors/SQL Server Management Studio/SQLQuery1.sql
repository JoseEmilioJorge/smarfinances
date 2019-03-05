Create database Test1234
go 
use Test1234
go

create table MySalary (

ID numeric (6),
NAME varchar(20),
LASTNAME varchar(25),
SALARY numeric(8,2),
FULLNAME VARCHAR(46)
)

drop table MySalary

select * from MySalary