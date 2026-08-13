-- LeetCode 181: Employees Earning More Than Their Managers

-- Problem:
--Write a solution to find the employees who earn more than their managers.Return the result table in any order.

SELECT e.name AS Employee
FROM Employee AS e
WHERE e.salary > (
    SELECT m.salary
    FROM Employee AS m
    WHERE e.managerId = m.id
);
