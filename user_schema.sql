-- Create 3 new users
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES('Torrei', 'Whitfield', 'bossbollin@msn.com', 12345, now(), now());
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES('Joe', 'Blow', 'jb@fakeemail.com', 678910, now(), now());
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES('Christopher', 'Wallace', 'notorious@big.com', 1112131415, now(), now());

-- Retrieve all the users
SELECT * FROM users;

-- Retrieve the first user using their email address
SELECT * FROM users
WHERE email = 'bossbollin@msn.com';

--Retrieve the last user using their id
SELECT * FROM users
WHERE id = last_insert_id();

-- Delete the user with id=2 from the database
DELETE FROM users
WHERE id = 2;

-- Get all the users, sorted by their first name
SELECT * FROM users
ORDER BY first_name;

-- Get all the users, sorted by their first name in descending order
SELECT * FROM users
ORDER BY first_name DESC;