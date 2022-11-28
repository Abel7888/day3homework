--1. List all customers who live in Texas (use JOINs)

SELECT District, first_name, last_name
FROM address
INNER JOIN customer
on address.address_id=customer.customer_id
WHERE District like 'T____';

--2.2. Get all payments above 6.99 with cutmoner full name
select first_name, last_name, amount
from customer
INNER JOIN payment
on customer.customer_id=payment.payment_id
WHERE amount > 6.99;



--select amount
from payment
where amount >= 6.99

SELECT customer_id,MAX(purch_amt) 
FROM orders 
WHERE customer_id BETWEEN 3002 and 3007 
GROUP BY customer_id 


--3. Show all customers names who have made payments over $175(use
--subqueries)
SELECT customer_id, sum(amount)
from payment
GROUP BY customer_id
HAVING sum(amount) > 175
ORDER BY sum(amount) DESC;

--4. List all customers that live in Nepal (use the city table)
SELECT *
from country


SELECT country_id, city
from city
where country_id = 66

--only one customer is from nepal


--5. Which staff member had the most transactions?
select*
from staff;

select *
from payment;

SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id;

-- staff id 2 name John stephen has the most transactions


--6. How many movies of each rating are there?

select *
from film;

SELECT rating, COUNT(rating) 
FROM film 
GROUP BY rating;

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT first_name, last_name, email, amount
FROM customer 
INNER JOIN payment
on customer.customer_id=payment.payment_id
WHERE amount
IN (SELECT amount FROM payment WHERE amount > 6.99);

--. 8. How many free rentals did our store give away








