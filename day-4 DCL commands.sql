select host,user from mysql.user;

create user 'vijay'@'localhost' identified by '12345';

show databases;
use tcs;

create table bar(no_of_bottles smallint, names_of_bottles varchar(35));

show tables;

grant insert on tcs.thops to 'vijay'@'localhost';

revoke insert on tcs.thops from 'vijay'@'localhost';

grant update on tcs.thops to 'vijay'@'localhost';

revoke update on tcs.thops from 'vijay'@'localhost';

grant all privileges on tcs.thops to 'vijay'@'localhost';

revoke delete on tcs.thops from 'vijay'@'localhost';


select * from thops;
desc thops;
