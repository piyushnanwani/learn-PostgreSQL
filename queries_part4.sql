-- Extensions
-- SELECT * FROM pg_available_extensions;

-- UUid guranteed unique identifier 
-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- SELECT * FROM pg_available_extensions;

-- \df 
-- SELECT uuid_generate_v4();

-- create table car
-- (
--     car_uid UUID NOT NULL PRIMARY KEY ,
--     make VARCHAR(50) NOT NULL,
--     model VARCHAR(50) NOT NULL,
--     price NUMERIC(19,2) NOT NULL
-- );

-- create table person
-- (
--     person_uid UUID NOT NULL PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL ,
--     last_name VARCHAR(50) NOT NULL,
--     gender VARCHAR(7) NOT NULL,
--     email VARCHAR(100) ,
--     date_of_birth DATE NOT NULL,
--     country_of_birth VARCHAR(50) NOT NULL,
--     car_uid UUID REFERENCES car(car_uid),
--     UNIQUE(car_uid),
--     UNIQUE(email)
-- );

-- CREATE EXTENSION
-- IF NOT EXISTS "uuid-ossp";

-- insert into car
--     (car_uid, make, model , price)
-- values
--     (uuid_generate_v4(), 'Acura', 'TL', '5351515343.08');
-- insert into car
--     (car_uid,make, model , price)
-- values
--     (uuid_generate_v4(), 'GMC', 'Yukon', '2146552989.01');


-- insert into person
--     (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     (uuid_generate_v4(), 'Antonetta', 'Cashford', 'acashford0@123-reg.co.uk', 'Female', '5/5/2019', 'Canada');
-- insert into person
--     (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     (uuid_generate_v4(), 'Colene', 'Cowland', 'ccowland1@merriam-webster.com', 'Female', '17/3/2019', 'Russia');
-- insert into person
--     (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth)
-- values
--     (uuid_generate_v4(), 'Hewe', 'Uzzell', 'huzzell2@bigcartel.com', 'Male', '2/12/2019', 'China');




-- using uuids at primary key
-- SELECT * FROM person ;
-- SELECT * FROM car ;

-- UPDATE person SET  car_uid = 'ca4e4a7c-e516-43cc-bb3c-c2b86ee5f0dd' WHERE  person_uid ='0f7c0fe6-6b0d-45f6-b00b-b99246c86a32';
-- UPDATE person SET  car_uid = '92c8d442-099f-4ee3-a945-d64c9e823d61' WHERE  person_uid ='92710e50-3d42-433b-9090-2b032e557fdc';

-- SELECT * FROM person 
-- JOIN car ON person.car_uid = car.car_uid;

-- Since here both primary key and foreign key have same name , we can also do 
-- SELECT * FROM person 
-- JOIN car USING (car_uid);

-- SELECT * FROM person 
-- LEFT JOIN car USING (car_uid);

SELECT * FROM person 
LEFT JOIN car USING (car_uid)
WHERE car.* IS NULL;
