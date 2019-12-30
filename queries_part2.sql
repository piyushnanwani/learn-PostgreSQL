-- Calculate min, ,max , AVG
-- SELECT MAX(price) FROM car;
-- SELECT MIN(price) FROM car;

-- SELECT AVG(price)
-- FROM car;

-- SELECT ROUND(MIN(price)) FROM car;

-- SELECT make, model , MIN(price) FROM car GROUP BY make, model; 
-- SELECT make, model , MAX(price)
-- FROM car
-- GROUP BY make, model;

-- SELECT make, model , MAX(price)
-- FROM car
-- GROUP BY make;  


-- SUM
-- SELECT SUM(price) FROM car;
-- SELECT make, SUM(price) FROM car GROUP BY make;

-- BASICS OF ARITHMETIC OPERATORS 
-- SELECT 10 + 2;
-- SELECT 10 + 2*8;
-- SELECT 10^3;
-- SELECT 10! ;
-- SELECT 10%3;

-- ARITHMETIC OPERATORS ROUND 
-- SELECT * FROM car;
-- SELECT id, make , model ,price FROM car;
-- SELECT id, make , model , price , ROUND(price*0.1,2), ROUND(price*0.9, 2)
-- FROM car;

-- ALIAS 
-- SELECT id, make , model , price AS orginal_price , ROUND(price*0.1,2) AS ten_percent, ROUND(price*0.9, 2) AS discount_after_ten_percent
-- FROM car;

-- SELECT COALESCE(1);
-- SELECT COALESCE(1) AS number;
-- SELECT COALESCE(null, 1) AS number;
-- SELECT COALESCE(null, null, 1) AS number;
-- SELECT email FROM Person;
-- SELECT COALESCE(email) FROM person;
-- SELECT COALESCE(email, 'Email not provided')
-- FROM person;


-- NULLIF
-- SELECT 10/0;
-- SELECT NULLIF(10,10);
-- SELECT NULLIF(10,1);
-- SELECT NULLIF(10,19);
-- SELECT NULLIF(100,19);
-- SELECT NULLIF(10,100);

-- SELECT 10 /NULL;
-- SELECT 10 / NULLIF(0,0);

-- SELECT COALESCE (10/NULLIF(0,0), 0);


-- TIMESTAMP AND DATE
-- SELECT NOW();
-- SELECT NOW()::DATE;
-- SELECT NOW()::TIME;

-- adding and subtracting dates
-- SELECT NOW() - INTERVAL '1 YEAR';
-- SELECT NOW() - INTERVAL '10 YEARS';
-- SELECT NOW() - INTERVAL '10 MONTHS';
-- SELECT NOW() - INTERVAL '10 DAYS';
-- SELECT (NOW() - INTERVAL '10 DAYS')::DATE;

-- EXTRACTING FIELDS
-- SELECT NOW();
-- SELECT EXTRACT(YEAR FROM NOW());
-- SELECT EXTRACT(MONTH FROM NOW());
-- SELECT EXTRACT(DOW FROM NOW());
-- SELECT EXTRACT(CENTURY FROM NOW());

-- AGE FUNCTION

-- SELECT first_name, last_name, gender, country_of_birth, date_of_birth , AGE(NOW(), date_of_birth) AS age FROM person;

-- PRIMARY KEYS
-- SELECT * FROM person LIMIT 1;
-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1, 'Alfredo', 'Beardon','Female', 'absc@gmas.com', '1953-10-28', 'Uganda');

-- ALTER TABLE person DROP CONSTRAINT person_pkey; 
-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1, 'Alfredo', 'Beardon','Female', 'absc@gmas.com', '1953-10-28', 'Uganda');
-- SELECT * FROM person LIMIT 2;

-- ADDING PRIMARY KEY
-- ALTER TABLE person ADD PRIMARY KEY(id);

-- DELETE FROM person WHERE id = 1;
-- ALTER TABLE person ADD PRIMARY KEY(id);

-- UNIQUE CONSTRAINTS 
-- SELECT email, count(*) FROM person GROUP BY email;
-- ALTER TABLE person ADD CONSTRAINT unique_email_address UNIQUE (email);

-- SELECT DISTINCT gender FROM person;
-- ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK(gender = 'Female' OR gender='Male');

-- DELETE FROM person;
-- SELECT * FROM person;
-- DELETE FROM person WHERE gender ='Female' AND country_of_birth = 'China';
-- DELETE FROM person WHERE gender = 'Male';
-- DELETE FROM person;

-- Update Records
-- UPDATE person SET email = 'iams.com' WHERE id = 1;
-- UPDATE person SET email = 'iams.com' WHERE id > 2;
-- UPDATE person SET email = 'iams.com' WHERE id == 121;
-- UPDATE person SET first_name = ' Omar' , last_name = 'Montana' , email = 'omarr@hotmail.com' WHERE id =1001;

-- On Conflict 
-- SELECT * FROM person WHERE id = 1001;

-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1001, 'Alfredo', 'Beardon','Female', 'absc@gmas.com', '1953-10-28', 'Uganda');
-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1001, 'Alfredo', 'Beardon','Female', 'absc@gmas.com', '1953-10-28', 'Uganda')
-- ON CONFLICT(id) DO NOTHING;
-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1001, 'Alfredo', 'Beardon','Female', 'absc@gmas.com', '1953-10-28', 'Uganda')
-- ON CONFLICT(first_name) DO NOTHING;


-- Upsert
-- SELECT * FROM person WHERE id = 1001;

-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1001, 'Alfredo', 'Beardon','Female', 'absc@gmail', '1953-10-28', 'Uganda')
-- ON CONFLICT(id) DO UPDATE SET email = EXCLUDED.email;

-- SELECT * FROM person WHERE id = 1001;

-- INSERT INTO person(id, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (1001, 'Alfredo', 'Panda','Female', 'absc@gmail', '1953-10-28', 'Uganda')
-- ON CONFLICT(id) DO UPDATE SET email = EXCLUDED.email ,
-- last_name = EXCLUDED.last_name; 

-- SELECT * FROM person WHERE id = 1001;

-- Joins
