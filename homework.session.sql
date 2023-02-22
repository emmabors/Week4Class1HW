-- Answer 1
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Answer 2
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99
ORDER BY amount DESC;

-- Answer 3
SELECT film_id, MAX(inventory_id) as most_of_this_movie
FROM inventory
GROUP BY inventory_id
ORDER BY SUM(inventory_id) DESC;

-- Answer 4
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- No data, means no customer has the last name 'William'
-- I selected last_name from the customer table - searched for any last name within that table thats spelled as 'William'
-- If I do the same thing for 'Williams', 1 customer shows up 
SELECT last_name
FROM customer
WHERE last_name = 'Williams';

-- Answer 5
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

--Answer 6
SELECT COUNT(DISTINCT last_name)
FROM customer;

-- Answer 7
SELECT actor_id, COUNT(film_id)
FROM film_actor
GROUP BY actor_id
ORDER BY COUNT(film_id) DESC;

--Answer 8
SELECT last_name
FROM customer
WHERE last_name LIKE '%es';

--Answer 9
SELECT amount, customer_id
FROM payment
HAVING COUNT(amount) > 250
WHERE customer_id BETWEEN 380 and 430
GROUP BY COUNT(amount) DESC;
-- not getting desired output her, but I believe that selecting amount and custimer id from the payment table should be correct
-- the count of the amount used is greater than 250 
-- the customer id should be between 380 and 430
--order the count of the amount in descending order 


SELECT *
FROM payment;

--Answer 10
SELECT DISTINCT rating, COUNT(film_id)
FROM film
GROUP BY rating;