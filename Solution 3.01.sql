-- 1. Drop column picture from staff.
USE sakila;
ALTER TABLE staff
DROP COLUMN picture;
SELECT * from staff;

-- 2. A new person is hired to help Jon. 
-- Her name is TAMMY SANDERS, and she is a customer.
-- Update the database accordingly.
SELECT * from customer
WHERE first_name = 'Tammy' AND last_name = 'Sanders';

INSERT INTO staff
VALUES
(3,'Tammy','Sanders',79,'TAMMY.SANDERS@sakilacustomer.org',2,1,'tammy_sander','welcomesakila','2023-04-10 05:00:00');
SELECT * FROM staff;

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
SELECT * from rental
ORDER BY rental_id DESC; -- 16050 new rental id

SELECT * from film
WHERE title = 'Academy Dinosaur'; -- film_id = 1

SELECT * from inventory
WHERE film_id = 1;  -- inventory_id = [1,8] 4 copies per store

SELECT * FROM staff;  -- staff_id = 1

SELECT * from customer
WHERE first_name = 'Charlotte' AND last_name = 'Hunter'; -- customer_id = 130

INSERT INTO rental(rental_id,rental_date,inventory_id,customer_id,staff_id,last_update)
VALUES
(16050,'2023-04-10 17:08:00',1,130,1,'2023-04-10 17:08:00');
SELECT * FROM rental
ORDER BY rental_id DESC;
