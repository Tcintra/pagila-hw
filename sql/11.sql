/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film_id, title, COUNT(film_id) FROM film

JOIN inventory

USING (film_id)

WHERE STRPOS(title, 'H') = 1

GROUP BY film_id

ORDER BY title DESC;
