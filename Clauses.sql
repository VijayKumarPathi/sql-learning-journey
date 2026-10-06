show databases;
use training_center;

show tables;
create table movie(movie_name varchar(30), hero_name varchar(30), heroine_name varchar(30), no_of_songs int);

insert into movie values('mirchi','prabhas','anushka',5),('magadeera','ram charan','tamannah',6),('rrr','ntr','olivia',5),('guntur karam','mahesh babu','meenakshi choudary',6),('red','ram','amrutha',5),('bahubali','prabhas','tamannah',4),('bola shankar','chiranjevi','keerthi suresh',6),('jailer','rajinikanth','ramya krishna',5),('satyam sundaram','karthi','sri divya',6),('DJ Tillu','siddu','anupama parameshwaran',6);

select * from movie;
update movie set movie_name = 'arya' where no_of_songs = 4;
delete from movie where hero_name = 'prabhas';
update movie set heroine_name = 'radhika' where heroine_name = 'anupama parameshwaran';
alter table movie add no_of_steps_in_dance int;
update movie set no_of_steps_in_dance = 15 where no_of_songs = 6;
alter table movie drop movie_name;
desc movie;
update movie set no_of_songs = 1 where heroine_name = 'radhika';
select * from movie where no_of_songs between 1 and 6;
select * from movie order by heroine_name;
select hero_name,count(no_of_songs) from movie group by hero_name;
select no_of_songs, count(hero_name) from movie group by no_of_songs having no_of_songs = 6;
select * from movie order by hero_name limit 3;
select * from movie order by no_of_songs desc limit 12;
select * from movie order by  no_of_songs desc limit 3 offset 2;
alter table movie add amount_of_ticket int;
update movie set amount_of_ticket = 200 where no_of_steps_in_dance = 15;
select * from movie order by  amount_of_ticket desc limit 1 offset 1;
select * from movie order by amount_of_ticket desc limit 1 offset 2;
select * from movie where hero_name like 'r%';
select * from movie order by hero_name desc;
select hero_name,count(hero_name) from movie group by hero_name;
