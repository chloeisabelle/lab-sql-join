-- 1. List the number of films per category.

select * from sakila.category as l
join sakila.film_category  as a
on l.category_id = a.category_id;


-- 2. Display the first and the last names, as well as the address, of each staff member.

select first_name, last_name, address from sakila.staff as S
join sakila.address  as A
on S.address_id = A.address_id;

-- 3. Display the total amount rung up by each staff member in August 2005.
-- *** DIDN'T KNOW HERE HOW TO SPECIFIY AUGUST ONLY *** 

select first_name, last_name, sum(amount) from payment
join staff using(staff_id) 
where payment_id > 2005-08-00
group by staff_id;


-- 4. List all films and the number of actors who are listed for each film.

select title, sum(actor_id) from film
join film_actor using(film_id) 
group by actor_id;

-- 5. Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.

select last_name, first_name, sum(amount) from payment
join customer using(customer_id) 
group by last_name;