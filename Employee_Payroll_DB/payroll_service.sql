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
drop table employee_payroll; #To delete the table

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

#UC6 - Adds the Gender column in table and update to the name
Alter table employee_payroll add gender char(1) after name;
describe employee_payroll;
SET SQL_SAFE_UPDATES=0;
update employee_payroll set gender='M'
where name='SATYENDRA' or name='DILEEP'or name='SIVA';
update employee_payroll set gender='F'
where name='KAJAL' or name='SHEETHAL' or name='AAYUSHI';
select * from employee_payroll;

#UC7-To find Aggregate values
select salary from employee_payroll;
#To find Aggregate Sum
select sum(salary) from employee_payroll;
select sum(salary) from employee_payroll where gender='F' group by gender;
select sum(salary) from employee_payroll where gender='M' group by gender;
#To find Maximum
select max(salary) from employee_payroll;
select max(salary) from employee_payroll where gender='F' group by gender;
select max(salary) from employee_payroll where gender='M' group by gender;
#To find Minimum
select min(salary) from employee_payroll;
select min(salary) from employee_payroll where gender='F' group by gender;
select min(salary) from employee_payroll where gender='M' group by gender;
#To find Aggregate Average
select avg(salary) from employee_payroll;
select avg(salary) from employee_payroll where gender='F' group by gender;
select avg(salary) from employee_payroll where gender='M' group by gender;
#To find Count
select count(salary) from employee_payroll;
select count(salary) from employee_payroll where gender='F' group by gender;
select count(salary) from employee_payroll where gender='M' group by gender;

#UC8- To extend table by adding more columns
alter table employee_payroll add phone varchar(13),
add address varchar(200) default 'default',
add department varchar(20) not null;
#Updating column values by name
update employee_payroll set department='Marketing'
where name in ('SATYENDRA','DILEEP','KAJAL');
update employee_payroll set department='Finance'
where name in ('SHEETHAL','AAYUSHI');
update employee_payroll set department='Sales'
where name in ('SIVA');
select * from employee_payroll;