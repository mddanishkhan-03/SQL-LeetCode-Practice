-- LeetCode 627: Swap Salary
--
-- Problem:
-- Write a solution to swap all 'f' and 'm' values
-- using a single UPDATE statement.

UPDATE Salary
SET sex = CASE
    WHEN sex = 'f' THEN 'm'
    WHEN sex = 'm' THEN 'f'
END;
