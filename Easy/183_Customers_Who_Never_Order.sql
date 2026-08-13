-- LeetCode 183: Customers Who Never Order
--
-- Problem:
--Write a solution to find all customers who never order anything.


SELECT c.name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.id = o.customerId
WHERE o.id IS NULL;
