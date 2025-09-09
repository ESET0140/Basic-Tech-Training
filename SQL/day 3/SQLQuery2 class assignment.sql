create database company
use company
create table emp (empid int, empN varchar(50),empsal varchar(10),empDept varchar (50))
select * from emp
insert into emp(empid,empN,empsal, empDept) values(109,'Abhishek','9709','Mining')
insert into emp(empid,empN,empsal, empDept) values(205,'Tarak','97093', 'Chemical')
insert into emp(empid,empN,empsal, empDept) values(809,'Nikhil','970937','Civil')
insert into emp(empid,empN,empsal, empDept) values(305,'Souvik','9709373','Electrical')
insert into emp(empid,empN,empsal, empDept) values(673,'Piyush','97093735', 'E&P')
select * from emp

