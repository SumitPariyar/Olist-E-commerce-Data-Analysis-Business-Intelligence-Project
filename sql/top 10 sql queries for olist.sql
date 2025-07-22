TOP 10 insights queries from big_olist table

create view  analysis as
select * from olist_clean_analytics_table limit 1000;

select * from analysis;





----------REVENUE & PROFIT ANALYSIS---------------

----1) Top categories by Revenue & Profit 
create view Total_Profit as 

Select product_category_name, 
	round(sum(price),2) as total_revenue,
	round(sum(freight_value),2) as total_freight,
    round(sum(price - freight_value),2) as net_profit
from olist_clean_analytics_table
where order_status = 'delivered'
group by product_category_name
order by net_profit desc limit 10;

select * from Total_Profit;


---2) Revenue Trend by Month

create view month_order_revenue as

select TO_CHAR(order_purchase_date, 'YYYY-MM') as order_month,
	ROUND(sum(price),2) as total_revenue,
	count(distinct order_id) as total_order
from analysis
    WHERE order_status = 'delivered'
	group by order_month
	order by total_order desc;

select * from month_order_revenue;


---------CUSTOMER BEHAVIOUR INSIGHTS--------------

---3) repeat vs one time customers

--case statement:

select case when order_count = 1 
	then 'one-time'
else 'repeat'
end as customer_type,
count(*) as num_customers
from (
	select customer_id,
	count(order_id) as order_count
	from analysis
	group by customer_id	
) as customer_orders
group by customer_type;



---------RMF TABLE--------------------------------------------------
--R STAND FOR recency
--F stand for frequency
--M stand for monetary


/*select order_purchase_date from analysis

order by order_purchase_date
desc limit 1;   */



from above we can see the last purchase date : 2018-08-27 
we consider this as a today date for finding recency 

select customer_id, DATE '2018-08-27' - MAX(order_purchase_date)::date as recency,
count( distinct order_id) as frequency,
round(sum(price),2) as monetary
from olist_clean_analytics_table
where order_status = 'delivered'
group by customer_id
order by recency ;





------GEO & SELLER INSIGHTS---------------
select * from analysis;

--5) REVENUE BY STATE

SELECT round(sum(price),2) as total_revenue_state,customer_state
from analysis
group by customer_state
order by total_revenue_state desc;


--6) Top performing sellers

select seller_id,count(distinct product_id) as top_seller
from analysis
group by seller_id
order by top_seller desc limit 10;



-------delivery performance ---------------

select * from analysis;


---7) delivery speed vs estimated 



select order_estimate_delivery_date - order_reached_date as delivery_days
from analysis 
group by delivery_days;


---8) late delivery impact on reviews:


SELECT 
	review_score,
	order_estimate_delivery_date - order_reached_date as delivery_days
from 
	analysis
order by
	delivery_days desc limit 1000;



-----REVIEW AND QUALITY------------------
SELECT * from analysis;

--9) review score by product category name


select 
	product_category_name, 
	round(avg(review_score),1) as average_review_product
from 
	analysis
group by product_category_name
order by average_review_product desc;


--10) review score vs revenue

select 
	round(sum(price),2) as revenue,
	review_score
from olist_clean_analytics_table
group by
		review_score;


















