create table products_olist (
	product_id varchar(50),
	product_category_name varchar(50),
	product_photos_qty int,
	product_weight_g decimal,
	product_length_cm decimal,
	product_height_cm decimal,
	product_width_cm decimal
);


create table order_payment(
	order_id varchar(50),
	payment_sequential int,
	payment_type varchar(50),
	payment_installments int,
	payment_value decimal
	
);

create table order_review(
	review_id varchar(50),
	order_id varchar(50),
	review_score int
);

create table geolocation_olist(
	geolocation_zip_code_prefix int,
	geolocation_lat decimal(25,20),
	geolocation_lng decimal(25,20),
	geolocation_city varchar(55),
	geolocation_state varchar(30)
	
);

create table seller_olist(
	seller_id varchar(50),
	seller_zip_code_prefix int,
	seller_city varchar(50),
	seller_state varchar(20)
	
);

create table product_name_translation(
	product_category_name varchar(100),
	category_name_english varchar(100)
	
);


--join customers_olist table with orders_olist:

select * from customers_olist limit 100;

select * from orders_olist limit 100;

SELECT o.order_id, o.order_status,o.order_purchase_date ,
order_reached_date, order_estimate_delivery_date from orders_olist o
left join
customers_olist c ON o.customer_id = c.customer_id;






SELECT o.order_id, o.order_status,o.order_purchase_date ,
order_reached_date, order_estimate_delivery_date from orders_olist o
left join
customers_olist c ON o.customer_id = c.customer_id
where c.customer_id is null;


select count(*) as rows_count from customers_olist;
--43269


select count(*) as rows_counts from orders_olist;
--96461

select * from orders_olist o
left join customers_olist c on o.customer_id = c.customer_id;


select count(*) as total_rows
from orders_olist o
left join customers_olist c on o.customer_id = c.customer_id;




-- some pre join queries (table -wise)

-------------------1) orders_table  ------------------------

-- show order delivered vs canceled

select * from orders_olist;

select count(*) as count_orders, order_status
from orders_olist 
group by order_status
order by count_orders desc;

-- null delivery dates (to identify ) canceled
select * from orders_olist
where order_status = 'canceled';


-- monthly trend (assuming )

select TO_CHAR(order_purchase_date::DATE,'YYYY-MM') as order_monthly,
count(*) as total_orders from orders_olist
group by order_monthly 
order by order_monthly;


--------- CUSTOMER_OLIST TABLE---------------

SELECT * from customers_olist;

--1) customers by state

create view  customers_count_state as

select customer_state, count(*) as customer_count 
from customers_olist
group by customer_state
order by customer_count desc;


select * from customers_count_state;



---------order_items_olist------------

select * from order_items_olist;

--1) average freight and price

create view avgerage_price_freight as

select avg(price) as average_price , avg(freight_value) as average_freight
from order_items_olist;

select * from avgerage_price_freight;

--2) top selling products

create view count_top_product_id as

select count(*) as count_sold, product_id
from order_items_olist
group by product_id
order by count_sold desc;

select * from count_top_product_id;




------------products_olist_table--------------

select * from products_olist;

--1) most common categories 
select count(*) as common_product, product_category_name
from products_olist
group by product_category_name
order by common_product desc;



---------order_payments-------------

select * from order_payment;

--1) payment type discint and count in acs

select distinct payment_type,count(*) as total_payment_method
from order_payment
group by payment_type
order by total_payment_method asc;


--2) average payment per orders

select avg(payment_value) as average_payment 
from order_payment;



------------order_reviews----------------

select * from order_review;


--1) review score distibution

select count(*) as total_no_reviews, review_score
from order_review
group by review_score
order by total_no_reviews desc;

--2) average review score

select round(avg(review_score),2) as average_review 
from order_review;


----3) sellers table 

select * from seller_olist;

--1) count the seller city of sellers

select count(*) as total_seller_city , seller_city
from seller_olist
group by seller_city
order by total_seller_city desc;

--2) top 10 seller state of sellers

select count(*) as total_seller_state, seller_state
from seller_olist
group by seller_state
order by total_seller_state desc 
limit 10;


-----------before joining a table ---------------------------


select count(*) from orders_olist
where customer_id is null;


select count(*) from order_items_olist
where product_id is null;





