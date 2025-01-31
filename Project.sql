-- Create the datebase
CREATE DATABASE IF NOT EXISTS Anna_Karl;
-- Set Anna_Karl as main schema
use anna_karl;
-- Create employees table
create table employees (
	employee_id int primary key auto_increment not null,
    employee_first_name varchar(50),
    employee_last_name varchar(50),
    employee_jop varchar(50)
);
-- Inserting some data
insert into employees (employee_first_name, employee_last_name, employee_jop)
values ('Mazen', 'Ehab', 'Owner'),
       ('Anna', 'Per', 'Manager'),
       ('Karl', 'Pep', 'Chief'),
       ('Zeoy', 'Lewis', 'Chief');

-- Making sure the table is working as needed
select * from employees;
-- Create food list table
create table food (
	food_name varchar(50) primary key not null,
    food_price decimal(6, 2)
);
-- Insert data
insert into food
values ('Pizza', 1.99),
       ('Green Salad', 0.49),
       ('Burger', 4.99),
       ('Hotdog', 5.99),
       ('Shwarma', 9.99),
       ('Cola', 1.00);
-- Making sure the table is working as needed
select * from food;
-- Create customers table
create table customers (
	customer_id int primary key auto_increment not null,
    customer_first_name varchar(50),
    customer_last_name varchar(50),
    customer_email varchar(70)
);
-- Insert data
insert into customers (customer_first_name, customer_last_name, customer_email) 
values  ('John', 'Doe', 'johndoe@example.com'),
		('Jane', 'Smith', 'janesmith@example.com'),
		('Michael', 'Johnson', 'michaeljohnson@example.com'),
		('Emily', 'Davis', 'emilydavis@example.com'),
		('David', 'Martinez', 'davidmartinez@example.com'),
		('Sarah', 'Anderson', 'sarahanderson@example.com'),
		('Chris', 'Brown', 'chrisbrown@example.com'),
		('Jessica', 'Miller', 'jessicamiller@example.com'),
		('Matthew', 'Wilson', 'matthewwilson@example.com'),
		('Laura', 'Taylor', 'laurataylor@example.com');
-- Making sure the table is working as needed
select * from customers;
-- Create bookings table
create table bookings (
	booking_id int primary key auto_increment not null,
    booking_table_num int,
    booking_num_guests int default 0,
    booking_customerid int,
    booking_date datetime default now(),
    foreign key (booking_customerid) references customers(customer_id)
);
-- Insert realistic data
INSERT INTO bookings (booking_table_num, booking_num_guests, booking_customerid, booking_date) 
VALUES  
    (5, 4, 1, '2025-02-01 18:30:00'),
    (2, 2, 3, '2025-02-02 19:00:00'),
    (8, 6, 5, '2025-02-02 20:15:00'),
    (3, 3, 7, '2025-02-02 17:45:00'),
    (6, 5, 9, '2025-02-05 21:00:00'),
    (1, 2, 2, '2025-02-05 18:00:00'),
    (4, 4, 4, '2025-02-06 19:30:00'),
    (7, 3, 6, '2025-02-08 20:45:00'),
    (9, 1, 8, '2025-02-10 18:15:00'),
    (10, 2, 10, '2025-02-10 19:45:00');
-- Making sure the table is working as needed
select * from bookings;
-- Select data using 'where' statement and logical operators
select * from bookings
where booking_date between '2025-02-5' and '2025-02-10';
-- Select data using 'group' statement
select date(booking_date) as booking_day , sum(booking_num_guests) from bookings
group by booking_day;
-- Select data using 'group', 'order', and 'limit' statements
select date(booking_date) as booking_day , sum(booking_num_guests) as guests_sum from bookings
group by booking_day
order by guests_sum desc
limit 1;
-- Create inner join query
select booking_id, customers.customer_id, customers.customer_first_name, customers.customer_last_name, date(booking_date) as "booking day" from bookings
inner join customers
on bookings.booking_customerid = customers.customer_id;
-- Alter table and then add a new column
alter table  bookings
add column price decimal(6, 2);
-- Create a subquery
select customers.customer_id, customers.customer_first_name,
(select sum(booking_num_guests) from bookings
where booking_customerid = customers.customer_id) as total_guests
from customers;
