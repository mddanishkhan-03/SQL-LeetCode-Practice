-- LeetCode 196: Delete Duplicate Emails
--
-- Problem:
-- Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.


DELETE p2
FROM Person AS p2
JOIN Person AS p1
    ON p1.email = p2.email
WHERE p2.id > p1.id;
