CREATE database Smart_meters
USE Smart_meters
/*CREATE TABLES FOR CUSTOMER AND SMART METER*/

CREATE TABLE Customer(Customer_id int , Customer_name varchar (50), Customer_Add varchar(100), Region varchar(100) )
select * from Customer
CREATE TABLE Smart_Meter_Readings(Meter_id int , Customer_id int, locations varchar(100), Installed_date varchar(50), ReadingDateTime varchar(100), Energyconsumed float )
select * from Smart_Meter_Readings

Alter table Smart_Meter_Readings
Alter column Installed_date date
Alter table Smart_Meter_Readings
Alter column ReadingDateTime datetime
Alter table Smart_Meter_Readings
Alter column Energyconsumed float 


insert into Customer values (1048 , 'Saket Mishra', 'Bellandur,Bangalore,834201', 'South')
insert into Customer values (1049, 'Shubham Burman', 'Jamshedpur,Adityapur 831101', 'North')
insert into Customer values (1050, 'Nikita Jalan', 'Chandil, Jharkhand,832101', 'East')
insert into Customer values (1051, 'Bijay Verma', 'Jamshedpur,Adityapur 640057', 'West')

select*from Customer

insert into Smart_Meter_Readings values (7038 ,1051 , 'Rooftop','2024-06-20', '2024-09-08 14:30:00', 50.0 )
insert into Smart_Meter_Readings values (7039, 1049, 'Basement','2024-03-12','2024-10-08 12:30:00', 47.0 )
insert into Smart_Meter_Readings values(7040 , 1050, 'Basement','2025-06-20','2025-08-08 15:30:00', 64.0 )
insert into Smart_Meter_Readings values (7041 , 1048, 'Basement', '2024-08-21','2024-07-08 9:30:00', 44.0)

select*from Smart_Meter_Readings

SELECT *
FROM Smart_Meter_Readings
WHERE ReadingDateTime BETWEEN '2024-01-01' AND '2024-12-31'


SELECT *
FROM Smart_Meter_Readings
WHERE Energyconsumed BETWEEN 10.0 AND 50.0


/*Average Energy consumed per reading */
SELECT AVG(Energyconsumed)
FROM Smart_Meter_Readings

/*Maximum Energy consumed in a single reading */

SELECT MAX(Energyconsumed)
FROM Smart_Meter_Readings

/*only includes reading from the current year */

SELECT *from Smart_Meter_Readings WHERE year(ReadingDateTime) = year(getdate())
