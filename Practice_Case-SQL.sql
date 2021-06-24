------- Practice Case - Coding (SQL) ---------
------Data Fellowship Batch 6 by IYKRA -------

--Name: Alifia Cesarina Harmadi

--__________________________________________--

--Q1. A customer wants to know the films about “astronauts”. How many recommendations could you give for him? 
SELECT COUNT(film_id) 
FROM film
WHERE LOWER(description) LIKE  '%astronaut%';

--Q2. I wonder, how many films have a rating of “R” and a replacement cost between $5 and $15?
SELECT COUNT(film_id) 
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

--Q3. We have two staff members with staff IDs 1 and 2. We want to give a bonus to the staff member that handled the most payments.
--    How many payments did each staff member handle? And how much was the total amount processed by each staff member?
SELECT staff_id, COUNT(payment_id) AS num_of_payments, SUM(amount) AS total_amount 
FROM payment
GROUP BY staff_id
ORDER BY num_of_payments DESC;

--Q4. Corporate headquarters is auditing the store! They want to know the average replacement cost of movies by rating!
SELECT rating, ROUND(AVG(replacement_cost),2) AS avg_replacement_cost 
FROM film
GROUP BY rating;

--Q5. We want to send coupons to the 5 customers who have spent the most amount of money. Get the customer name, email and 
--    their spent amount!
SELECT CONCAT(cust.first_name,' ',cust.last_name) AS customer_name, cust.email, pay.amount
FROM Customer AS cust
JOIN payment AS pay
ON cust.customer_id = pay.customer_id
ORDER BY amount DESC
LIMIT 5;

--Q6. We want to audit our stock of films in all of our stores. How many copies of each movie in each store, do we have?
SELECT store_id, COUNT(film_id) AS num_of_film
FROM inventory
GROUP BY store_id

--Q7. We want to know what customers are eligible for our platinum credit card. The requirements are that the customer 
--    has at least a total of 40 transaction payments. Get the customer name, email who are eligible for the credit card! 
SELECT CONCAT(cust.first_name,' ',cust.last_name) AS customer_name, cust.email 
FROM customer AS cust
JOIN payment AS pay
ON cust.customer_id = pay.customer_id
GROUP BY customer_name, cust.email
HAVING COUNT(payment_id)>= 40

