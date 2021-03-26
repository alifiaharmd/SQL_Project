--===============================================================================================
/* The dataset (dqlab_sales_store) that used contains transactions between 2009 to 2012 
with 5500 rows.The order status devided into order finised, order returned and order cancelled.

The attributes were OrderID, Order Status, Customer, Order Quantity, Sales, Discount %, 
Discount, Product Category, Product Sub-Category */
--===============================================================================================


--===============================================================================================
/*1A. Overall Performace DQLab Store from 2009 - 2012 for the number of orders and total 
finished sales orders.*/

select year(order_date) as years, sum(sales) as sales , count(order_date) as number_of_order
from dqlab_sales_store
where order_status = "Order Finished"
group by years
;

--Output

+-------+------------+-----------------+
| years | sales      | number_of_order |
+-------+------------+-----------------+
| 2009  | 4613872681 |            1244 |
| 2010  | 4059100607 |            1248 |
| 2011  | 4112036186 |            1178 |
| 2012  | 4482983158 |            1254 |
+-------+------------+-----------------+

--===============================================================================================
/*1B. Overall performance of DQLab by product subcategory to be compared between 2011 and 2012*/

select left(order_date,4) as years, product_sub_category, sum(sales) as sales
from dqlab_sales_store
where order_status = "Order Finished" and (left(order_date,4) between "2011" and "2012")
group by years, product_sub_category
order by years, sales desc;

--Output

+-------+------------------------------+-----------+
| years | product_sub_category         | sales     |
+-------+------------------------------+-----------+
|  2011 | Chairs & Chairmats           | 622962720 |
|  2011 | Office Machines              | 545856280 |
|  2011 | Tables                       | 505875008 |
|  2011 | Copiers and Fax              | 404074080 |
|  2011 | Telephones and Communication | 392194658 |
+-------+------------------------------+-----------+

--==============================================================================================
/*2A. The effectiveness and efficiency of promotions carried out so far, by calculating 
the burn rate of the overall promotions by year*/

select year(order_date) as years, 
       sum(sales)as sales,
       sum(discount_value) as promotion_Value,
       round(sum(discount_value)/sum(sales)*100,2) as burn_rate_percentage
from dqlab_sales_store
where order_status = "Order Finished"
group by year(order_date)

--Output
+-------+------------+-----------------+----------------------+
| years | sales      | promotion_value | burn_rate_percentage |
+-------+------------+-----------------+----------------------+
|  2009 | 4613872681 |       214330327 |                 4.65 |
|  2010 | 4059100607 |       197506939 |                 4.87 |
|  2011 | 4112036186 |       214611556 |                 5.22 |
|  2012 | 4482983158 |       225867642 |                 5.04 |
+-------+------------+-----------------+----------------------+

--===============================================================================================
/*2B. The effectiveness and efficiency of promotions carried out so far, by calculating 
the burn rate of the overall promotions based on sub-categories*/



--==============================================================================================
--3A. Analysis of customers every year

--==============================================================================================
--3B. Analysis of the number of new customers each year


--==============================================================================================
--3C. Cohort to find out the customer retention rate in 2009
