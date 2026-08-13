-- LeetCode 1587: Bank Account Summary II
--
-- Problem:
-- Write a solution to report the name and balance of users with a balance higher than 10000. 
--The balance of an account is equal to the sum of the amounts of all transactions involving that account.

SELECT u.name AS NAME,
       SUM(t.amount) AS BALANCE
FROM Users AS u
JOIN Transactions AS t
    ON u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000;
