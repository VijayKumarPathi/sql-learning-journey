create database park; -- 1

use park;

select * from I_park;
create table I_park(no_of_persons smallint, names_of_persons varchar(30), date_of_meet date, no_of_polices smallint); -- 2

start transaction; -- 3
set autocommit = 0;
savepoint kali; -- 4
insert into I_park values (10, 'vijay', '2026-10-26', 25),(15, 'karthik', '2026-09-26', 25),(10, 'ramu', '2026-10-26', 25),(10, 'rakhi', '2022-05-26', 25),(10, 'hemavathi', '2026-10-26', 25); -- 5
update I_park set date_of_meet = '2023-03-06' where names_of_persons = 'karthik';
update I_park set date_of_meet = '2023-03-06' where names_of_persons = 'hemavathi'; -- 6
rollback to kali; -- 7
savepoint jai; -- 8
insert into I_park values (12,'damu','2020-02-13',5),(17,'lakshmi','2020-07-25',10),(19,'rasool','2021-02-13',3); -- 9
commit; -- 10
rollback to jai;
select * from I_park; -- 12
desc I_park; -- 13




