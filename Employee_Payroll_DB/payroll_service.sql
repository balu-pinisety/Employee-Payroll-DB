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