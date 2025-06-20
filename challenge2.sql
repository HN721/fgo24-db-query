-- melakukan join director

SELECT m.name as title, m.id, m.rankscore, m.year, dn.first_name, dn.last_name, movies_genres.genre
FROM
    movies m
    JOIN movies_directors d ON d.director_id = m.id
    JOIN directors dn ON dn.id = d.director_id
    JOIN movies_genres ON movies_genres.movie_id = m.id
WHERE
    rankscore is NOT NULL
ORDER BY m.name ASC
LIMIT 50;

SELECT a.first_name as Nama_Actor, r.role, m.name as title
FROM
    actors a
    JOIN roles r ON r.actor_id = actor_id
    JOIN movies m ON m.id = r.movie_id
LIMIT 5;