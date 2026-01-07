Create database amazon_db;
use amazon_db;

-- creating table

-- category table

create table category(
category_id int PRIMARY KEY, 
category_name varchar(20)
);

-- customers table

create table customers(
Customer_id int Primary key, 
first_name varchar(20),
last_name varchar(20),
state varchar(20)
);

-- sellers table

create table sellers(
seller_id int Primary Key,
seller_name varchar(50),
origin varchar(50)
);

-- products table

create table products(
product_id int Primary Key,
product_name varchar(100),
price decimal(10,2),
cogs decimal(10,2),
category_id int,
Foreign Key(category_id) references category(category_id)
);




-- orders table

create table orders(
order_id int Primary Key,
order_date Date,
order_status varchar(40),
customer_id int, 
seller_id int,
Foreign Key (customer_id) references customers(customer_id),
Foreign Key (seller_id) references sellers(seller_id)
); 

-- orders_item table (junction table)

create table orders_items(
order_item_id int Primary Key,
order_id int,
product_id int,
quantity int,
price_per_unit decimal(10,2),
Foreign Key (order_id) references orders(order_id),
Foreign key (product_id) references products(product_id)
);

-- payments table
drop table payments;
select  count(payment_id) from payments;
create table payments(
payment_id int Primary Key,
payment_date varchar(30),
payment_status varchar(50),
order_id int,
Foreign Key (order_id) references orders(order_id)
);

-- shipping tableshipping_idreturn_dateshipping_date

select count(shipping_id) from shipping;

create table shipping(
shipping_id int Primary Key,
order_id int,
shipping_date varchar(30),
return_date varchar(30),
shipping_provider varchar(50),
delivery_status varchar(50),
Foreign Key (order_id) references orders(order_id)
);

-- inventory table 
drop table inventory;
create table inventory(
inventory_id int Primary Key,
product_id int,
stock int,
warehouse_iseller_idd int,
last_stock_date varchar(30),
Foreign Key (product_id) references products(product_id)
);




