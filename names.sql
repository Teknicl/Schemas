-- Insert your name into the table
INSERT INTO names (names, created_at, updated_at) 
VALUES('Torrei', now(), now());

-- Insert another name or more than one in a single statement
INSERT INTO names (names, created_at, updated_at)
VALUES('Ninja', now(), now());
INSERT INTO names (names, created_at, updated_at)
VALUES('Scorpion', now(), now());

-- Try creating, updating and deleting records using the statements you've learn about.
INSERT INTO names (names, created_at, updated_at)
VALUES('ChangeMe', now(), now());
UPDATE names
SET names = 'DeleteMe', updated_at = now()
WHERE id = 5;
DELETE FROM names WHERE id = 5;