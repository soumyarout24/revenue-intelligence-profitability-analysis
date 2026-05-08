CREATE DATABASE sales_project;

CREATE TABLE sales_orders (
order_id VARCHAR(20) PRIMARY KEY,
order_date DATE,
customer_id INT,
channel_name VARCHAR(20),
currency_code CHAR (5),
warehouse_code VARCHAR(10),
region_id INT,
product_id INT,
order_quantity INT,
unit_price INT);

ALTER TABLE sales_orders
ADD sales_amount FLOAT,
ADD total_unit_cost FLOAT;

ALTER TABLE sales_orders
MODIFY unit_price FLOAT;

CREATE TABLE product_details (
product_id INT PRIMARY KEY,
product_name VARCHAR(20));

CREATE TABLE customer_details (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(30));

CREATE TABLE region_details (
region_id INT PRIMARY KEY,
city VARCHAR(50),
country_name VARCHAR (50));

ALTER TABLE region_details
ADD country_full_name varchar(50);

CREATE TABLE budgets (
    product_id INT,
    product_name VARCHAR(20),
    budget_amount FLOAT,
    year INT,
	FOREIGN KEY (product_id) REFERENCES product_details(product_id)
);

ALTER TABLE sales_orders 
MODIFY unit_price DECIMAL(10,2),
MODIFY sales_amount DECIMAL(10,2),
MODIFY total_unit_cost DECIMAL(10,2);

select * from sales_orders;
select * from budgets;
select * from customer_details;
select * from product_details;
select * from region_details;


