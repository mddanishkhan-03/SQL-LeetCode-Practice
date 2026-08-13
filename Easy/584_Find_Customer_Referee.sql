-- LeetCode 584: Find Customer Referee
--
-- Problem:
-- Find the names of customers who are either referred
-- by a customer whose id is not 2 or not referred by anyone.

SELECT c.name
FROM Customer AS c
WHERE c.referee_id <> 2
   OR c.referee_id IS NULL;
