-- primary  key and foriegn key

create database v;
use v;

create table customer(cid int primary key,fname varchar(20),lname varchar(20), address varchar(30),phone int,email varchar(30));
desc customer;

create table delivery(did int primary key, orderid int,type varchar(20),status varchar(20),departure varchar(20),arrival varchar(20));
desc delivery;

create table payment(pid int primary key,pdate date,type varchar(20), orderid int,cid int, total int);
desc payment;

create table pizza(pizzaid int primary key,name varchar(20), specilization varchar(20), price int);
desc pizza;

create table orderhead(orderid int primary key,orderdate date, ordertime time, customerid int);
desc orderhead;

create table orderline(orderid int, lineid int,pizzaid int,quantity varchar(20));
desc orderline;

alter table orderhead add constraint foreign key(customerid) references customer(cid);
alter table orderhead add constraint foreign key(customerid) references delivery(did);
alter table payment add constraint foreign key(orderid) references orderhead(orderid);
alter table orderline add constraint foreign key(orderid) references orderhead(orderid);
alter table orderline add constraint foreign key(lineid) references pizza(pizzaid);



create database teacher;
use teacher;
create table teacher(teacher_id int primary key, firstname varchar(30), lastname varchar(30));
create table subject(subject_id int primary key, title varchar(30));
create table subj_teach(st_id int primary key,subject_id int,teacher_id int ,group_id int,foreign key(teacher_id) references teacher(teacher_id),foreign key(subject_id) references subject(subject_id));
alter table subj_teach add constraint foreign key(group_id) references groupes(group_id);
create table groupes(group_id int primary key,name varchar(30));
create table students(student_id int primary key, firstname varchar(30),lastname varchar(30),group_id int,foreign key(group_id) references groupes(group_id));
create table marks(markid int primary key,student_id int, subject_id int,date_cur date,mark int,foreign key(student_id) references students(student_id),foreign key(subject_id) references subject(subject_id));


create database balaraju;
use balaraju;
create table customer(cname varchar(20),address varchar(20) primary key);
create table car(cartype varchar(30) primary key);
create table location(city varchar(30) primary key,foreign key(city) references car(cartype));
create table reserve(city varchar(30),vehicle_type varchar(30),pickup_date date,return_date date,phone_number int,foreign key(city) references location(city),foreign key(city) references customer(address));
create table return_veh(return_date date,times time,odometer int,full_tank varchar(30),city varchar(30),phone_number int,foreign key(city) references location(city),foreign key(city) references customer(address));

create database college;
use college;
create table professor(prof_id int primary key,prof_lname varchar(30), prof_fname varchar(30));
create table student(stud_id int primary key,stud_fname varchar(30),stud_lname varchar(30),stud_street varchar(30),stud_city varchar(30),stud_zip varchar(30));
create table course(course_id int primary key,course_name varchar(255));
create table room(room_id int primary key,room_loc varchar(20),room_cap varchar(30),class_id int);
create table class(class_id int primary key,class_name varchar(30),prof_id int,course_id int,room_id int,foreign key(prof_id) references professor(prof_id),foreign key(course_id) references course(course_id),foreign key(room_id) references room(room_id));
alter table room add constraint foreign key(class_id) references class(class_id);
create table enroll(stud_id int primary key,class_id int,grade varchar(30),foreign key(class_id) references class(class_id),foreign key(stud_id) references student(stud_id));

create database bank;
use bank;
create table bank_info(fsc_code int primary key,bank_name varchar(55),branch_name varchar(77));
create table customer_ref_info(customer_id int primary key,reference_acc_name varchar(19),reference_acc_no bigint,reference_acc_address varchar(87),relation varchar(35));
create table customer_personal_info(customer_id int primary key,customer_name varchar(39),date_of_birth date,guardian_name varchar(42),address varchar(28),contact_no bigint,mail_id varchar(36),gender varchar(25),material_status varchar(75),identification_doc_type varchar(22),id_doc_no varchar(20),citizenship varchar(52));
create table account_info(account_number bigint,customer_id int,account_type varchar(25),registration_date date,ifsc_code int,interest decimal(7,2),initial_deposite bigint,foreign key(ifsc_code) references bank_info(fsc_code),foreign key(customer_id) references customer_ref_info(customer_id),foreign key(customer_id) references customer_personal_info(customer_id));

create database pizza_counter;
use pizza_counter;
create table customer(customerid int primary key,fname varchar(30),lname varchar(30),address varchar(30),phone bigint,email varchar(30));
create table delivery(deliveryid int primary key,orderid int,type_of_order varchar(30),status_of_order varchar(30),departure date, arrival varchar(30));
create table orderheader(orderid int primary key,order_date date,order_time time,customerid int,foreign key(customerid) references customer(customerid),foreign key(orderid) references delivery(deliveryid));
create table payment(paymentid int primary key,pdate date,type_of_payment varchar(30),orderid int,customerid int,total int,foreign key(orderid) references orderheader(orderid));
create table pizza(pizzaid int primary key,name_of_pizza varchar(30),specification varchar(30),price int);
create table orderline(orderid int,lineid int,pizzaid int,quantity varchar(30),foreign key(orderid) references orderheader(orderid),foreign key(lineid) references pizza(pizzaid));