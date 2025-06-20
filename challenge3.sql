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

SELECT d.first_name, d.last_name, count(md.movie_id) as jumlah_Movie
FROM
    directors d
    JOIN movies_directors md ON md.director_id = d.id
GROUP BY
    d.first_name,
    d.last_name
ORDER BY jumlah_Movie DESC;

-- mendapatkan tahun paling sibuk sepanjang masa

SELECT year, COUNT(*) AS jumlah_movies
FROM movies
GROUP BY
    year
ORDER BY jumlah_movies DESC
LIMIT 1;

--
SELECT m.name as Movie, string_agg(mg.genre, ' , ') as daftar_genre
FROM movies m
    JOIN movies_genres mg ON mg.movie_id = m.id
WHERE
    m.rankscore > 9
GROUP BY
    m.name;