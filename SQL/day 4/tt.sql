create database kompany
use kompany
create table Employ(ID int, Names varchar(60), Dept varchar(50),Salary float)
select * from Employ
insert into Employ(ID,Names,Dept,Salary)values(1,'Sharath','HR','200000')
insert into Employ(ID,Names,Dept,Salary)values(2,'Akash','IT','100000')
insert into Employ(ID,Names,Dept,Salary)values(3,'Abhishek','Senior HR','250000')
insert into Employ(ID,Names,Dept,Salary)values(4,'Kunal','Marketing','400000')
insert into Employ(ID,Names,Dept,Salary)values(5,'Sowmya','IT','100000')

update Employ set Salary = Salary + Salary*0.40 where Names = 'Sowmya'
Alter table Employ
Add adress varchar(250)
Alter table Employ
Alter column Salary float
exec sp_help Employ
alter table Employ 
add phone_no varchar(10)
Alter table Employ
Alter column Salary varchar(50)
Alter table Employ
drop column adress 
update Employ set phone_no='9709376589' where ID='2'
truncate table employ
select * from employ
exec sp_rename 'employ.Phone_no','mobile_no'
update Employ set phone_no='97093765' where ID='1'
