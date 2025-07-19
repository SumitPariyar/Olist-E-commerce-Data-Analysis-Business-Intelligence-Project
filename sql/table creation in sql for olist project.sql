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



