-- show all columns of all rows
SELECT * FROM presidents;

-- show only name column of all rows
SELECT name FROM presidents;

-- show president_number, name, birth_year columns of all rows
SELECT president_number, name, birth_year FROM presidents;

--  have the results sorted by a particular column, in ascending or descending order
SELECT president_number, name, birth_year FROM presidents ORDER BY president_number ASC;
SELECT president_number, name, birth_year FROM presidents ORDER BY president_number DESC;
SELECT president_number, name, birth_year FROM presidents ORDER BY birth_year ASC;
SELECT president_number, name, birth_year FROM presidents ORDER BY birth_year DESC;

-- filter the results by a CONSTRAINT
SELECT * FROM presidents WHERE party = 'Republican';
SELECT * FROM presidents WHERE party = 'Democratic';

-- `IS NOT NULL` is the only way to check for null
SELECT * FROM presidents WHERE death_year IS NOT NULL;

-- LIKE is different than `=`. It lets you match on parts of strings
SELECT * FROM presidents WHERE party LIKE 'Democratic%';
SELECT * FROM presidents WHERE party LIKE '%Democratic';

SELECT * FROM presidents WHERE party NOT LIKE 'Democratic%';
SELECT * FROM presidents WHERE party NOT LIKE '%Democratic';

-- presidents that are named a certain name
SELECT * FROM presidents WHERE name LIKE '%George%';
SELECT * FROM presidents WHERE name LIKE '%James%';
-- presidents that have a 'j' in their name
SELECT * FROM presidents WHERE LOWER(name) LIKE '%j%';

-- There are also AND and OR boolean operators
SELECT * FROM presidents WHERE party = 'Whig' OR party = 'Democratic-Republican';
SELECT * FROM presidents WHERE party = 'Republican' AND birth_year >= 1900;
SELECT * FROM presidents WHERE party = 'Republican' AND birth_year >= 1900 AND death_year IS NULL;
SELECT * FROM presidents WHERE name LIKE '%George%' OR name LIKE '%James%';

-- can match on multiple values using IN
SELECT * FROM presidents WHERE party IN ('Democratic', 'Republican');
SELECT * FROM presidents WHERE party NOT IN ('Democratic', 'Republican');

-- count how many presidents come from each state
SELECT COUNT(home_state), home_state 
    FROM presidents 
    GROUP BY home_state 
    ORDER BY COUNT(home_state) DESC;

-- create a new calculated field, 'age', and ORDER BY age. JFK lived a short life.
SELECT name, death_year - birth_year AS age FROM presidents WHERE death_year IS NOT NULL ORDER BY age;

-- calculate the age of all presidents, living and not living. Combine the 2 tables together.
(SELECT name, death_year - birth_year AS age 
    FROM presidents 
    WHERE death_year IS NOT NULL)
UNION
(SELECT name, 2915 - birth_year AS age 
    FROM presidents 
    WHERE death_year IS NOT NULL);

-- JOIN 2 tables based on a relationship between the 2.
-- presidents own many pets, each pet has one owner.
-- one-to-many relationship
SELECT presidents.name, 
       presidentspets.name,
       presidentspets.breed,
       presidentspets.species, 
       presidents.party 
       FROM presidents JOIN presidentspets 
       ON presidents.president_number = presidentspets.owner;