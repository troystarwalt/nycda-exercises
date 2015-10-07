-- 1. How to select presidents with cool names?
--      - Cool names are when their name.length < 9
--      - Okay names are when 9 <= name.length < 16
--      - Bad names are when 16 <= name.length

SELECT * FROM presidents WHERE char_length(name) < 9;

-- 2. How to select currently alive prime ministers?

SELECT * FROM prime_ministries WHERE death_year NULL;

-- 3. How to select prime ministers who were in office before 1915?

SELECT * FROM prime_ministries WHERE took_office < 1915;

-- 4. How to select prime ministers who were in office before 1915 and after 1776?

SELECT * FROM prime_ministries WHERE took_office BETWEEN 1915 AND 1776;

-- 5. How to select prime ministers who have the word 'in' in their name?

SELECT * FROM prime_ministries WHERE name LIKE '%in%'

-- 6. Of the presidents that are not alive, who were the oldest 10?

SELECT * FROM presidents WHERE death_year IS NOT NULL AND ORDER BY birth_year DESC LIMIT 10

-- 7. Of the presidents that are not alive, who were the youngest 10?

SELECT * FROM presidents WHERE death_year IS NOT NULL AND ORDER BY birth_year ASSC LIMIT 10