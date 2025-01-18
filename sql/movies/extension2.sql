CREATE TABLE directors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

ALTER TABLE films
ADD directorID INT;

INSERT INTO directors
(name)
VALUES
    ('Rebecca Noy'),
    ('Robert Hohenester'),
    ('Dr. Deez Nuts'),
    ('Hingle Mc. Cringleberry'),
    ('Sack Mah Dyck'),
    ('Mein Bäcker');

UPDATE films
SET directorid = 1,
WHERE title LIKE '%Matrix%';
-- ... alles nach Genre füllen
UPDATE films
SET directorid = 3
WHERE genre LIKE 'Thriller';

SELECT * FROM films
LEFT JOIN directors
    ON directorid = directors.id

SELECT count(*), name FROM directors
LEFT JOIN films
    ON directors.id = directorid
GROUP BY name;