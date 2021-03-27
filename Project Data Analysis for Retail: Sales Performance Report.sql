--===============================================================================================
-- A Porject from DQlLab

/* The dataset (dqlab_sales_store) that used contains transactions between 2009 to 2012 
with 5500 rows.The order status devided into order finised, order returned and order cancelled.

The attributes were OrderID, Order Status, Customer, Order Quantity, Sales, Discount %, 
Discount, Product Category, Product Sub-Category */

select *
from dqlab_sales_store
limit 5

+----------+----------------+--------------------+------------+----------------+----------+----------+----------------+------------------+--------------------------------+
| order_id | order_status   | customer           | order_date | order_quantity | sales    | discount | discount_value | product_category | product_sub_category           |
+----------+----------------+--------------------+------------+----------------+----------+----------+----------------+------------------+--------------------------------+
|        3 | Order Finished | Muhammed MacIntyre | 2010-10-13 |              6 |   523080 |     0.04 |          20923 | Office Supplies  | Storage & Organization         |
|      293 | Order Finished | Barry French       | 2012-10-01 |             49 | 20246040 |     0.07 |        1417223 | Office Supplies  | Appliances                     |
|      483 | Order Finished | Clay Rozendal      | 2011-07-10 |             30 |  9931519 |     0.08 |         794522 | Technology       | Telephones and Communication   |
|      515 | Order Finished | Carlos Soltero     | 2010-08-28 |             19 |   788540 |     0.08 |          63083 | Office Supplies  | Appliances                     |
|      613 | Order Finished | Carl Jackson       | 2011-06-17 |             12 |   187080 |     0.03 |           5612 | Office Supplies  | Binders and Binder Accessories |
+----------+----------------+--------------------+------------+----------------+----------+----------+----------------+------------------+--------------------------------+ 

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

select year(order_date) as years, 
       product_sub_category, 
       product_category, 
       sum(sales) as sales, 
       sum(discount_value) as promotion_Value, 
       round(sum(discount_value)/sum(sales)*100,2) as burn_rate_percentage
from dqlab_sales_store
where order_status = "Order Finished" and year(order_date) ="2012"
group by year(order_date),product_sub_category, product_category
order by sales desc

--Output
+-------+--------------------------------+------------------+-----------+-----------------+----------------------+
| years | product_sub_category           | product_category | sales     | promotion_Value | burn_rate_percentage |
+-------+--------------------------------+------------------+-----------+-----------------+----------------------+
|  2012 | Office Machines                | Technology       | 811427140 |        46616695 |                 5.75 |
|  2012 | Chairs & Chairmats             | Furniture        | 654168740 |        26623882 |                 4.07 |
|  2012 | Telephones and Communication   | Technology       | 422287514 |        18800188 |                 4.45 |
|  2012 | Tables                         | Furniture        | 388993784 |        16348689 |                 4.20 |
|  2012 | Binders and Binder Accessories | Office Supplies  | 363879200 |        22338980 |                 6.14 |
|  2012 | Storage & Organization         | Office Supplies  | 356714140 |        18802166 |                 5.27 |
|  2012 | Computer Peripherals           | Technology       | 308014340 |        15333293 |                 4.98 |
|  2012 | Copiers and Fax                | Technology       | 292489800 |        14530870 |                 4.97 |
|  2012 | Appliances                     | Office Supplies  | 266131100 |        14393300 |                 5.41 |
|  2012 | Office Furnishings             | Furniture        | 178927480 |         8233849 |                 4.60 |
|  2012 | Bookcases                      | Furniture        | 159984680 |        10024365 |                 6.27 |
|  2012 | Paper                          | Office Supplies  | 126896160 |         6224694 |                 4.91 |
|  2012 | Envelopes                      | Office Supplies  |  58629280 |         2334321 |                 3.98 |
|  2012 | Pens & Art Supplies            | Office Supplies  |  43818480 |         2343501 |                 5.35 |
|  2012 | Scissors, Rulers and Trimmers  | Office Supplies  |  36776400 |         2349280 |                 6.39 |
|  2012 | Labels                         | Office Supplies  |  10007040 |          452245 |                 4.52 |
|  2012 | Rubber Bands                   | Office Supplies  |   3837880 |          117324 |                 3.06 |
+-------+--------------------------------+------------------+-----------+-----------------+----------------------+

--==============================================================================================
--3. Customer Transaction per Year

select year(order_date) as years, count(distinct customer) as number_of_customer
from dqlab_sales_store
where order_status = "order finished"
group by year(order_date)

--Output
+-------+--------------------+
| years | number_of_customer |
+-------+--------------------+
|  2009 |                585 |
|  2010 |                593 |
|  2011 |                581 |
|  2012 |                594 |
+-------+--------------------+

