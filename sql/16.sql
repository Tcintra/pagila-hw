/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT title, SUM(amount) AS "profit"

FROM film

JOIN inventory ON (film.film_id = inventory.film_id)

JOIN rental ON (inventory.inventory_id = rental.inventory_id)

JOIN payment ON (rental.rental_id = payment.rental_id)

GROUP BY title

ORDER BY "profit" DESC;
