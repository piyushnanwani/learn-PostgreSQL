-- create table car
-- (
--     id BIGSERIAL NOT NULL PRIMARY KEY,
--     make VARCHAR(50) NOT NULL,
--     model VARCHAR(50) NOT NULL,
--     price NUMERIC(19,2) NOT NULL
-- );

-- create table person
-- (
--     id BIGSERIAL NOT NULL PRIMARY KEY ,
--     first_name VARCHAR(50) NOT NULL ,
--     last_name VARCHAR(50) NOT NULL,
--     gender VARCHAR(50) NOT NULL,
--     email VARCHAR(100) ,
--     date_of_birth DATE NOT NULL,
--     country_of_birth VARCHAR(50) NOT NULL,
--     car_id BIGINT REFERENCES car (id),
--     UNIQUE(car_id)
-- );


-- insert into car
--     (make, model , price)
-- values
--     ('Acura', 'TL', '5351515343.08');
-- insert into car
--     (make, model , price)
-- values
--     ('GMC', 'Yukon', '2146552989.01');

-- insert into person
--     (first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     ('Antonetta', 'Cashford', 'acashford0@123-reg.co.uk', 'Female', '5/5/2019', 'Canada');
-- insert into person
--     (first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     ('Colene', 'Cowland', 'ccowland1@merriam-webster.com', 'Female', '17/3/2019', 'Russia');
-- insert into person
--     (first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     ('Hewe', 'Uzzell', 'huzzell2@bigcartel.com', 'Male', '2/12/2019', 'China');


-- UPDATE person SET car_id = 2 WHERE id = 1;
-- UPDATE person SET car_id = 2 WHERE id = 100;

-- Inner join 
-- SELECT * FROM person 
-- JOIN car ON person.car_id = car.id;

-- SELECT person.first_name, car.make, car.model, car.price 
-- FROM person 
-- JOIN car ON person.car_id = car.id;

-- Left join
-- SELECT * FROM person 
-- LEFT JOIN car ON car.id = person.car_id;

-- Delecting Records with Foreign key constraints

-- insert into person
--     (id, first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     (2004, 'Tamara', 'Liggins', 'tliggins5@trellian.com', 'Female', '30/5/2019', 'South Sudan');

-- SELECT * FROM person WHERE id = 2004;
-- SELECT * FROM car;
-- UPDATE person SET car_id = 1 WHERE id =2004;
-- DELETE FROM car WHERE id =1;

-- DELETE FROM person WHERE id = 2004;
-- DELETE FROM car WHERE id =1;


-- Exporting query results to CSV
-- SELECT * FROM person 
-- LEFT JOIN car ON car.id = person.car_id

 
-- \copy (SELECT * FROM person LEFT JOIN car ON car.id = person.car_id) TO '~/results.csv' DELIMITER ',' CSV HEADER;


-- Serial and Sequences
-- SELECT * FROM person_id_seq;
-- SELECT * FROM person;

-- SELECT nextval('person_id_seq'::regclass);
-- SELECT nextval('person_id_seq'::regclass);
-- SELECT nextval('person_id_seq'::regclass);

-- insert into person
--     (id, first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     (204, 'Ta', 'Luu', 'tliggins5@trellian.com', 'Female', '30/5/2019', 'Gh land');
-- SELECT nextval('person_id_seq'::regclass);

-- ALTER SEQUENCE person_id_seq RESTART WITH 10;


-- Extensions
-- SELECT * FROM pg_available_extensions;

-- UUid guranteed unique identifier 
-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- SELECT * FROM pg_available_extensions;

-- \df 
-- SELECT uuid_generate_v4();


-- using uuids at primary key
-- IMPLEMENTED in person-car2.sql