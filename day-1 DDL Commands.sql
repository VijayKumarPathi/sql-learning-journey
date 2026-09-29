show databases;
create database tcs; -- 1
use tcs; 
create table thopstech(id int, name varchar(50), age int, marks int); -- 2
show tables;
select * from thopstech;
desc thopstech;
alter table thopstech add salary int first; -- 4
alter table thopstech add dob date after name; -- 5
alter table thopstech drop age; -- 6
alter table thopstech modify id smallint; -- 7
alter table thopstech rename column marks to percentage; -- 8
alter table thopstech add phone_number bigint, drop percentage; -- 9
alter table thopstech modify name varchar(100), add gender varchar(10); -- 10
show databases; -- 11
show tables;  -- 12
desc thopstech; -- 13
select * from thopstech; -- 14
select name, salary from thopstech; -- 15
alter table thopstech rename to THOPS; -- 16
alter table THOPS add address varchar(50); -- 17
select * from THOPS;
truncate table THOPS; -- 18
drop table THOPS; -- 19
drop database tcs; -- 20
show databases; -- 21













