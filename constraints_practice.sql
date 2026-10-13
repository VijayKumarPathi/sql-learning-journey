use training_center;

create table corn(id int,name varchar(30),salary int,email varchar(30));
select * from corn;

INSERT INTO corn (id, name, salary, email) VALUES
(1, 'Vijay', 25000, 'vijay@gmail.com'),
(2, 'Ravi', 30000, 'ravi@gmail.com'),
(3, 'Kiran', 28000, 'kiran@gmail.com'),
(4, 'Arjun', 35000, 'arjun@gmail.com'),
(5, 'Suresh', 22000, 'suresh@gmail.com'),
(6, 'Priya', 40000, 'priya@gmail.com'),
(7, 'Rahul', 32000, 'rahul@gmail.com'),
(8, 'Sneha', 27000, 'sneha@gmail.com'),
(9, 'Manoj', 45000, 'manoj@gmail.com'),
(10, 'Divya', 38000, 'divya@gmail.com');

select * from corn;
alter table corn modify id int unique;
alter table corn modify id int not null;
desc corn;
alter table corn add aadhar int not null;
alter table corn add age int check(age > 25);
update corn set age = 34 where id = 10;
alter table corn drop constraint corn_chk_1;
show create table corn;

create table food(no_of_plates int,name_of_food varchar(30),cost_of_food int);
alter table food modify no_of_plates int not null;
desc food;
alter table food modify name_of_food varchar(30) not null;

INSERT INTO food (no_of_plates, name_of_food, cost_of_food) VALUES
(2, 'Chicken Biryani', 250),
(3, 'Veg Biryani', 180),
(1, 'Dosa', 50),
(4, 'Idli', 40),
(2, 'Chicken Fried Rice', 220),
(5, 'Poori', 60),
(3, 'Meals', 120),
(2, 'Parotta', 80),
(1, 'Paneer Butter Masala', 200),
(4, 'Veg Fried Rice', 150);

select * from food;
alter table food add name_of_drinks varchar(30) default "sprite";
alter table food modify name_of_food varchar(30) null;

create table cool_drinks(no_of_cool_drinks int,name_of_drinks varchar(30),no_of_glasses int);
alter table cool_drinks modify no_of_cool_drinks int not null;
desc cool_drinks;

INSERT INTO cool_drinks (no_of_cool_drinks, name_of_drinks, no_of_glasses) VALUES
(10, 'Coca Cola', 5),
(15, 'Pepsi', 8),
(20, 'Sprite', 10),
(12, 'Fanta', 6),
(25, 'Thumbs Up', 12),
(18, 'Mountain Dew', 9),
(30, 'Mirinda', 15),
(14, '7UP', 7),
(22, 'Maaza', 11),
(16, 'Frooti', 8);

select * from cool_drinks;
desc cool_drinks;
desc corn;
desc food;