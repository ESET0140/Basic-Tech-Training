CREATE DATABASE shop
USE shop
create table student (id int primary key,names varchar(50))

select * from student
insert into student values (1,'shivam')
insert into student values (1,'Raj')
insert into student values (null,'raj')
insert into student values (2,'raj',7878787)
insert into student values (2,'raj',null)

alter table student 
add number int unique

create table teachers (id int, subjects varchar(50), foreign key(id) references student (id))

insert into teachers values (1 ,'Math')
select * from teachers
select * from student

create table Users(users_id int PRIMARY KEY, email varchar(50), name varchar(50))
select * from Users
create table Books(product_id int PRIMARY KEY, book_Title varchar(50), Price varchar(50))
select * from Books
insert into Users values (1 , 'ramubhai6@gmail.com', 'Ramu')
insert into Users values (2 , 'gopal9@gmail.com', 'Gopal')
insert into Users values (3 , 'introvert@gmail.com', 'jai')
insert into Users values (4 , 'extrovert@gmail.com', 'ram')
select * from Books
select * from Users
select * from Ordes

insert into Books values (10 , 'Ramayana', '1500')
insert into Books values (20, 'How to read a book', '150')
insert into Books values (30 , '2 States', '690')
insert into Books values (40 , 'Kalyug', '300')

create table Ordes (Order_no int PRIMARY KEY, users_id int , product_sku int,  FOREIGN KEY (users_id) REFERENCES users(users_id),FOREIGN KEY (product_sku) REFERENCES Books(product_id) )

INSERT into Ordes Values (55,1,30)
INSERT into Ordes Values (56,2,10)
INSERT into Ordes Values (57,3,40)
INSERT into Ordes Values (58,4,20)

DELETE FROM Ordes WHERE Order_no = 58


select * from Books
select * from Users
select *from Ordes

select *
from Users u	
INNER JOIN Ordes o
ON u.users_id = o.users_id



select *
from Users u
FULL OUTER JOIN Ordes o
ON u.users_id = o.users_id

select *
from Users u
LEFT JOIN Ordes o
ON u.users_id = o.users_id

select *
from Users u
RIGHT JOIN Ordes o
ON u.users_id = o.users_id

INSERT INTO Users values (5,'manu@gmail.com', 'Manu')
INSERT INTO Users values (6,'sam@gmail.com', 'Sam')
INSERT INTO Users values (7,'shreyansh@gmail.com', 'Shreyansh')

INSERT INTO Books values (50, 'Learn vern',990)
INSERT INTO Books values (60, 'Bible',800)
INSERT INTO Books values (70, 'Ramayana',790)



INSERT INTO Ordes values (59, 5 ,70)
INSERT INTO Ordes values (60, 6 ,50)
INSERT INTO Ordes values (61, 7,60)

/* find all books, all the users, and all the orders */
SELECT * FROM (Books b FULL OUTER JOIN ordes o ON b.product_id = o.product_sku )
FULL OUTER JOIN Users u ON u.users_id = o.users_id

/* To find all orders*/
SELECT o.Order_no, b.product_id, b.book_Title, b.Price FROM books b FULL OUTER JOIN ordes o ON b.product_id = o.product_sku


/* find particular order who has order these books */
EXEC sp_rename 'Users.name',  'u_name', 'COLUMN'
SELECT b.Price,u.u_name, b.book_Title FROM (books b INNER JOIN Ordes o ON b.product_id = o.product_sku)
INNER JOIN Users u ON u.users_id= o.users_id WHERE b.book_Title ='Learn Vern' OR b.book_Title ='Walker' OR  B.book_Title = 'Asksar'

/* find books users has order---day 5 end */
SELECT u.users_id, u.u_name, u.email, b.book_Title FROM (Books b INNER JOIN Ordes o ON b.product_id = o.product_sku)
INNER JOIN Users u ON u.users_id=o.users_id

