create database pub; -- 1

use pub;

create table bar(no_of_bottels int, name_of_brand varchar(30),cost_of_bottle int); -- 2
show tables;
select * from bar;

insert into bar(no_of_bottels, name_of_brand, cost_of_bottle) values (1,'vodka',1500), (2, 'rum', 1800), (3, 'beer', 200), (4, 'jinn', 1000), (5, 'whisky', 1300); -- 3
insert into bar values(6,'cola',2000),(7,'sprite',100),(8,'limca',50),(9,'water',100),(10,'barcode',110),(11,'brocode',150),(12,'thumsup',20),(13,'pulpy',10),(14,'string',100),(15,'redbull',180); -- 4
insert into bar(name_of_brand) values ('dietcoke'),('teacher'); -- 5
alter table bar add stuff varchar(30); -- 6
insert into bar(stuff) values ('chicken'), ('mutton'),('pakoda'), ('bajji'); -- 7
alter table bar rename column name_of_brand to bottle_name; -- 8
update bar set bottle_name = 'magic_moments' where no_of_bottels = 4; -- 9

update bar set no_of_bottels = ifnull(no_of_bottels, 0), bottle_name = ifnull(bottle_name,'not_available'), cost_of_bottle = ifnull(cost_of_bottle, 0), stuff = ifnull(stuff,'not_available'); -- 10

insert into bar values (16,'brandy',170, 'mirapakaya_bajji'), (17,'fruit_mix',200, 'chicken_pakoda'); -- 11
update bar set no_of_bottels = 14, bottle_name = 'vodka' where no_of_bottels = 10; -- 12
update bar set cost_of_bottle = 450; -- 13
update bar set bottle_name  = 'old_monk';
rollback;
delete from bar where bottle_name = 'old_monk'; -- 14
insert into bar(no_of_bottels, bottle_name, cost_of_bottle,stuff) values (1,'vodka',1500,'chicken'), (2, 'rum', 1800,'mutton'), (3, 'beer', 200,'peanuts'), (4, 'jinn', 1000,'chips'), (5, 'whisky', 1300,'pickle'); 
insert into bar(bottle_name) values('vodka');
insert into bar(no_of_bottels) values (1),(5),(10),(12);
delete from bar where bottle_name is null; -- 15
alter table bar drop cost_of_bottle; -- 16
select * from bar; -- 17
