-- LIMIT
-- Select 10 rows
SELECT *
FROM flights
LIMIT 10;


-- Non-Correlated Subqueries
-- First create an inner query, or subquery
SELECT code
FROM airports
WHERE elevation > 2000;

-- Then take the result of the inner query and use it to filter
SELECT *
FROM flights
WHERE origin in (
    SELECT code 
    FROM airports
    WHERE elevation > 2000);
