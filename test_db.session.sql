--multijoin
select first_name, last_name, title
FROM actor
INNER JOIN film_actor
on actor.actor_id=film_actor.actor_id
INNER JOIN film
on film_actor.film_id=film.film_id
--fskopdf

SELECT customer_id, sum(amount)
from payment
GROUP BY customer_id
HAVING sum(amount) > 175
ORDER BY sum(amount) DESC;



SELECT District, first_name, last_name
FROM address
INNER JOIN customer
on address.address_id=customer.customer_id
WHERE District like 'T____';

-- get customer abov 6.99 with full name
select first_name, last_name, amount 
from customer
INNER JOIN payment
on customer.customer_id=payment.payment_id
where amount >= 6.99;


select amount
from payment
where amount >= 6.99

--8. H8. H
o






