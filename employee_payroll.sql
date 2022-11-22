/* employee_payroll_service */
#UC1
create database employee_payroll_service;
use employee_payroll_service;
#UC2
create table employee_payroll(
id int auto_increment,
name varchar(30),
salary double not null ,
start date not null ,
primary key(id)
);
#UC3
insert into employee_payroll(name,salary,start)
values("Rutika",344511,"2022-08-23");

#UC4
select * from employee_payroll;


#UC5
select * from employee_payroll
where name = 'Rutik';
select * from employee_payroll
where start between cast('2022-08-01'as date) and date(now());
 
 #UC6
 alter table employee_payroll add gender varchar(10) after name;
 update employee_payroll set gender = "male" where id = 1;
 update employee_payroll set gender = "male" where id = 2;
 update employee_payroll set gender = "male" where id = 3;
 update employee_payroll set gender = "female" where id = 4;
  
  #UC7
  select sum(salary) from employee_payroll
  where gender = "male" group by gender;
   select max(salary) from employee_payroll
  where gender = "male" group by gender;
   select avg(salary) from employee_payroll
  where gender = "male" group by gender;
   select min(salary)  from employee_payroll
  where gender = "male" group by gender;
    select count(id)  from employee_payroll
  where gender = "male" group by gender;
  select count(id)  from employee_payroll
  where gender = "female" group by gender;
 
 #UC8
  alter table employee_payroll add employee_phone int after gender;
 alter table employee_payroll add address varchar(30) after employee_phone;
  alter table employee_payroll add department varchar(30) not null after address;
 update employee_payroll set department = "Backend" where id = 1;
 update employee_payroll set department = "AI/ML" where id = 2;
 update employee_payroll set department = "Developer" where id = 3;
 update employee_payroll set department = "ITI" where id = 4;
  update employee_payroll set address = "Mumbai" where id = 1;
 update employee_payroll set address = "Lalbaug" where id = 2;
 update employee_payroll set address = "Thane" where id = 3;
 update employee_payroll set address = "Dadar" where id = 4;
update employee_payroll set employee_phone = 8392320 where id = 1;
 update employee_payroll set employee_phone = 9209029 where id = 2;
 update employee_payroll set employee_phone = 7774244 where id = 3;
 update employee_payroll set employee_phone = 9848300 where id = 4;
select * from employee_payroll;

#UC9
alter table employee_payroll add basic_pay int after salary;
alter table employee_payroll add deductions int after basic_pay;
alter table employee_payroll add taxable_pay int after deductions;
alter table employee_payroll add net_pay int after deductions;
alter table employee_payroll add income_tax int after net_pay;
update employee_payroll set basic_pay = 92090 where id < 10;
update employee_payroll set income_tax = 920 where id < 10;
update employee_payroll set taxable_pay = 1920 where id < 10;
update employee_payroll set net_pay = 60000 where id = 1 ;
update employee_payroll set net_pay = 68000 where id = 2 ;
update employee_payroll set net_pay = 80000 where id = 3 ;
update employee_payroll set net_pay = 56000 where id = 4 ;
update employee_payroll set deductions = 5600 where id < 5;
update employee_payroll set deductions = 6800 where id < 3 ;
insert into employee_payroll(name,department,salary,start) value("Terisca","HR",78110,12/09/11) ;
#UC10
update employee_payroll set  salary = 86363,basic_pay=69092,income_tax=12300,net_pay=60999,deductions=13445,employee_phone = 8392320,department = "HR",address ='Banglore'
where id = 5;
/* ER diagram created */
