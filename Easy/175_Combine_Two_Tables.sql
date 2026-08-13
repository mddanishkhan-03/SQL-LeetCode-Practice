-- LeetCode 175: Combine Two Tables

-- Problem:
-- Report the first name, last name, city, and state
-- of each person. If a person does not have an address,
-- return NULL for city and state.

SELECT p.firstName,
       p.lastName,
       a.city,
       a.state
FROM Person AS p
LEFT JOIN Address AS a
    ON p.personId = a.personId;
