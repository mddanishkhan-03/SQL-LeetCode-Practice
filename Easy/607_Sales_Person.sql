-- LeetCode 607: Sales Person
--
-- Problem:
--Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name "RED".

SELECT s.name
FROM SalesPerson AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders AS o
    JOIN Company AS c
        ON c.com_id = o.com_id
    WHERE s.sales_id = o.sales_id
      AND c.name = 'RED'
);
