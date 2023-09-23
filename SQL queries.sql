Use sakila;

SELECT * FROM rental;

SELECT * FROM rental
WHERE substr(rental_date,6,2) = '05' AND substr(rental_date,1,4) = '2005';

-- Python rental_count_month(data, '05', '2005') equivalent:
SELECT customer_id, COUNT(customer_id) AS rental_count
FROM rental
WHERE substr(rental_date,6,2) = '05' AND substr(rental_date,1,4) = '2005'
GROUP BY customer_id;

