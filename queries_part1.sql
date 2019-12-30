-- -- Select queries
-- SELECT * FROM person;
-- SELECT * FROM person ORDER BY country_of_birth;
-- SELECT * FROM person ORDER BY country_of_birth ASC;
-- SELECT * FROM person ORDER BY country_of_birth DESC;
-- SELECT * FROM person ORDER BY id;
-- SELECT * FROM person ORDER BY first_name;
-- SELECT * FROM person ORDER BY first_name DESC;
-- SELECT * FROM person ORDER BY email DESC;
-- SELECT * FROM person ORDER BY id, email;
-- SELECT * FROM person ORDER BY date_of_birth;
-- SELECT * FROM person ORDER BY date_of_birth DESC;


-- --Distinct 
-- SELECT country_of_birth FROM PERSON;
-- SELECT DISTINCT country_of_birth FROM PERSON ORDER BY country_of_birth;
-- SELECT DISTINCT country_of_birth FROM PERSON ORDER BY country_of_birth DESC;

-- SELECT * FROM person WHERE gender = 'Female';
-- SELECT * FROM person WHERE gender = 'Male';
-- SELECT * FROM person WHERE gender = 'Male' AND country_of_birth = 'Poland';
-- SELECT * FROM person WHERE gender = 'Male' AND (country_of_birth = 'Poland' OR country_of_birth = 'China');
-- SELECT * FROM person WHERE gender = 'Male' AND (country_of_birth = 'Poland' OR country_of_birth = 'China') AND last_name = 'Uzzell';

-- -- Comparison Operators
-- SELECT 1 = 1;
-- SELECT 1 < 2;
-- SELECT 1 <= 1;
-- SELECT 1 < 1;
-- SELECT 'abc' <> 'ABC';
-- SELECT 'abc' <> 'abc';

-- -- Limit , Offset , Fetch 

-- SELECT * FROM person LIMIT 10;
-- SELECT * FROM person OFFSET 5 LIMIT 10;
-- SELECT * FROM person OFFSET 5;
-- SELECT * FROM person OFFSET 5 FETCH FIRST ROW ONLY;
-- SELECT * FROM person OFFSET 5 FETCH FIRST 1 ROW  ONLY;

-- IN
-- SELECT * FROM person WHERE country_of_birth = 'China';

-- SELECT * 
-- FROM person 
-- WHERE country_of_birth IN ('China', 'Brazil', 'France', 'Mexico', 'Portugal', 'Nigeria')
-- ORDER BY country_of_birth;

-- -- Between

-- SELECT * FROM person
-- WHERE date_of_birth 
-- BETWEEN DATE '2000-01-01' AND '2019-01-01';

-- Like Operators

-- SELECT * FROM person WHERE email LIKE '%.com';
-- SELECT * FROM person WHERE email LIKE '%@google%';
-- SELECT * FROM person WHERE email LIKE '______h@';
-- SELECT * FROM person WHERE country_of_birth LIKE 'P%';

-- GROUP BY 
-- SELECT DISTINCT country_of_birth FROM person;
-- SELECT country_of_birth FROM person GROUP BY country_of_birth;
-- SELECT country_of_birth , COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth;

-- GROUP BY HAVING
-- SELECT country_of_birth , COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY country_of_birth;
SELECT country_of_birth , COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) >=  18 ORDER BY country_of_birth;