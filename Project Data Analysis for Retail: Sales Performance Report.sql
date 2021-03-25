--===============================================================================================
/* The dataset (dqlab_sales_store) that used contains transactions between 2009 to 2012 
with 5500 rows.The order status devided into order finised, order returned and order cancelled.

The attributes were OrderID, Order Status, Customer, Order Quantity, Sales, Discount %, 
Discount, Product Category, Product Sub-Category */
--===============================================================================================


--===============================================================================================
/*1A. Overall Performace DQLab Store from 2009 - 2012 for the number of orders and total 
finished sales orders.*/


--===============================================================================================
/*1B. Overall performance of DQLab by product subcategory to be compared between 2011 and 2012*/

select left(order_date,4) as years, product_sub_category, sum(sales) as sales
from dqlab_sales_store
where order_status = "Order Finished" and (left(order_date,4) between "2011" and "2012")
group by years, product_sub_category
order by years, sales desc;

--==============================================================================================
/*2A. The effectiveness and efficiency of promotions carried out so far, by calculating 
the burn rate of the overall promotions by year*/



--===============================================================================================
/*2B. The effectiveness and efficiency of promotions carried out so far, by calculating 
the burn rate of the overall promotions based on sub-categories*/



--==============================================================================================
--3A. Analysis of customers every year

--==============================================================================================
--3B. Analysis of the number of new customers each year


--==============================================================================================
--3C. Cohort to find out the customer retention rate in 2009
