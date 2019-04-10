CREATE TABLE person
(
    person_id SERIAL,
    name VARCHAR(200),
    age INT,
    height INT,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);
INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ( 'Trevor Hoffman', 25, 172, 'Dallas', 'Black'),
    ('willam Joel', 29, 162, 'Houston', 'Red'),
    ('Harry Henderson', 34, 132, 'LA', 'Green'),
    ('Jillian Michaels', 33, 129, 'Seattle', 'Blue'),
    ('Suzt Que', 34, 132, 'Spain', 'aqua');


SELECT *
FROM person
ORDER BY height DESC;


SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
where age = 18;

SELECT *
FROM person
WHERE  age < 20 OR age > 30;

SELECT *
FROM person
where age <> 27;

SELECT *
FROM person
WHERE favorite_color <> 'Red';

SELECT *
FROM person
WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';

SELECT *
FROM person
WHERE favorite_color= 'Orange' OR favorite_color = 'Green'


SELECT *
FROM person
WHERE favorite_color IN ('Organge', 'Green', 'Blue');

SELECT *
FROM person
WHERE favorite_color IN ('Purple', 'Yellow');

CREATE TABLE orders
(
    person_id SERIAL,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INT
);

INSERT INTO orders
    ( person_id, product_name, product_price, quantity )
VALUES
    (0, 'pizza' , 7, 25),
    (0, 'soda', 1.25, 2),
    (3, 'burger', 6.87, 3),
    (4, 'cheese', 0.25, 4 );

SELECT *
FROM orders

SELECT SUM(quantity)
FROM orders

SELECT SUM(product_price * quantity)
FROM orders;


SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 0;

INSERT INTO artist
    ( name )
VALUES
    ( 'Steve' ),
    ('Billy'),
    ('william ');


SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * 
FROM artist
ORDER BY name ASC 
LIMIT 5;


SELECT *
FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name
FROM employee
WHERE city = 'calgary';

SELECT MAX(birth_date)
FROM employee;

SELECT MIN(birth_date)
FROM employee;

SELECT *
FROM employee
WHERE reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT COUNT(*)
FROM invoice
WHERE  total < 5;


SELECT AVG(total)
FROM invoice;

SELECT SUM(total)
FROM invoice

















