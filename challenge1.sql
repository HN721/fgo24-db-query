SELECT * FROM movies WHERE year > 2000;

SELECT * from actors WHERE last_name ilike '%s' LIMIT 10;

SELECT *
FROM movies
WHERE
    rankscore BETWEEN 5 AND 7
    and year BETWEEN 2004 AND 2006
ORDER BY rankscore DESC;