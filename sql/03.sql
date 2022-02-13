/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */

SELECT last_name FROM actor WHERE STRPOS(LOWER(last_name), 'li') > 0 ORDER BY last_name;
