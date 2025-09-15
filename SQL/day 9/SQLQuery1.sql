
--Create procedure retrieve_data
--as
--begin
--select * from student

--end

--exec retrieve_data

--DROP PROCEDURE retrieve_data

--create procedure Shop

--@emp_id int
--as 
--begin
--select*from employee where emp_id = 1

--end
--exec check

select*from Employee
CREATE PROCEDURE CheckEmpSalary
    @Emp_id INT
AS
BEGIN
    DECLARE @salary INT;

    SELECT @salary = salary
    FROM Employee
    WHERE emp_id = @Emp_id;

    IF @Salary >= 50000
        PRINT 'High Salary Employee';
    ELSE IF @Salary >= 30000
        PRINT 'Medium Salary Employee';
    ELSE
        PRINT 'Low Salary Employee';
END

exec CheckEmpSalary @Emp_id= 104

select*from Books
CREATE TRIGGER trg_AfterInsert_Students
ON Books
AFTER INSERT
AS 
BEGIN

     PRINT 'A new books record has been inserted';
END;

INSERT INTO Books values(50,'bomboza',1900)