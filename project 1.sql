--  Name = Swati parmeshwar bansode 
-- Project name = Retailmart analysis 

-- Q1) write a quary to create a databased named SQL basics
create database if not exists SQLbasics;

-- Q2) write a quary to select a SQL basics
use SQLbasics;

/* Q3) Write a query to create a product table with the fields product  code, product name, 
price, stock, and category, a customer table with the fields customer ID, customer name, customer location, and 
customer phone number and a sales table with the fields date, order number, product code, product name, quantity, and price, /*
create table if not exists product
(product_code int,
product_name varchar(255),
price int,
stock int,
catagory varchar(255)
);
create table if not exists customer
(customer_id int,
customer_name varchar(255),
customer_location varchar(255),
customer_phonenumber int
);
create table if not exists sales
(date int,
order_number int,
product_code varchar(255),
product_name varchar(255),
quantity int,
price int
);

-- Q4) Write a query to insert values into the customer, product, and sales tables
use sqlbasics;
insert into product values 
(1,"tulip",198,	5,"perfume"),
(2,"cornoto",50,21,"icecream"),
(3,	"Pen",10,52,"Stationary"),
(4,"Lays",10,20,"snacks"),
(5,"mayanoise",90,10,"dip"),
(6,"jam",105,10	,"spread"),
(7,"shampoo",5,90,"hairproduct"),
(8,	"axe",210,4	,"perfume"),
(9,"parkavenue",901,2,"perfume"),
(10,"wattagirl"	,201,3,	"perfume"),
(11,	"pencil",4, 10, "Stationary"),
(12,"sharpener",5,90 ,"Stationary"),
(13	,"sketchpen",30,10,	"Stationary"),
(14,"tape",	15,30,"Stationary"),
(15	,"paint",	60,	12,	"Stationary"),
(16,"chocolate",	25,	50,	"snacks"),
(17,"biscuts"	,60,26,"snacks"),
(18,"mango",100,21,"fruits"),
(19,"apple",120,9,"fruits"),
(20,"kiwi",140,4,"fruits"),
(21,"carrot",35,12,	"vegetable"),
(22	,"onion",22,38,	"vegetable"),
(23	,"tomato",21,15,"vegetable"),
(24	,"serum",90,4,"hairproduct"),
(25,"conditioner",200,5,"hairproduct"),
(26,"oilbottle",40,2,"kitchenutensil");

insert into customer values
(1111,"Nisha","kerala",8392320),
(1212,"Oliver","kerala",4353891),
(1216,"Nila","delhi",3323242),
(1246,"Vignesh","chennai",1111212),
(1313,"shiny","Maharastra",5454543),
(1910,"Mohan","mumbai",9023941),
(2123,"Biyush","Bombay",1253358),
(3452,"Alexander","West Bengal",1212134),
(3921,"Mukesh","Manipur",4232321),
(5334,"Christy","pakistan",2311111),
(9021,"Rithika","Kashmir",1121344),
(9212,"Jessica","banglore",1233435),
(9875,"Stephen","chennai",1212133);

-- Q5) Write a query to add new columns, such as serial number and categories, to the sales table
alter table sales
add serial_number int;
alter table sales 
add categories varchar(255);
select * from sales;

-- Q6 Write a query to change the stock field type to varchar in the product table
alter table product
change column stock stock varchar(255);

-- Q7 Write a query to change the table name from customer to customer
details

alter table customer
rename to customerdetails;

-- Q8) Write a query to drop the sl. no. and categories columns from the sales table
alter table sales
drop serial_number;
alter table sales
drop categories;

/* Q9) Write a query to display the order ID, customer ID, order date, price, and
quantity columns of the sales table /*
use sqlbasics;
drop table sales;
create table if not exists sales
(field_date date,
order_number varchar(255),
c_id int,
customer_name varchar(255),
c_code int,
p_name varchar(255),
quantity int,
price int
); 
insert into sales values 
("2016-07-24","HM06",9212,"Jessica",11,	"pencil",3,30),
("2016-10-19","HM09",3921,"Mukesh",	17,	"biscuits",10,	600),
("2016-10-30","HM10",9875,"Stephen",2,"cornoto",10,500),
("2018-04-12","HM03",1212,"Oliver",	20,"kiwi",3,420),
("2018-05-02","HM05",1910,"Mohan",	20,"kiwi",2,280),
("2018-09-20","HM08",5334,"Chirsty",16,"chocolate",2,50),
("2019-01-11","HM07",1246,"Vignesh",19,	"apple",5,600),
("2019-03-15","HM01",1910,"Mohan",5,"mayanoise",4,360),
("2021-02-10","HM04",1111,"Nisha",25,"conditioner",5,1000),
("2021-02-12","HM02",2123,"Biyush",3,"Pen",2,20);
select * from sales;
select order_number,c_id,field_date,price,quantity from sales;

-- Q10) Write a query to display the details where the category is stationary from the product table
select * from product where catagory="stationary";

-- Q11) Write a query to display the unique category from the product table
select distinct * from product;

/* Q12) Write a query to display the details of the sales from the sales table where
quantity is greater than 2 and the price is less than 500 /*

select * from sales; 
select * from sales where quantity >2 and price<500;

-- Q13) Write a query to display every customer whose name ends with an ’a’
select * from customerdetails where customer_name like '%a';

-- Q14) Write a query to display the product details in descending order of price
select * from product order by price desc;

-- Q15) Write a query to display the product code and category from categories that have two or more products
select * from product;
select catagory, count(catagory) total_count from product
 group by catagory having total_count >= 2;
 








