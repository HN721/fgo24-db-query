-- melakukan join director

SELECT m.name as title, m.id, m.rankscore, m.year, dn.first_name, dn.last_name, movies_genres.genre
FROM
    movies m
    JOIN movies_directors d ON d.director_id = m.id
    JOIN directors dn ON dn.id = d.director_id
    JOIN movies_genres ON movies_genres.movie_id = m.id
WHERE
    rankscore is NOT NULL
ORDER BY m.name DESC
LIMIT 5