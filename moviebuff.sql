SELECT title
FROM movies;

SELECT title, year_released
FROM movies
ORDER BY year_released DESC;

SELECT *
FROM directors
ORDER BY country ASC;

SELECT *
FROM directors
ORDER BY country ASC, last_name ASC;

INSERT INTO directors(first_name, last_name, country)
VALUES ("Rob", "Reiner", "USA"); 

SELECT last_name, director_id
FROM directors
WHERE director_id =11;

INSERT INTO movies(title, year_released, director_id)
VALUES ("The Princess Bride", 1987, 11);

SELECT movies.title, movies.year_released, directors.last_name
FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id;

SELECT movies.title, directors.first_name, directors.last_name
FROM movies
LEFT JOIN directors ON movies.director_id = directors.director_id
ORDER BY directors.last_name ASC;

-- SELECT directors.first_name, directors.last_name
-- FROM directors
-- JOIN movies ON directors.director_id = movies.director_id
-- WHERE movies.title = "The Incredibles";

SELECT directors.first_name, directors.last_name
FROM directors, movies
WHERE movies.title = "The Incredibles" AND directors.director_id = movies.director_id;

SELECT directors.last_name, directors.country
FROM directors
JOIN movies ON directors.director_id = movies.director_id
WHERE movies.title = "Roma";

DELETE FROM movies
WHERE movie_id =17;

DELETE FROM directors
WHERE director_id =9;

