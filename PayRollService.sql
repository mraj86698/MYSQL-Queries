Create database payroll_service;
use payroll_service;
show databases;

show tables;
create table employee_payroll (id int unsigned NOT NULL auto_increment,name varchar(150) NOT NULL,salary double NOT NULL,start date NOT NULL,primary key(id));

select * from employee_payroll;
drop table employee_payroll;
desc employee_payroll;
insert into employee_payroll(name,salary,start) values("Bill",10000.00,"2018-02-03"),("Mark",20000.00,"2019-11-13"),("Charlie",30000.00,"2020-05-21");
select salary from employee_payroll where name="Bill";
delete from employee_payroll where name ="Bill";
select * from employee_payroll where start between cast("2019-01-03" As Date) and date(now());
insert into employee_payroll (name,salary,start) value('Charlie',78000.00,'2018-01-09');
alter table employee_payroll Add gender char(1) after name;
update employee_payroll set gender='M' where name = 'Bill'or name='Charlie';
update employee_payroll set gender='F' where name = 'Mark';
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'M' ;
select avg(salary) from employee_payroll where gender= 'F';
select avg(salary) from employee_payroll where gender= 'M';
select min(salary) from employee_payroll where gender= 'M';
select max(salary) from employee_payroll where gender= 'F';
select count(gender) from employee_payroll where gender='F';

select count(gender) from employee_payroll where gender= 'M' group by gender;
select count(gender) from employee_payroll where gender= 'F' group by gender;

SELECT SUM(salary) FROM employee_payroll WHERE gender = 'M'  group by gender;
select avg(salary) from employee_payroll where gender= 'F' group by gender;
select avg(salary) from employee_payroll where gender= 'M' group by gender;
select min(salary) from employee_payroll where gender= 'M' group by gender;
select max(salary) from employee_payroll where gender= 'F' group by gender;
ALTER TABLE employee_payroll ADD COLUMN `phone` long  after `start`,ADD COLUMN `address` varchar(120)  after `phone`,ADD COLUMN `department` varchar(30) not null after `address`;
insert into employee_payroll (id,name,gender,salary,start,phone,address,department) value(10,'Charlie','M',78000.00,'2020-01-09',7401282954,'trl','English');
ALTER TABLE employee_payroll ADD COLUMN `Basic pay` double  after `department`, ADD COLUMN `deduction` double  after `Basic pay`, ADD COLUMN `Taxable pay` double;
ALTER TABLE employee_payroll ADD COLUMN `Income Tax` double  after `Taxable Pay`, ADD COLUMN `Net Pay` double;
insert into employee_payroll (id,name, gender,salary, start, phone, address, department, basic pay, deduction, taxable pay, income tax, net pay) values (06,'Terisa', 'F',650000.00, '2019-03-03',7402181954,'trl', 'Sales and Marketing', 390000, 2000, 1000, 270, 1500);
 SELECT count(*) AS TOTALNUMBEROFTABLES FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'payroll_service';