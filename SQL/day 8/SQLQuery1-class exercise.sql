
CREATE TABLE Employee8(emp_id int,f_name varchar (50))
 INSERT INTO Employee8 values (4,'Akash');
 INSERT INTO Employee8 values (5,'Bikash')
 INSERT INTO Employee8 values (100,'Jan')
 INSERT INTO Employee8 values (102,'Michael')
 INSERT INTO Employee8 values (103,'Angela')
 INSERT INTO Employee8 values (104,'Kelly')


 select *from employee 
 select *from Employee8

 		 /*  Union - without duplicates*/

 select emp_id from Employee8 union
 select emp_id from Employee

  		 /*  Union all - with duplicates*/
 select emp_id from Employee8 union all
 select emp_id from Employee

   		 /* Upper - converts letter to uppercase */
 select Upper ('David') from Employee AS Uppercase
 

   /* Lower - converts letter to Lowercase */
  select lower ('David') from Employee AS Lowercase

     /* Lower - char count */
  select len ('f_name') from Employee8

   /* SUBSTRING - break the characters */
  select SUBSTRING ('David',2,4) as David
  select SUBSTRING (first_name, 2,4) from employee

  select REVERSE (first_name) from employee

  /* Replace - Replace the data */
  select REPLACE ('Shivam likes tea', 'tea','coffee') as replaced
  select REPLACE (first_name,'David','Riya' )from employee



SELECT CONCAT ('Shivam dont',' _ ', 'like EV') as hell
SELECT CONCAT (first_name,' ', last_name) as Names from Employee


SELECT CAST ('5000' AS INT) AS salary
SELECT CAST (salary AS float) from Employee
SELECT CAST (emp_id AS float) from Employee

select *from employee 
SELECT GETDATE ()
 /*  BRITISH DATE FORMAT 103,102,101*/
 SELECT CONVERT ( VARCHAR(10), GETDATE(), 103) AS Date_DDMMYYY
 /*  What is stuff??*/
