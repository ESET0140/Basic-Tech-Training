create database society
use society
create table apt (flat_no int, Names varchar(50),Phone_no varchar(10))
select * from apt
insert into apt (flat_no,Names,Phone_no)values(1,'Tarak','9709373578')
select * from apt
update apt set flat_no = '69' where flat_no = '1'
Delete from apt where flat_no=69
select * from apt


exec sp_help apt
exec sp_rename 'apt', 'society'
select * from society
exec sp_rename 'stay.Phone_no','mobile_no'

exec sp_rename 'society', 'stay'
select * from stay
exec sp_help stay
alter table stay
drop column mobile_no
alter table stay
Add mobile_no varchar(100)
