SELECT * FROM presidents;

SELECT * FROM presidents WHERE party = 'Republican';
SELECT * FROM presidents WHERE party = 'Democratic';

-- `IS NOT NULL` is the only way to check for null
SELECT * FROM presidents WHERE death_year IS NOT NULL;

-- LIKE is different than `=`. It lets you match on parts of strings
SELECT * FROM presidents WHERE party LIKE 'Democratic%';
SELECT * FROM presidents WHERE party LIKE '%Democratic';

SELECT * FROM presidents WHERE party NOT LIKE 'Democratic%';
SELECT * FROM presidents WHERE party NOT LIKE '%Democratic';

-- presidents that are named 'George'
SELECT * FROM presidents WHERE name LIKE '%George%';

-- presidents that have a 'j' in their name
SELECT * FROM presidents WHERE LOWER(name) LIKE '%j%';

-- There are also AND and OR boolean operators
SELECT * FROM presidents WHERE party = 'Whig' OR party = 'Democratic-Republican';
SELECT * FROM presidents WHERE party = 'Republican' AND birth_year >= 1900;
SELECT * FROM presidents WHERE party = 'Republican' AND birth_year >= 1900 AND death_year IS NULL;

-- can match on multiple values using IN
SELECT * FROM presidents WHERE party IN ('Democratic', 'Republican');
SELECT * FROM presidents WHERE party NOT IN ('Democratic', 'Republican');
