SELECT d.first_name, d.last_name, COUNT(dg.genre) AS jumlah_genre
FROM
    directors d
    JOIN directors_genres dg ON dg.director_id = d.id
GROUP BY
    d.first_name,
    d.last_name;

-- mendapatkan data actor yang memiliki roles lebih dari 5

SELECT a.first_name, a.first_name, count(r.role) as jumlah_role
FROM actors a
    JOIN roles r ON r.actor_id = a.id
GROUP BY
    a.first_name,
    a.last_name
HAVING
    COUNT(r.role) > 5;
-- mendapatkan director paling sibuk sepanjang masa

SELECT *
FROM
    directors d
    JOIN movies_directors md ON md.director_id = d.id