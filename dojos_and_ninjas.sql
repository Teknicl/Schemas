-- Create 3 new dojos
INSERT INTO dojos (name, created_at, updated_at)
VALUES('Capoeira Dojo', now(), now());
INSERT INTO dojos (name, created_at, updated_at)
VALUES('My Dojo', now(), now());
INSERT INTO dojos (name, created_at, updated_at)
VALUES('Your Dojo', now(), now());

-- Delete the 3 dojos you just created
DELETE FROM dojos
WHERE id = 1;
DELETE FROM dojos
WHERE id = 2;
DELETE FROM dojos
WHERE id = 3;

-- Create 3 more dojos
INSERT INTO dojos (name, created_at, updated_at)
VALUES('New Dojo', now(), now());
INSERT INTO dojos (name, created_at, updated_at)
VALUES('Another Dojo', now(), now());
INSERT INTO dojos (name, created_at, updated_at)
VALUES('One More Dojo', now(), now());

-- Create 3 ninjas that belong to the first dojo
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Torrei', 'Whitfield', 21, now(), now(), 4);
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Billy', 'The Kid', 10, now(), now(), 4);
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Rudolph', 'Red Nose', 1001, now(), now(), 4);

-- Create 3 ninjas that belong to the second dojo
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Crystal', 'Blue Sky', 11, now(), now(), 5);
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Michael', 'Jordan', 54, now(), now(), 5);
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Magic', 'Johnson', 55, now(), now(), 5);

-- Create 3 ninjas that belong to the third dojo
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('My Wife', 'SmarterThanYours', 22, now(), now(), 6);
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('Lack', 'Thereof', 67, now(), now(), 6);
INSERT INTO ninjas (first_name, last_name, age, created_at, updated_at, dojos)
VALUES('YouToo', 'Cool', 23, now(), now(), 6);

-- Retrieve all the ninjas from the first dojo
SELECT * FROM ninjas
WHERE dojos = 4;

-- Retrieve all the ninjas from the last dojo
SELECT * FROM ninjas
WHERE dojos = 6;

-- Retrieve the last ninja's dojo
SELECT * FROM ninjas
WHERE id = last_insert_id();