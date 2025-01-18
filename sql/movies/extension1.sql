SELECT ROUND(AVG(score),2) FROM films;

SELECT COUNT(title) FROM films;

SELECT genre, ROUND(AVG(score),2) AS avarage_score FROM films
GROUP BY
    genre;