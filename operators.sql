show databases; -- 1
use vijaydb;

create table movies(movie_no smallint,movie_name varchar(30), date_of_release date); -- 2
show tables;
insert into movies values (2,'temper','2026-10-10'),
(3,'nannaku prematho','2021-09-09'),
(4,'devara','2025-07-10'),
(5,'RRR','2025-03-11'),
(6,'simhadri','2002-08-10'),
(7,'yamadonga','2010-12-10'),
(8,'happy days','2016-08-01'),
(9,'july','2026-11-10'),
(10,'raja the great','2023-07-03'),
(2,'ragada','2015-11-09'); -- 3
select * from movies;
alter table movies add amount_of_ticket int; -- 4
update movies set amount_of_ticket = 200 where movie_name = 'ragada'; -- 5
select * from movies where movie_no = 4; -- 6
select * from movies where amount_of_ticket between 200 and 400; -- 7
select movie_name, movie_no from movies where movie_name = 'ATM'; -- 8
update movies set movie_name = 'simhadri' where movie_name = 'temper';
delete from movies where movie_name = 'bahubali'; -- 9
select * from movies where movie_name in ('raja the great','happy days','ragada','july'); -- 10
select * from movies where movie_no = 4 and movie_name = 'magadeera'; -- 11
select * from movies where movie_name = 'fidaa' or amount_of_ticket < 200; -- 12
select * from movies where movie_name like 'k%'; -- 13
select * from movies where movie_name like '%i'; -- 14
select * from movies where movie_name like 'p%u'; -- 15
alter table movies add heros varchar(30);
alter table movies add heroines varchar(30);
update movies set heroines = 'samantha' where movie_name = 'bahubali ';
update movies set heros = 'allu arjun' where movie_name = 'july ';
select  * from movies where heroines in ('sai pallavi','trisha','samantha','kajal') and 
heros in ('nithin','prabhas','surya','allu arjun'); -- 16;
