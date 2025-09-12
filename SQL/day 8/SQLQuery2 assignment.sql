CREATE DATABASE STUD
USE STUD
CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');






CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');

SELECT * FROM Students2024
SELECT * FROM Students2025
SELECT * FROM Employees
SELECT * FROM Projects
SELECT * FROM Contacts

CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);


 select Name from Students2024 union
 select Name from Students2025

 select Name from Students2024 union all 
 select Name from Students2025

 select Upper (Name) from Employees AS Uppercase
 select Lower (Name) from Employees AS Uppercase

 select SUBSTRING (Name, 1,3) from Employees
  select SUBSTRING (Name, 1,3) from Employees

  select REPLACE (Department,'Finance','Accounts' )from Employees


  SELECT CONCAT (Name,' ', Department) as Name_Department from Employees

 SELECT GETDATE ()


 SELECT CONVERT ( VARCHAR(10), GETDATE(), 103) AS Date_DDMMYYY

 SELECT StartDate,EndDate,
DATEDIFF(Month, StartDate, EndDate) AS DifferenceInTime
FROM Projects

SELECT * FROM Projects
SELECT DATEADD(day, 10, EndDate) AS DateExtended FROM Projects

SELECT DATEDIFF(day, '2023-01-01', '2023-01-15') AS DayDifference;

select * from projects;

 SELECT name, DATEDIFF(day, EndDate, GETDATE()) AS Day_left
    FROM projects

SELECT CONVERT ( VARCHAR(10), GETDATE(), 103) AS Date_DDMMYYY


SELECT CAST (123.456 AS INT) AS Float_val




    


