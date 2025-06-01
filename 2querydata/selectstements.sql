USE MyDatabase;
-- Retrieves all data and columns from customer table.
SELECT * FROM customers;

-- Retrieves all data and specific columns from customer table. Orders based on the column name position we give.
SELECT first_name,country FROM customers;

-- Retieves data based on condition that score should be greater than 500.
SELECT * FROM customers WHERE score != 0;

-- Retieves data based on condition thatcountry is Germany.
SELECT first_name,country FROM customers WHERE country = 'Germany';

-- Sorts the rows based on the highest score first
SELECT * FROM customers ORDER BY score DESC;

-- Sorts the rows based on the country and highest score first
 SELECT * FROM customers ORDER BY country ASC, score DESC;

 -- Gets the total score by country and sort by highest score .
 SELECT country,SUM(score) AS total_score FROM customers GROUP BY country ORDER BY total_score DESC;

  -- Gets the number of customers by country and order by lowest customers first.
 SELECT country,COUNT(first_name) AS total_customers FROM customers GROUP BY country ORDER BY total_customers ASC;

 -- Gets the data where the total score is > 800
 SELECT country,sum(score) AS total_score FROM customers GROUP BY country HAVING SUM(score) > 800;

  -- Gets the data where the score is greater than 400 and total score is > 800
 SELECT country,sum(score) AS total_score FROM customers WHERE score > 400 GROUP BY country HAVING SUM(score) > 800;

 -- Gets the data where score is not equal to zero and finally the average score for each country greater than 430.
 SELECT country,AVG(score) AS avg_score FROM customers WHERE score != 0 GROUP BY country HAVING AVG(score) > 430;

 -- Gets distinct country names. 
 SELECT DISTINCT country FROM customers;

 -- Gets the top 3 records with the highest scores.
 SELECT TOP 3 * FROM customers ORDER BY score DESC;

 -- Gets the lowest 2 customers based on the score
 SELECT TOP 2 first_name,score FROM customers ORDER BY score ASC;

 -- Displays static data
 SELECT 123 AS static_value;

 -- Displays data from database and static data
 SELECT id,first_name,'NewCustomer' AS customer_type FROM customers;
