-- Excersice 1
SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city ct
ON a.city_id = ct.city_id
WHERE a.district = 'California';

--Excersice 2
-- Every title of every film with a JOHN actor

SELECT f.title, a.first_name
FROM film_actor fa
INNER JOIN actor a
ON fa.actor_id = a.actor_id
INNER JOIN film f
ON fa.film_id = f.film_id
WHERE a.first_name = 'JOHN';

--Excersice 3
-- Return all addresses that are in the same street

SELECT a.address, same_a.address, same_a.city_id, ct.city
FROM address a
INNER JOIN address same_a
ON a.city_id = same_a.city_id
INNER JOIN city ct
ON a.city_id = ct.city_id
WHERE a.address <> same_a.address;

-- Book solution put both in the where instead of ON
SELECT a1.address addr1, a2.address addr2, a1.city_id
FROM address a1
INNER JOIN address a2
WHERE a1.city_id = a2.city_id
AND a1.address_id <> a2.address_id;