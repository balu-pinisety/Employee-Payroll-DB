#UC1
create database payroll_service; #Creating Data base
show databases; #Displays Data bases
use payroll_service; 

#UC2
CREATE TABLE employee_payroll ( #creates Table
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(150),
    salary DOUBLE NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id) #Primary Key To make Id unique
);
select * from employee_payroll;
#drop table employee_payroll; #To delete the table

#UC3
#Add data to Table of database
insert into employee_payroll(name,salary,start) values
('KAJAL',4500.0,'2021-02-16'),
('SATYENDRA',5500.0,'2021-04-02'),
('SHEETHAL',7500.0,'2021-05-20'),
('DILEEP',8750.0,'2021-01-17'),
('AAYUSHI',6280.0,'2021-03-07'),
('SIVA',2540.0,'2021-06-08');

#UC4
#To retrieve all data added to Database
select * from employee_payroll;

#UC5
select salary from  employee_payroll where name='AAYUSHI'; #Selecting AAYUSHI entry
#Selecting Employee from Date range
select * from employee_payroll where start between cast('2021-04-01' as date) and date(now());